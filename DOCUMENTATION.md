This document provides detailed information on how to interact with the API for rest-api. It outlines the standard formats for requests and responses, provides sample usage, and offers instructions for setting up and deploying the API.

## Running the API
run rails server

The API will be accessible at http://localhost:3000/api
## Usage
To interact with the API, you can use tools like Postman or make HTTP requests using a client library.
## Endpoints For postman for deployed app
GET https://rest-ziul.onrender.com/api
Retrieve a list of all people.

POST https://rest-ziul.onrender.com/api
Create a new person.

GET https://rest-ziul.onrender.com/api/id
Retrieve details of a specific person by ID.

PUT https://rest-ziul.onrender.com/api/id
Update details of a specific person by ID.

DELETE https://rest-ziul.onrender.com/api/id
Delete a specific person by ID.

GET https://rest-ziul.onrender.com/api/find_by_name/name
Retrieve details of a specific person by name.

POST https://rest-ziul.onrender.com/api/find_by_name/name
Create a new person with a specific name.

PUT https://rest-ziul.onrender.com/api/find_by_name/name
Update details of a specific person by name.

DELETE https://rest-ziul.onrender.com/api/find_by_name/name
Delete a specific person by name.

## Examples
Example Request

 POST https://rest-ziul.onrender.com/api
 
  'Content-Type: application/json' -d 
  '{"person": {"name": "John Doe", "age": 30}}'

  Example Response
  {
  "id": 1,
  "name": "John Doe",
  "age": 30,
  "created_at": "2023-09-14T00:00:00.000Z",
  "updated_at": "2023-09-14T00:00:00.000Z"
}
