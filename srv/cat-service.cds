using firecsbfr as my from '../db/data-model';

service CatalogService {
    entity Items as projection on my.Item order by companyCode asc;
    annotate Items with @odata.draft.enabled;
    entity ChangeLogs as projection on my.ChangeLog order by createdAt;
}

annotate CatalogService.Items with {
    companyCode @(title:'{i18n>companyCode}')
}

annotate CatalogService.Items with @(UI: {
    HeaderInfo      : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>TypeName}',
        TypeNamePlural: '{i18n>TypeNamePlural}'
    },
    SelectionFields : [companyCode],
    LineItem        : [
        {
            $Type: 'UI.DataField',
            Value: companyCode,
            Label: '{i18n>companyCode}'
        },
        {
            $Type: 'UI.DataField',
            Value: branch,
            Label: '{i18n>branch}'
        },
        {
            $Type: 'UI.DataField',
            Value: article,
            Label: '{i18n>article}'
        },
        {
            $Type: 'UI.DataField',
            Value: lineText,
            Label: '{i18n>lineText}'
        },
        {
            $Type: 'UI.DataField',
            Value: startDate,
            Label: '{i18n>startDate}'
        },
        {
            $Type: 'UI.DataField',
            Value: endDate,
            Label: '{i18n>endDate}'
        },
        {
            $Type: 'UI.DataField',
            Value: amountPerWeek,
            Label: '{i18n>amountPerWeek}'
        }
    ],
    Facets          : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>info}',
            Target: '@UI.FieldGroup#Info'
        },
    ],
    FieldGroup #Info: {Data: [
        {
            $Type: 'UI.DataField',
            Value: companyCode,
            Label: '{i18n>companyCode}'
        },
        {
            $Type: 'UI.DataField',
            Value: branch,
            Label: '{i18n>branch}'
        },
        {
            $Type: 'UI.DataField',
            Value: article,
            Label: '{i18n>article}'
        },
        {
            $Type: 'UI.DataField',
            Value: lineText,
            Label: '{i18n>lineText}'
        },
        {
            $Type: 'UI.DataField',
            Value: startDate,
            Label: '{i18n>startDate}'
        },
        {
            $Type: 'UI.DataField',
            Value: endDate,
            Label: '{i18n>endDate}'
        },
        {
            $Type: 'UI.DataField',
            Value: amountPerWeek,
            Label: '{i18n>amountPerWeek}'
        }
    ]}
});

annotate CatalogService.ChangeLogs with @(UI: {
    HeaderInfo      : {
        $Type         : 'UI.HeaderInfoType',
        TypeName      : '{i18n>TypeNameChangeLog}',
        TypeNamePlural: '{i18n>TypeNamePluralChangeLog}'
    },
    LineItem        : [
        {
            $Type: 'UI.DataField',
            Value: action,
            Label: '{i18n>action}'
        },
        {
            $Type: 'UI.DataField',
            Value: createdBy,
            Label: '{i18n>createdBy}'
        },
        {
            $Type: 'UI.DataField',
            Value: keys,
            Label: '{i18n>keys}'
        },
        {
            $Type: 'UI.DataField',
            Value: fromValue,
            Label: '{i18n>fromValue}'
        },
        {
            $Type: 'UI.DataField',
            Value: toValue,
            Label: '{i18n>toValue}'
        }
    ],
    Facets          : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>info}',
            Target: '@UI.FieldGroup#Info'
        },
    ],
    FieldGroup #Info: {Data: [
       {
            $Type: 'UI.DataField',
            Value: action,
            Label: '{i18n>action}'
        },
        {
            $Type: 'UI.DataField',
            Value: createdBy,
            Label: '{i18n>createdBy}'
        },
        {
            $Type: 'UI.DataField',
            Value: keys,
            Label: '{i18n>keys}'
        },
        {
            $Type: 'UI.DataField',
            Value: fromValue,
            Label: '{i18n>fromValue}'
        },
        {
            $Type: 'UI.DataField',
            Value: toValue,
            Label: '{i18n>toValue}'
        }
    ]}
});