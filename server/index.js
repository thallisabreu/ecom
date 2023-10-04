console.log("hello, world");
// print('hello, world');

const express = require('express');
//import 'package:express/express.dart';
const PORT = 3000;

const app = express();

//creating an api
app.get('/hello-world', (req, res)=>{
    res.send("aaaaaaaaaaa hw")
})
// GET, PUT, POST, DELETE, UPDATE -> CRUD
app.listen(PORT, "0.0.0.0", () => {
    console.log(`connected at port' ${PORT} hello`);
});