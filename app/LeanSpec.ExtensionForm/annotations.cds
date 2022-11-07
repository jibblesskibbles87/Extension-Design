using LeanSpecService as service from '../../srv/service';

annotate service.Extensions with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Short_Description',
            Value : Short_Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Long_Description',
            Value : Long_Description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Process',
            Value : Process,
        },
        {
            $Type : 'UI.DataField',
            Value : Module,
            Label : 'Module',
        },
    ]
);
annotate service.Extensions with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Short_Description',
                Value : Short_Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Long_Description',
                Value : Long_Description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Process',
                Value : Process,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Security',
            ID : 'Security',
            Target : '@UI.FieldGroup#Security',
        },
    ]
);
annotate service.Extensions with @(
    UI.FieldGroup #Security : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : persona.Persona,
                Label : 'Persona',
            },{
                $Type : 'UI.DataField',
                Value : persona.Description,
                Label : 'Description',
            },{
                $Type : 'UI.DataField',
                Value : persona.LongDescription,
                Label : 'LongDescription',
            },{
                $Type : 'UI.DataField',
                Value : persona.extensions_ExtensionID,
                Label : 'extensions_ExtensionID',
            },{
                $Type : 'UI.DataField',
                Value : persona.EnterpriseBusinessRole,
                Label : 'EnterpriseBusinessRole',
            },{
                $Type : 'UI.DataField',
                Value : persona.ID,
                Label : 'ID',
            },],
    }
);