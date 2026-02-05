using car.rental.company as my from '../db/schema';

service CatalogService {
    entity Cars as projection on my.Cars;
    entity Customers as projection on my.Customers;
    entity Rentals as projection on my.Rentals;
    entity Maintenances as projection on my.Maintenances;
}