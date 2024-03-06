JobHunt Application

Introduction

JobHunt is a Java application designed to manage job-related data stored in a Neo4j graph database. It provides functionalities to add persons, create references between them, and perform queries to determine qualifications and potential support within the network. The application utilizes both Neo4j's Java driver and Memcached for efficient data retrieval and storage.

Prerequisites

Before running the JobHunt application, ensure you have the following prerequisites installed:

Java Development Kit (JDK) version 8 or later
Neo4j graph database running locally with appropriate credentials
Memcached server running with required configurations

Setup

Clone the repository containing the JobHunt application.
Make sure your Neo4j database and Memcached server are up and running.
Update the URI, USER, and PASSWORD constants in the JobHunt class to match your Neo4j database credentials.
Modify the server addresses in the connectToMemcached() method according to your Memcached server configurations.
Compile the Java files using the Java compiler.
Execute the compiled Java class file with appropriate arguments to perform operations.



Usage

Operations
The JobHunt application supports the following operations:

Add Person: Add a person to the Neo4j database with specified attributes.
csharp

Add Reference: Create a reference relationship between two persons in the Neo4j database.
csharp

Qualified: Check if a person is qualified based on specified criteria.

Might Support: Calculate the total number of people who might support a given person.


