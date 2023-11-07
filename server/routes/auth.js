const express = require("express");
const User = require("../models/user")
const bcryptjs = require('bcryptjs'); 
const authRouter = express.Router();
const jwt = require('jsonwebtoken');

// sign up
authRouter.post('/api/signup', async (req, res)=> {
  try{const {name, email,password} = req.body;

  const existingUser = await User.findOne({email});
  if(existingUser){
      return res
      .status(400)
      .json({msg: "já existe usuário com o mesmo e-mail!"})
  }
  const hashedPassoword = await bcryptjs.hash(password, 8);

    let user = new User({
      email,
      password: hashedPassoword,
      name,
  });
  user = await user.save();
  res.json(user);}
  
  catch(e){
    res.status(500).json({error: e.message});
  }
  
});

authRouter.post('/api/signin', async(req, res)=> {
  try{ 
    const{email, password} = req.body;

    const user = await User.findOne({email});
    if(!user){
      return res
      .status(400)
      .json({msg: "O usuário com este e-mail não existe!"})
    }
    const isMatch = await bcryptjs.compare(password, user.password);
    if(!isMatch){
      return res
      .status(400)
      .json({msg: "Senha incorreta."})
    }

    const token = jwt.sign({id: user._id}, "passwordKey");
    res.json({token, ...user._doc});

  } catch (e){
    res.status(500).json({error: e.message});
  }
});
 
module.exports = authRouter;