/**
 * Author: Philipp fleischer
 * email: philipp.fleischer0@gmail.com
 */
const { exec } = require('child_process')
const system = require('os')

const operatingSystem = system.platform()

if(operatingSystem === 'win32'){
    exec("docker build -t posztgres ./DB/.", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
    });
    exec("docker run -p 5432:5432 -e POSTGRES_PASSWORD=password posztgres", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
    });
}else{
   const b =  exec("docker build -t posztgres ./DB/.", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
        
    });
   
   
   exec("docker run -p 5432:5432 -e POSTGRES_PASSWORD=password posztgres", (error, stdout, stderr) => {
        if (error) {
            console.log(`error: ${error.message}`);
            return;
        }
        if (stderr) {
            console.log(`stderr: ${stderr}`);
            return;
        }
        console.log(`stdout: ${stdout}`);
    });

    
    
}
