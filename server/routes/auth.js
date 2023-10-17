const express = require("express");
const User = require("../models/user")

const authRouter = express.Router();

authRouter.post('/admin/signup', async (req, res)=> {
  const {name, email,password} = req.body;

const existingUser = await User.findOne({email});
if(existingUser){
    return res.status(400).json({msg: 'já existe usuário com o mesmo e-mail!'})
}

  let user = new User({
    email,
    password,
    name,
})
user = await user.save();
res.json(user);
});

module.exports = authRouter;