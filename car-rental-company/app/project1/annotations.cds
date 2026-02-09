using CatalogService as service from '../../srv/cat-service';
annotate service.Cars with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'licensePlate',
                Value : licensePlate,
            },
            {
                $Type : 'UI.DataField',
                Label : 'brand',
                Value : brand,
            },
            {
                $Type : 'UI.DataField',
                Label : 'model',
                Value : model,
            },
            {
                $Type : 'UI.DataField',
                Label : 'yearOfManufacture',
                Value : yearOfManufacture,
            },
            {
                $Type : 'UI.DataField',
                Label : 'dailyRentalPrice',
                Value : dailyRentalPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'availabilityStatus',
                Value : availabilityStatus,
            },
            {
                $Type : 'UI.DataField',
                Label : 'category',
                Value : category,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Model}',
            Value : model,
        },
        {
            $Type : 'UI.DataField',
            Value : category,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Brand}',
            Value : brand,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>LicensePlate}',
            Value : licensePlate,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>ManufactureYear}',
            Value : yearOfManufacture,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>DailyRentalPrice}',
            Value : dailyRentalPrice,
        },
        {
            $Type : 'UI.DataField',
            Value : availabilityStatus,
        },
    ],
    UI.SelectionFields : [
        availabilityStatus,
        category,
        licensePlate,
        yearOfManufacture,
    ],
);

annotate service.Cars with {
    availabilityStatus @Common.Label : '{i18n>AvailabilityStatus}'
};

annotate service.Cars with {
    category @Common.Label : '{i18n>Category}'
};

annotate service.Cars with {
    licensePlate @Common.Label : '{i18n>LicensePlate}'
};

annotate service.Cars with {
    yearOfManufacture @Common.Label : '{i18n>ManufactureYear}'
};

