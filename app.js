const mysql = require('mysql');
const fs = require('fs');

var config =
{
    host: 'serverlaunchx.mysql.database.azure.com',
    user: 'pam@serverlaunchx',
    password: 'LaunchX123',
    database: 'animalesDB',
    port: 3306,
    ssl: {ca: fs.readFileSync("BaltimoreCyberTrustRoot.crt.pem")}
};

const conn = new mysql.createConnection(config);

conn.connect(
    function (err) { 
    if (err) { 
        console.log("!!! Cannot connect !!! Error:");
        throw err;
    }
    else
    {
       console.log("Connection established.");
       readData();
           
    }
});



function readData(){
    conn.query('SELECT * FROM EndangeredAnimals', 
        function (err, results, fields) {
            if (err) throw err;
            else console.log('Selected ' + results.length + ' row(s).');
            for (i = 0; i < results.length; i++) {
                console.log('\nRow: ' + JSON.stringify(results[i]));
                
                const fila = JSON.stringify(results[i].nameAnimal);
                console.log('\n Animal: ', fila);


            }
            console.log('Done. ');
        })
    conn.end(
        function (err) { 
            if (err) throw err;
            else  console.log('Closing connection.') 
    });
};

