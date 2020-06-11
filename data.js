const { email, password } = require('./conf.js') 
const API = require('call-of-duty-api')();

var fs = require('fs');
API.login(email, password).then((output) => {
  console.log(output);
  API.MWcombatwz('bearownage', API.platforms.psn).then((data) => {
    fs.writeFile("data.txt", data, function(err) {
      if (err) {
        console.log(err);
      }
    });
    console.log(data)});
}).catch((err) => {
  console.log(err);
});
