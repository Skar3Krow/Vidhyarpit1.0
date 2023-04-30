const express = require('express');
const bodyPardser = require('body-parser');
const session = require('express-session');
const path = require('path');
const app = express();
const mysql = require('mysql2'); 
const ejs = require('ejs'); 


const pool = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"Adani_momo_corner",
})  
let uid = Math.random()*1000;
app.use(session({
	secret: 'secret',
	resave: true,
	saveUninitialized: true
}));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use(bodyPardser.urlencoded({extended:true}));

app.set('view engine' , 'ejs');
app.use(express.static('public'));

app.get("/sign_in" , function(req, res){
    res.render('sign_in');
});
app.post('/sign_in', function(request, response) {
	// Capture the input fields
	let email = request.body.email;
	let password = request.body.password;
	// Ensure the input fields exists and are not empty
	if (email && password) {
		// Execute SQL query that'll select the account from the database based on the specified username and password
		pool.query('SELECT * FROM User_Profile WHERE Email = ? AND User_Password = ?', [email, password], function(error, results, fields) {
			// If there is an issue with the query, output the error
			if (error) throw error;
			// If the account exists
			if (results.length > 0) {
				// Authenticate the user
				request.session.loggedin = true;
				request.session.email = email;
				// Redirect to home page
				response.redirect('/');
			} else {
				response.send('Incorrect Username and/or Password!');
			}			
			response.end();
		});
	} else {
		response.send('Please enter Username and Password!');
		response.end();
	}
});

app.get("/sign_up" , function(req, res){
    res.render('sign_up');
});
app.post("/sign_up" , function(req , res){
    let fName = req.body.firstName;
    let sName = req.body.passWord;
    let userName = req.body.username;
    let Phone = req.body.phone;
    let eMail = req.body.email;
    let Address = req.body.address;
    let City = req.body.city;
    let Pincode = req.body.pincode;
    
    pool.query(`INSERT INTO User_Profile VALUES((?),(?), (?), (?), (?), (?), (?), (?), (?))`,[uid,fName, sName, userName, eMail,Phone, Address, City, Pincode] , function(err,result,feilds){
        if (err) {
            return console.log(err);
        }
        return console.log(result);
    })
	res.redirect("/");
})
app.get("/about_us" , function(req, res){
    res.render('about_us');
});
app.get("/" , function(req, res){
    res.render('home');
});
    

app.listen(3000, function(req , res){
    console.log("The server has been started on port` 3000");
})