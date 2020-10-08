# Object Oriented Programing

* What is Object Oriented Programming (OOP)?
- OOP is the principal that database objects mimic real life with properties(aka attributes) and relationships
- We define 'classes' that become blueprints for single 'instances'
- Object 'instances' represent 'rows' of information from a database

### SONG DATABASE
Class/Model: Song
Here are the instances of a song class:
| id |      title      |       artist_name       |          album_title         |      Genre     |    Release Year  |
| 1  |    Video Games  |       Lana Del Rey      |          Born To Die         |       Pop      |       2012       |


## Exercise:
- List out attributes that all 'instances' of the following have:

#Country
- Most Spoken Language(s)
- Population
- Name
- Currency
- Independence Year

| id |      Name      |    Most Spoken Language      |          Population Size         |      Currency     |    Independence Year  |
| 1  |    USA         |         English              |            350 Million           |       USD         |        1776           |

#Car
- @make
- @model
- @year
- @color
- @num_of_cylinders
- @drive
- @num_of_doors
- @horse_power

#Planet
- @size
- @num_of_moons
- @rotation_direction
- @distance_from_sun
- @atmosphere_composition

#User
- @email
- @name
- @password
- @location
- @phone_number
- @dob

* How to make and use instances of classes?
- Utilize the '@' symbol to create variables that have the same name across instances, but hold different values
- Write 'setter' methods using the '=' syntax to demonstrate that we're changing the value of a variable
- Write 'getter' methods to demonstrate that we are retrieving a value OR performing an action
- Write instance methods that use attributes to perform actions

* Relationships: A user can have a car and live in a country which is on a planet. Each user instance can have a different car and live in a different country, but all will likely live on the same planet. 

* Note: The terms 'model' and 'class' are sometimes used interchangeably. When I say 'table', I'm referencing a database table name which should have the same name as the model of class that it's storing information for
