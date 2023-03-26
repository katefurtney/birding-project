const { Client } = require('pg')

async function query(query) {
    const client = new Client({
        host: 'localhost',
        port: '55000',
        user: 'postgres',
        password: 'postgrespw',
        database: 'postgres'
    })

    await client.connect()
    const result = await client.query(query)
    await client.end()

    return result;
}


module.exports = {
    query: query
}