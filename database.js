const mysql = require('mysql2');
const pool = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"Adani_momo_corner",
    connectionLimit:10
})

pool.query(`SELECT * FROM books2` , function(err,result,feilds){
    if (err) {
        return console.log(err);
    }
    else{
        for (i=0;i <= 19;i++){
            console.log(result[i].book_name)
        }
    }
})