# Car Api

### In this application you can make CRUD api calls to Create, Read, Update, and Delete cars

### Routes that are currently working:

#### Add/create a new car to inventory:
- Post -> /api/v1/mycars

#### To get all cars:
- GET -> /api/v1/mycars

#### Get a specific car:
- GET -> /api/v1/mycars/:mycar_id

#### Update/Delete a car
- Put -> /api/v1/mycars/:mycar_id
- Delete -> GET -> /api/v1/mycars/:mycar_id

### Steps to start the application
- Clone this repository
- cd inside the repo
- run "bundle install"
- start the rails server -> "rails s"

### Start Postman
#### Hit this url
- http://localhost:3000/api/v1/mycars