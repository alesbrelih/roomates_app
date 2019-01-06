const express = require('express')
const app = express()

app.get('/', (req, res) => res.send('Hello World!'))

app.listen(process.env.APPPORT, () => console.log('Node.js app listening on port 8888.'))
