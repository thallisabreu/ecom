const express = require("express");
const mongoose = require('mongoose');
const authRouter = require("./routes/auth");
const adminRouter = require("./routes/admin");
const productRouter = require("./routes/product");
const userRouter = require("./routes/user");

const PORT = 3000;
const app = express();
const DB = "mongodb+srv://thallis:ola12345@cluster0.rt48xkp.mongodb.net/?retryWrites=true&w=majority"

app.use(express.json());
app.use(authRouter);
app.use(adminRouter);
app.use(productRouter);
app.use(userRouter);

mongoose.connect(DB).then(() => {
    console.log('Conexão deu certo!');
}).catch((e)=> {console.log(e);
})

app.listen(PORT, "0.0.0.0",() => {
    console.log(`Conectado na porta ${PORT}.`);
});