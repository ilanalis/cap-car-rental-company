using car.rental.company as my from '../db/schema';

service CatalogService {
    entity Cars as projection on my.Cars {
        *,
        category.title as categoryTitle : String,
        availabilityStatus.name as statusName : String 
    };
    entity Customers as projection on my.Customers;
    entity Rentals as projection on my.Rentals;
    entity Maintenances as projection on my.Maintenances;
    entity CarCategory as projection on my.CarCategory;
}