namespace car.rental.company;
using { Country } from '@sap/cds/common';


entity Cars {
    key ID               : UUID; 
    licensePlate         : String @assert.unique @mandatory;
    brand                : String @mandatory;
    model                : String @mandatory;
    yearOfManufacture    : Integer @mandatory;
    dailyRentalPrice     : Decimal(10,2) @mandatory;
    availabilityStatus   : String @mandatory;
    category             : String @mandatory;
}

type Address {
    street  : String;
    city    : String;
    country : Country;
}

entity Customers {
    key ID               : UUID;
    firstName            : String @mandatory;
    lastName             : String @mandatory;
    email                : String @assert.unique @mandatory;
    driversLicenseNumber : String @assert.unique @mandatory;
    phoneNumber          : String @mandatory;
    address              : Address
}

entity Rentals {
    key ID               : UUID;
    rentalDate           : DateTime @mandatory;
    returnDate           : DateTime;
    customer             : Association to Customers @mandatory;
    car                  : Association to Cars @mandatory;
    totalPrice           : Decimal(10,2) @mandatory;
}

entity Maintenances {
    key ID               : UUID;
    car                  : Association to Cars @mandatory;
    startDate            : Date @mandatory;
    endDate              : Date @mandatory;
    issue                : String(200) @mandatory;
    cost                 : Decimal(10,2) @mandatory;
}