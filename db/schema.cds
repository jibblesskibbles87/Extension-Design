namespace LeanSpec;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity Extensions : managed
{
    key ExtensionID : UUID
        @Core.Computed;
    Name : String(30) not null;
    Short_Description : String(100);
    Long_Description : LargeString;
    Process : Process not null;
    Module : Module not null;
    persona : Association to many Persona on persona.extensions = $self;
}

entity Persona
{
    key ID : UUID
        @Core.Computed;
    key Persona : String(100);
    key EnterpriseBusinessRole : String(100);
    Description : String(30);
    LongDescription : LargeString;
    extensions : Association to one Extensions;
}

type Module : String enum
{
    Finance;
    MaterialsManagement = 'Materials Management';
    AssetManagement = 'Asset Management';
    SalesAndDistribution = 'Sales and Distribution';
}

type Process : String enum
{
    L1 = 'Level 1 Global process';
    L2 = 'Level 2 Process';
    L3 = 'Level 3 Subprocess';
}
