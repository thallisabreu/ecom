const jwt = require('jsonwebtoken');

const auth = async (req, res, next) => {
    try{
        const token = req.header('x-auth-token');
        if(!token)
        return req.status(401).json({msg: "Sem token de autenticação, acesso negado."})
        
        const verified = jwt.verify(token, "passwordKey");
        if(!verified)
        return res
        .status(401)
        .json({msg: "Falha na verificação do token, autorização negada."});
    
        req.user = verified.id;
        req.token = token;
        next();
    }catch(err) {
        res.status(500).json({error:err.message});
    }
}

module.exports = auth;
