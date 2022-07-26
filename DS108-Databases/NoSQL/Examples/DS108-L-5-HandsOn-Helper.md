```java
// you are working as a data scientist for a veteranarians office and they want to add new clients to the online filing system
// each pet has a full profile with their name, age, sex, species, and if they are sexually altered and vaccinated, and the owners name

//create a list of the pet clients using the information above, it should have an embedded document of their vaccination records with if they have gotten their original and booster shot for that vaccine
db.PetList5.insertMany([
  {
    name: "Boogie",
    age: 5.2,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Micky"},
  {
    name: "Benny",
    age: 1.4,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Latrice"
  },
  {
    name: "Fibi",
    age: "1 human year",
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Julie and Cory"
  },
  {
	  name: "Logan",
    age: "3 cat years",
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Something", original: true, booster: false },
    ownerName:  "Jessenia, Leonardo, Marina, & Lukey"
  },
  {
    name: "Moby",
    age: 11,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: false },
    ownerName: "Mia"
  },
  {
	  name: "Triton",
    age: "3 goldfish years",
    sex: "male",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "None", original: false, booster: false },
    ownerName: "Jessenia, Leonardo, Marina, & Lukey"
  },
  {
	  name: "Milly-Dilly-Killy",
    age: 2,
    sex: "Unknown",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "None", original: false, booster: false },
    ownerName: "Jessenia, Leonardo, Marina, & Lukey"
  },
  {
	  name: "Smokey",
    age: 1,
    sex: "male",
    species: "Cat",
    Sxaltered: false,
    vaccinations: { name: "none", original: false, booster: false },
    ownerName: "Leonardo"
  },
  { name: "Molly",
    age: 6.5,
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Marcy" },
  { 
    name: "Felix",
    age: 15,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Max" },
  { name: "Sepp",
    age: 10,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Miles" },
  { name: "Pancho",
    age: 10,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Katie" },
  { name: "Ginny",
    age: 5,
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Marcy"},
  {
    name: "Taylor Swift",
    age: 13,
    sex: "female",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: "Jilian"
  },
  {
	name: "Tessa",
    age: 5,
    sex: "female",
    species: "Cat",
    Sxaltered: false,
    vaccinations: { name: "Gorgeousitis", original: "Beautifullitis", booster: true },
    ownerName: "Marisa and not Joe"
 },
 { name: "Aloysius",
    age: 12.7,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Max" }, 
 { name: "Ajax",
    age: 2.7,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Max" },
  {
    name: "Thunderstruck",
    age: 4,
    sex: "male",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: "Jilian"
  },
  {
    name: "Macon the Bacon",
    age: 1,
    sex: "male",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: "Jilian"
  },
  {
    name: "Billy Elliot",
    age: "under 1 year",
    sex: "male",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "N/A", original:false , booster: false },
    ownerName: "Julie"
  },
  {
	name: "Richard",
    age: 6,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Marcy"
  },
  {
	name: "Lucy",
    age: 2,
    sex: "female",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Marcy"
  },
  {
	name: "Pau3",
    age: 6,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Marcy"
  },
  {
	name: "Mother Clucker",
    age: 3,
    sex: "female",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Marcy"
  },
  {
	name: "Nugget",
    age: 4,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Marcy" },
 {
    name: "Brandy",
    age: 16,
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: "Orlene and Jessenia"
  },
  {
    name: "Pork Rind",
    age: 1,
    sex: "female",
    species: "Swine",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Jilian"
  },
  {
    name: "Motty",
    age: "Unknown",
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Orlene and Jessenia"
  },
  {
    name: "Oliver",
    age: "under 1 year",
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Orlene"
  },
  {
    name: "Sully",
    age: 22,
    sex: "male",
    species: "Bird",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: "Mia"
  }]);

//db.PetList5.drop();
////

// query 2
//the clinic has adopted a new program to handle vaccination records and is working on moving all the old clients into the system
//to help they want to use the booster tab to mark old clients that need to be added, 
//give all old clients in the system a "true" booster marker so the techs are aware
db.PetList5.updateMany( {"vaccinations.booster": false}, { $set: {"vaccinations.booster": true} });

// query 3
// Orlene brought their dog Oliver in for a visit and he has been neutered, the vet would like to update the system to reflect this
db.PetList5.updateOne( { name: "Oliver" }, { $set: { Sxaltered: true } });

// query 4
// julie came in today to make sure all her pets were fixed and vaccinated, please update the system to reflect her diligence! 
db.PetList5.updateOne({ ownerName: "Julie" }, { $set: { Sxaltered: true, "vaccinations.original": true } });

// query 5
// the clinic now services all species! they will no longer need to check if they have eligble clients, please remove the species field. 
db.PetList5.updateMany({}, { $unset: { species: "" } });
// check your work!
db.PetList5.find({name:"Benny"});

// query 6
// the clinic wanted to run some metrics on the general age of their clients, please make an index of the ages
db.PetList5.createIndex({ age: 1 });


// part 2
// a bit of the vet techs have been innapropiately marking general surgerys under the sex altered field and it has made a confusing mess of things
//the vet wants to name the field something more intuitive
// rename the sxaltered field to spayneuter to better reflect the specific operation
db.PetList5.updateMany({}, { $rename: { Sxaltered: "SpayNeuter" } });
// check your work!
db.PetList5.find({name:"Tessa"});

// query 3
// the system seems to confuse the name of the vaccine and the name of the client
//please rename the vaccine name field to be vaccinegiven and un-nest it from the vaccinations tab
db.PetList5.updateMany({}, { $rename: { "vaccinations.name": "VaccineGiven" } });
// check your work!
db.PetList5.find({name:"Milly-Dilly-Killy"});

```