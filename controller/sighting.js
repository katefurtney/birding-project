const db = require('../pg_client')

async function getAll(request, response) {
    const result = await db.query("SELECT birds.species, sightings.day, sightings.month, sightings.year, sightings.city, sightings.state, sightings.country FROM birds INNER JOIN sightings ON birds.code = sightings.birds_code")
    response.send(result.rows)
}

module.exports = {
    getAll: getAll
}