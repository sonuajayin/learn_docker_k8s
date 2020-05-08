const express = require('express');
const redis = require('redis');
const process = require('process');

const app = express();
const client = redis.createClient({
    host: 'redis-server',
    port: 6379
});
client.set('visits', 0);

app.get('/', (req, res) => {
    //process.exit(0); use non 0 for failure exits
    client.get('visits', (err, visits) => {
        res.send('Number of visitsis ' + visits);
        client.set('visits', parseInt(visits) + 1);
    });
});

app.listen(8081, () => {
    console.log('listening on port 8081');
});