sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'nl/themuth/pgdemoappui/test/integration/FirstJourney',
		'nl/themuth/pgdemoappui/test/integration/pages/ItemsList',
		'nl/themuth/pgdemoappui/test/integration/pages/ItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ItemsList, ItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('nl/themuth/pgdemoappui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheItemsList: ItemsList,
					onTheItemsObjectPage: ItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);