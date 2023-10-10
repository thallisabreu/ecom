const express = require('express');

const authRouter = require('./routes/auth');

const PORT = 3000;
const app = express();

app.use(authRouter);

app.listen(PORT, () => {
    console.log(`connected at port ${PORT}`);
});