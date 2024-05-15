const mysql=require('mysql');
require('dotenv').config();

let connection=mysql.createConnection({
   host:process.env.HOST,
   user:process.env.USER,
   password:process.env.PASSWORD,
   database:process.env.NAME_BD

});

connection.connect((err)=>{

    if(err){
        console.log('No estas conectado',err)
    }
    else{
        console.log('Felicidades estas conectado')
    }
});

module.exports=connection;