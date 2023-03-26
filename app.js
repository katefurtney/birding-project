
const express = require('express')
const app = express()
const bird = require('./controller/bird')
const sighting = require('./controller/sighting')
const port = 3000

app.use(express.static('public'))

app.get('/api/birds', bird.getAll)
app.get('/api/sightings', sighting.getAll)


app.listen(port, () => {
  console.log(`Birding app listening on port ${port}`)
})