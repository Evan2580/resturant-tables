
// Dependencies
// =============================================================
var express = require("express");
var path = require("path");

// Sets up the Express App
// =============================================================
var app = express();
var PORT = 3000;

// Sets up the Express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

// Star Wars Characters (DATA)
// =============================================================
var reservations = [
    {
        customerName: "Ahmed",
        customerEmail: "afhaque89@gmail.com",
        customerID: "afhaque89",
        phoneNumber: "979-587-0887"
    },
    {
        customerName: "dghdfg",
        phoneNumber: "8888888888",
        customerEmail: "dan@dan.com",
        customerID: "12123431424242344354"
    },
    {
        customerName: "Dustin Sparks",
        phoneNumber: "1234567890",
        customerEmail: "test@test.com",
        customerID: "1234"
    }
];

var waitlist = [
    {
        customerName: "1234",
        phoneNumber: "66767766",
        customerEmail: "dan@dan.com",
        customerID: "1234567",
    },
    {
        customerName: "234235",
        phoneNumber: "66767766",
        customerEmail: "dan@dan.com",
        customerID: "1234567",
    }
];
// Routes
// =============================================================

// Basic route that sends the user first to the AJAX Page
app.get("/", function(req, res) {
  res.sendFile(path.join(__dirname, "home.html"));
});

app.get("/add", function(req, res) {
  res.sendFile(path.join(__dirname, "add.html"));
});

// Displays all characters
app.get("/api/restaurant/reservations", function(req, res) {
  return res.json(reservations);
});

// Displays all characters
app.get("/api/restaurant/waitlist", function(req, res) {
    return res.json(waitlist);
  });


// Create New Characters - takes in JSON input
app.post("/api/restaurant/reserve", function(req, res) {
  // req.body hosts is equal to the JSON post sent from the user
  // This works because of our body parsing middleware
  var reservation = req.body;

  // Using a RegEx Pattern to remove spaces from newCharacter
  // You can read more about RegEx Patterns later https://www.regexbuddy.com/regex.html
  console.log("New resevation: ")
  console.log(reservation);

  if( reservations.length <= 5 ){
      reservations.push(reservation);
  } else {
      console.log("Reservations are full, adding to waitlist");
      waitlist.push(reservation);
  }

  res.end();
});

app.delete("/api/restaurant/clear", function(req, res) {
    reservations = [];
    waitlist = [];

    res.send("Reservations have been cleared");

})

// Starts the server to begin listening
// =============================================================
app.listen(PORT, function() {
  console.log("App listening on PORT " + PORT);
});
