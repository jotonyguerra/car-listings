# car-listings
You have been tasked with creating an application that manages cars for a used car lot.

### Requirements Necessary to Meet Expectations

Test drive your development by passing the provided model and acceptance tests
for the following user stories and getting the tests to pass to complete the
acceptance criteria for each feature.

```no-highlight
  As a car salesperson
  I want to see a list of manufacturers
  So that I can see what types of cars are available
```

Acceptance Criteria:

* Visiting the manufacturers_path should show a list of manufacturers
* I can visit this link from any page of the application

```no-highlight
  As a car salesperson
  I want to see a list of cars
  So that I can see what cars are available
```

Acceptance Criteria:

* Visiting the cars_path should show a list of cars
* I can visit this link from any page of the application

```no-highlight
As a car salesperson
I want to record a car manufacturer
So that I can keep track of the types of cars found in the lot
```

Acceptance Criteria:

* I must specify a manufacturer name and country.
* If I do not specify the required information, I am presented with errors.
* If I specify the required information, the manufacturer is recorded and I am
redirected to the index of manufacturers

```no-highlight
As a car salesperson
I want to record a newly acquired car
So that I can list it in my lot
```

Acceptance Criteria:

* I must specify the manufacturer, color, year, and mileage of the car (an
  association between the car and an existing manufacturer should be created).
* Only years from 1920 and above can be specified.
* I can optionally specify a description of the car.
* If I enter all of the required information in the required formats, the car is
recorded and I am presented with a notification of success.
* If I do not specify all of the required information in the required formats, the
car is not recorded and I am presented with errors.
* Upon successfully creating a car, I am redirected back to the index of cars.

### Tips

* User authentication is **not** required for this application.
* Utilizing nested routes is not necessary for this application. **Do not** nest
cars under manufacturers.
* Make sure your tests pass.
* Make sure that your app is usable by providing links to navigate between the
different pages.
* Make sure that your database schema has the necessary constraints.
* Make sure that your models contain the necessary validations and associations.
