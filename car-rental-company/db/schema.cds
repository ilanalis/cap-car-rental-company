namespace car.rental.company;
using { Country, sap.common.CodeList } from '@sap/cds/common';

@odata.draft.enabled
@odata.draft.bypass
@assert.unique : {
  uniqueLicensePlate: [ licensePlate ]
}
entity Cars {
    key ID               : UUID; 
    licensePlate         : String  @mandatory;
    brand                : String @mandatory;
    model                : String @mandatory;
    yearOfManufacture    : String @mandatory;
    dailyRentalPrice     : Decimal(10,2) @mandatory;
    availabilityStatus   : Association to AvailabilityStatus;

    category_ID          : UUID;        
    category             : Association to CarCategory on category.ID = category_ID;
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
    address              : Address @mandatory;
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

entity CarCategory {
    key ID : UUID;
    title  : String @mandatory;                
}

entity AvailabilityStatus : CodeList {
    key code : String enum {
        Available = 'A';
        Rented = 'R';
        UnderMaintenance = 'M';
    }
}
