const { Client } = require('pg')

async function query(query) {
    let connectionDetails = {
        host: 'localhost',
        port: '55000',
        user: 'postgres',
        password: 'postgrespw',
        database: 'postgres'
    }

    if (process.env.NODE_ENV === 'production') {
        connectionDetails = {
            connectionString: process.env.DATABASE_URL,
            ssl: {
                rejectUnauthorized: false
            }
        }
    }

    const client = new Client(connectionDetails);

    await client.connect()
    const result = await client.query(query)
    await client.end()

    return result;
}


module.exports = {
    query: query
}