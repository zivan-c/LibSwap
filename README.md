# LibSwap - Dockerized Library Application

This repository contains the containerized version of the LibSwap application, submitted as part of the SIT725 High Distinction (HD) task.

## Configuration and Sensitive Information

For security reasons, sensitive configuration values (such as database URIs and JWT secrets) have been intentionally excluded from this public repository. 

**To run this application, you must provide these configuration values:**
1. Create a new file named `.env` in the root directory of this project.
2. Navigate to my **OnTrack submission comments**. I have pasted the exact required contents for the `.env` file there.
3. Copy the text from the OnTrack comment and paste it into your newly created `.env` file. 
4. Save the file.

## How to Build and Start the Application

Once the `.env` file is in place, you can build and run the application from scratch using Docker Compose. Ensure Docker Desktop is opened up and running on the machine.

Open a terminal in the root directory of this project and run the following command:

```bash
docker compose up --build -d 
```

Once up and running, go to http://localhost:3000/catalogue.html to view the website with the books that have been loaded from the MongoDB database.

To view the student information, head to http://localhost:3000/api/student. It should return my name "Merrick Zivan Malong" and my student number: 226495017
