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
                Value : category_ID,
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
            Value : category_ID,
            Label : '{i18n>Category}',
        },
        {
            $Type : 'UI.DataField',
            Value : availabilityStatus_code,
            Label : '{i18n>Status}',
        },
    ],
    UI.SelectionFields : [
        availabilityStatus_code,
        licensePlate,
        yearOfManufacture,
        category_ID,
    ],
);


annotate service.Cars with {
    category_ID @(
        title: 'Category',
        Common.Text : categoryTitle, 
        Common.TextArrangement : #TextOnly,
        Common.ValueListWithFixedValues: true,
        Common.ValueList : {
            CollectionPath: 'CarCategory',
            Parameters: [
                { $Type: 'Common.ValueListParameterInOut', LocalDataProperty: category_ID, ValueListProperty: 'ID' }
            ]
        }
    );
    availabilityStatus @(
        title: 'Status',
        Common.Text : statusName,
        Common.TextArrangement : #TextOnly,
        Common.ValueListWithFixedValues: true,
        Common.ValueList : {
            CollectionPath: 'AvailabilityStatus',
            Parameters: [
                { 
                    $Type: 'Common.ValueListParameterInOut', 
                    LocalDataProperty: availabilityStatus_code, 
                    ValueListProperty: 'code' 
                }
            ]
        },
        Common.Label : '{i18n>Status}',
    );
};

annotate service.Cars with {
    licensePlate @Common.Label : '{i18n>LicensePlate}'
};

annotate service.Cars with {
    yearOfManufacture @Common.Label : '{i18n>ManufactureYear}'
};

annotate service.CarCategory with {
    ID @Common.Text : {
        $value : title,
        ![@UI.TextArrangement] : #TextOnly
    }
};

annotate service.AvailabilityStatus with {
    code @Common.Text : {
        $value : name,
        ![@UI.TextArrangement] : #TextOnly
    }
};