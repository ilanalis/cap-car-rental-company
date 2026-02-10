module.exports = (srv) => {
  srv.before(["CREATE", "UPDATE"], "Cars", (req) => {
    const currentYear = new Date().getFullYear();
    const { yearOfManufacture, dailyRentalPrice } = req.data;
    const OLDEST_YEAR = 1950;

    const yearNumber = Number(yearOfManufacture);
    if (isNaN(yearNumber)) {
      req.error(400, "The year of manufacture must be a number.");
    }

    if (!Number.isInteger(yearNumber)) {
      req.error(400, "The year of manufacture must be an integer.");
    }

    if (yearOfManufacture && yearOfManufacture > currentYear) {
      req.error(
        400,
        "The year of manufacture must not be greater than the current year.",
      );
    }

    if (yearOfManufacture < OLDEST_YEAR) {
      req.error(
        400,
        `The year of manufacture must not be less than ${OLDEST_YEAR}`,
      );
    }

    if (dailyRentalPrice <= 0) {
      req.error(400, "The daily rental price must be greater than 0");
    }
  });
};
