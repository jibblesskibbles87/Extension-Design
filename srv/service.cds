using { LeanSpec as my } from '../db/schema';

using LeanSpec from '../db/schema';

@path : 'service/LeanSpec'
service LeanSpecService
{
    entity Extensions as
        projection on my.Extensions
        {
            createdAt,
            createdBy,
            modifiedAt,
            modifiedBy,
            ExtensionID,
            Name,
            Short_Description,
            Long_Description,
            Process,
            Module,
            persona
        };

    annotate Extensions with @Aggregation.ApplySupported : 
    {
        $Type : 'Aggregation.ApplySupportedType',
        GroupableProperties :
        [
            Module
        ]
    };

    entity Persona as
        projection on my.Persona
        {
            *
        };
}

annotate LeanSpecService with @requires :
[
    'authenticated-user'
];
