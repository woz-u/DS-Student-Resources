```java
// you are working as a data scientist for a veteranarians office and they want to add new clients to the online filing system
// each pet has a full profile with their name, age, sex, species, and if they are sexually altered and vaccinated, and the owners name

//a list of pet client information has been provided, insert them into the database all at once
db.PetList2.insertMany([
  {
    name: "Boogie",
    age: 5.2,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Micky", "Joanie"]},
  {
    name: "Benny",
    age: 1.4,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Latrice", "Sandra"]
  },
  {
    name: "Fibi",
    age: "1 human year",
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Julie", "Cory"]
  },
  {
	  name: "Logan",
    age: "3 cat years",
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Something", original: true, booster: false },
    ownerName:  ["Jessenia", "Leonardo", "Marina", "Lukey"]
  },
  {
    name: "Moby",
    age: 11,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: false },
    ownerName: ["Mia", "Johnny"]
  },
  {
	  name: "Triton",
    age: "3 goldfish years",
    sex: "male",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "None", original: false, booster: false },
    ownerName: ["Jessenia", "Leonardo", "Marina", "Lukey"]
  },
  {
	  name: "Milly-Dilly-Killy",
    age: 2,
    sex: "Unknown",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "None", original: false, booster: false },
    ownerName: ["Jessenia", "Leonardo", "Marina", "Lukey"]
  },
  {
	  name: "Smokey",
    age: 1,
    sex: "male",
    species: "Cat",
    Sxaltered: false,
    vaccinations: { name: "none", original: false, booster: false },
    ownerName: ["Leonardo"]
  },
  { name: "Molly",
    age: 6.5,
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Marcy"] },
  { 
    name: "Felix",
    age: 15,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Max"] },
  { name: "Sepp",
    age: 10,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Miles"] },
  { name: "Pancho",
    age: 10,
    sex: "male",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Katie"] },
  { name: "Ginny",
    age: 5,
    sex: "female",
    species: "Dog",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Marcy"]},
  {
    name: "Taylor Swift",
    age: 13,
    sex: "female",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: ["Jilian", "Derek"]
  },
  {
	name: "Tessa",
    age: 5,
    sex: "female",
    species: "Cat",
    Sxaltered: false,
    vaccinations: { name: "Gorgeousitis", original: "Beautifullitis", booster: true },
    ownerName: ["Marisa", "not Joe"]
 },
 { name: "Aloysius",
    age: 12.7,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Max"] }, 
 { name: "Ajax",
    age: 2.7,
    sex: "male",
    species: "Cat",
    Sxaltered: true,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Max", "Ruby"] },
  {
    name: "Thunderstruck",
    age: 4,
    sex: "male",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: ["Jilian", "Derek"]
  },
  {
    name: "Macon the Bacon",
    age: 1,
    sex: "male",
    species: "Alpaca",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false , booster: false },
    ownerName: ["Jilian"]
  },
  {
    name: "Billy Elliot",
    age: "under 1 year",
    sex: "male",
    species: "Fish",
    Sxaltered: false,
    vaccinations: { name: "N/A", original:false , booster: false },
    ownerName: ["Julie"]
  },
  {
	name: "Richard",
    age: 6,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Marcy"]
  },
  {
	name: "Lucy",
    age: 2,
    sex: "female",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Marcy", "Tomas"]
  },
  {
	name: "Pau3",
    age: 6,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Marcy"]
  },
  {
	name: "Mother Clucker",
    age: 3,
    sex: "female",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Marcy"]
  },
  {
	name: "Nugget",
    age: 4,
    sex: "male",
    species: "Chicken",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Marcy"] },
 {
    name: "Brandy",
    age: 16,
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "Rabies", original: true, booster: true },
    ownerName: ["Orlene", "Jessenia"]
  },
  {
    name: "Pork Rind",
    age: 1,
    sex: "female",
    species: "Swine",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Jilian"]
  },
  {
    name: "Motty",
    age: "Unknown",
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Orlene", "Jessenia"]
  },
  {
    name: "Oliver",
    age: "under 1 year",
    sex: "male",
    species: "Dog",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Orlene"]
  },
  {
    name: "Sully",
    age: 22,
    sex: "male",
    species: "Bird",
    Sxaltered: false,
    vaccinations: { name: "N/A", original: false, booster: false },
    ownerName: ["Mia"]
  }]);

//db.PetList2.drop()

///


// query 1

// tomorrow starts senior pet appreciation month! the clinic wants to send out a disounted visit for annual check ups to all the owners with senior pets
  // make a list of pets older than 6 years old
  db.PetList2.find({ age : {$gt: 6} });


// query 2
// the vet did a home check on Jilian's farm today and wondered if she makes up a majority of clients at the clinic, to test this, look up all owners that arent Jilian 
db.PetList2.find({ ownerName: { $ne: ["Jilian"] } });


// query 3

 // A customer Marcy has come in and needs to admit her animal, she cannot remember the name of this pet because they all look the same but they are all in the system, 
  // make a list of all the pets Marcy has so we can scan them for microchips
  db.PetList2.find({ ownerName : {$eq: ["Marcy"]} });



// query 4
// the techs have a bet going about the most common client species the clinic sees, Gordie says its Dogs but Samuel knows there has to be more other species than that! 
// they have come to you for the official information, find all the species in the clinic that aren't dogs.
db.PetList2.find({ species: { $ne: "Dog" } });


// query 5

  // the clinic is having a free neuter day for all pets under 7! there is a policy clause that states animals must be at least two years old to qualify for free neuter
  // find all the clients that are older than two but younger than 7 and not altered.
  db.PetList2.find( { $and: [{ age: { $gt: 2 } } , { age: { $lt: 7 } }, {Sxaltered: false}]});



// query 6

// The clinic is having a special deal on livestock treatments next week! The vet has asked for a list all animals that count as livestock so we can send out emails about the event. 
  // make a list of all the Swine, Chicken, Alpaca and produce a list that shows the owner name only
  db.PetList2.find( { $or: [{ species: "Alpaca" }, { species: "Chicken" }, { species: "Swine"}] }, { ownerName: 1 });



// part 2
// the clinic has some client owners with livestock as well as housepets but we want to double check. the vet can remember off hand that Jilian, Marcy and Mia have exotic animals and some dogs, but nothing else
// make a list of the clients older than 4, that are not dogs, under the three owners
db.PetList2.find( { $and: [ {age: {$gt:4} }, {species: {$ne:"Dog"}}, {ownerName: {$in: ["Marcy", "Jilian", "Mia"] } } ] } );

```
