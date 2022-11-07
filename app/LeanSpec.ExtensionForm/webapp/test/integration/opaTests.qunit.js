sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'LeanSpec/ExtensionForm/test/integration/FirstJourney',
		'LeanSpec/ExtensionForm/test/integration/pages/ExtensionsList',
		'LeanSpec/ExtensionForm/test/integration/pages/ExtensionsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ExtensionsList, ExtensionsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('LeanSpec/ExtensionForm') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheExtensionsList: ExtensionsList,
					onTheExtensionsObjectPage: ExtensionsObjectPage
                }
            },
            opaJourney.run
        );
    }
);