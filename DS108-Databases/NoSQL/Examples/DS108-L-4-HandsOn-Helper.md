```java
// you are working as a data scientist for a veteranarians office and they want to add new clients to the online filing system
// each pet has a full profile with their name, age, sex, species, and if they are sexually altered and vaccinated, and the owners name

//create a list of the pet clients using the information above, it should have an embedded document of their vaccination records with if they have gotten their original and booster shot for that vaccine

// query 1
// start the system fresh by dropping all versions of the data base
db.PetList.drop();
db.PetList2.drop();
db.PetList4.drop();
db.PetList5.drop();


//query 2
// create a list of the clinic's clients
db.PetList4.insertMany([
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
    age: 6,
    sex: "male",
    species: "Beta Fish",
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

  ////

// query 3
// the clinic wants to see if they have more male or female clients
//create an index on the sex of the client
  db.PetList4.createIndex({ sex: 1 });


// query 4
// creat an index on the ages of the animals
db.PetList4.createIndex({ age: 1 });


// query 5
//the clinic is hiring a new exotic vet full time! they want to split the client load and give the new vet all the clients under 4, so they can be removed from the system
// delete all entries for clients under the age of 4
db.PetList4.deleteMany({ age: { $lt: 4 } });


//query 6
// poor Julie called the clinic today in a fit, her first beta fish passed away last night, she brought it in to run some tests
// delete the entry for the Beta Fish client
db.PetList4.deleteOne({ species: "Beta Fish" });


// query 7
// the study of gender in clients is now over! Males won, by a landlslide. delete the index on the sex of the clients
db.PetList4.dropIndex({ sex: 1 });


---

## Part 2
// query 1
//drop the age index
db.PetList4.dropIndex({ age: 1 });

// query 2
//the clinic wants to alphabetize the client list by owners, please make an index on the ownerName
db.PetList4.createIndex({ ownerName: 1 });

// query 3
//Katie called to let the clinic know that she is leaving town with her pet, Pancho. She wanted to thank everyone dearly for the years of care provided.
// the clinic will miss Katie and Pancho!
// find Pancho's profile and delete it from the system 
db.PetList4.findOneAndDelete({ name: "Pancho" });

```