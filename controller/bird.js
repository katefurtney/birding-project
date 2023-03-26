const db = require('../pg_client')

async function getAll(request, response) {
    const result = await db.query("SELECT * FROM birds")
    response.send(result.rows)
}

module.exports = {
    getAll: getAll
}