const express = require("express");
const mongoose = require('mongoose');
const authRouter = require("./routes/auth");

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://thallis:ola12345@cluster0.rt48xkp.mongodb.net/?retryWrites=true&w=majority"

app.use(authRouter);

mongoose.connect(DB).then(() => {
    console.log('Conexão deu certo!');
}).catch((e)=> {console.log(e);
})

app.listen(PORT, () => {
    console.log(`Conectado na porta ${PORT}.`);
});