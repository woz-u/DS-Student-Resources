```c-lms
activity-type: project
activity-name: SQL Final Project
points: 19
due-at: 67%
close-at: end-of-module
```

Welcome to the Final Project for the SQL course! Great job making it this far! This Final Project will be different from the Hands-On projects you have previously seen in a couple of different ways. For the Final Project, you will be putting together the numerous topics you have learned into one large project. It is designed to mimic real problems which you may face in your career, so it may be a challenge for you and will also take several hours. Take this project step-by-step and be aware that the project description below is written to be a bit less specific than previous Hands-Ons. The Final Project is supposed to challenge you to do some problem solving to figure out how to accomplish a task. You can always review past lessons or use a Google search if needed. Please read through the following setup instructions before you start the project. Good luck!

---

## Setup

This Final Project is structured into three parts, and each part may ask you to run multiple queries. After each query, please take a screenshot of the MySQL Workbench output and add it to a Word document (or an equivalent) and name this file `SQL-FinalProject`. This way, you will be able to submit your answers to each part all at once.

For this project, you will be creating two tables with the second table referencing the first table. You will need to do this with a foreign key. You will then join these tables together and create a view.

Good luck! 

<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">Additional Info!</h3>
    </div>
    <div class="panel-body">
    <p>For an example of what is expected for the final, watch this workshop: <a href="https://vimeo.com/563359034" target="_blank">SQL Final Project</a>.</p>
    </div>
</div>

---

## Part 1

1. Run a query that creates a table named `Authors` that has the following columns: AuthorID, FullName, BirthCountry. 
    * AuthorID is the primary key and auto increments.

2. Add the following Authors table:

<table class="table table-striped">
    <tr>
        <th>FullName</th>
        <th>BirthCountry</th>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Jane Austen</td>
        <td>England</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Charles Dickens</td>
        <td>England</td>
    </tr>
     <tr>
        <td style="font-weight: bold;" nowrap>Mark Twain</td>
        <td>United States</td>
    </tr>
</table>

3. Run a query to see all of the authors within the database.

---
## Part 2

1. Run a query that creates a table named `Books` that has the following columns: BookID, Name, AuthorID. 
    * BookID is the primary key and auto increments. 
    * AuthorID is a foreign key that referenced the Authors table on the AuthorID column.

2. Add the following the Books table:

<table class="table table-striped">
    <tr>
        <th>Name</th>
        <th>AuthorID</th>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Pride and Prejudice</td>
        <td>1</td>
    </tr>
    <tr>
        <td style="font-weight: bold;" nowrap>Sense and Sensibility</td>
        <td>1</td>
    </tr>
     <tr>
        <td style="font-weight: bold;" nowrap>The Pickwick Papers</td>
        <td>2</td>
    </tr>
</table>

3. Run a query to see all of the books within the database.

---
## Part 3

1.  Run a query that joins the Authors and Books table together using the `AuthorID` foreign key.

2. Next, create a view named `AuthorBooks` using the join query created in step 1 adding the following parameters:
    * Show only the Authors full name and book name.
    * Rename the column name results using the `AS` keyword.
        * The Authors FullName should display as AuthorName.
        * The Books Name should display as BookName.
    * Order the results alphabetically by the authors full name.

3. Lastly, run a query to see the view you just created.

<div class="panel panel-danger">
    <div class="panel-heading">
        <h3 class="panel-title">Caution!</h3>
    </div>
    <div class="panel-body">
        <p>Be sure to zip and submit your <code>SQL-FinalProject</code> Word document when finished! You will not be able to re-submit, so be sure the screenshots to each part are located within this document.</p>
    </div>
</div>
