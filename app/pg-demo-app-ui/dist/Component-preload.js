//@ui5-bundle nl/themuth/pgdemoappui/Component-preload.js
jQuery.sap.registerPreloadedModules({
"version":"2.0",
"modules":{
	"nl/themuth/pgdemoappui/Component.js":function(){sap.ui.define(["sap/fe/core/AppComponent"],function(e){"use strict";return e.extend("nl.themuth.pgdemoappui.Component",{metadata:{manifest:"json"}})});
},
	"nl/themuth/pgdemoappui/i18n/i18n.properties":'# This is the resource bundle for nl.themuth.pgdemoappui\r\n\r\n#Texts for manifest.json\r\n\r\n#XTIT: Application name\r\nappTitle=App Title\r\n\r\n#YDES: Application description\r\nappDescription=A Fiori application.\r\n\r\nflpTitle=Postgresql\r\n\r\nflpSubtitle=Demo\r\n',
	"nl/themuth/pgdemoappui/manifest.json":'{"_version":"1.49.0","sap.app":{"id":"nl.themuth.pgdemoappui","type":"application","i18n":"i18n/i18n.properties","applicationVersion":{"version":"0.0.1"},"title":"{{appTitle}}","description":"{{appDescription}}","resources":"resources.json","sourceTemplate":{"id":"@sap/generator-fiori:lrop","version":"1.9.7","toolsId":"00fdea97-0134-45f1-abaa-1ea15e1e7865"},"dataSources":{"mainService":{"uri":"catalog/","type":"OData","settings":{"annotations":[],"localUri":"localService/metadata.xml","odataVersion":"4.0"}}},"crossNavigation":{"inbounds":{"nl-themuth-pgdemoappui-inbound":{"signature":{"parameters":{},"additionalParameters":"allowed"},"semanticObject":"PgDemo","action":"manage","title":"{{flpTitle}}","subTitle":"{{flpSubtitle}}","icon":""}}}},"sap.ui":{"technology":"UI5","icons":{"icon":"","favIcon":"","phone":"","phone@2":"","tablet":"","tablet@2":""},"deviceTypes":{"desktop":true,"tablet":true,"phone":true}},"sap.ui5":{"flexEnabled":true,"dependencies":{"minUI5Version":"1.114.0","libs":{"sap.m":{},"sap.ui.core":{},"sap.ushell":{},"sap.fe.templates":{}}},"contentDensities":{"compact":true,"cozy":true},"models":{"i18n":{"type":"sap.ui.model.resource.ResourceModel","settings":{"bundleName":"nl.themuth.pgdemoappui.i18n.i18n"}},"":{"dataSource":"mainService","preload":true,"settings":{"synchronizationMode":"None","operationMode":"Server","autoExpandSelect":true,"earlyRequests":true}},"@i18n":{"type":"sap.ui.model.resource.ResourceModel","uri":"i18n/i18n.properties"}},"resources":{"css":[]},"routing":{"config":{},"routes":[{"pattern":":?query:","name":"ItemsList","target":"ItemsList"},{"pattern":"Items({key}):?query:","name":"ItemsObjectPage","target":"ItemsObjectPage"}],"targets":{"ItemsList":{"type":"Component","id":"ItemsList","name":"sap.fe.templates.ListReport","options":{"settings":{"entitySet":"Items","variantManagement":"Page","navigation":{"Items":{"detail":{"route":"ItemsObjectPage"}}}}}},"ItemsObjectPage":{"type":"Component","id":"ItemsObjectPage","name":"sap.fe.templates.ObjectPage","options":{"settings":{"editableHeaderContent":false,"entitySet":"Items"}}}}}},"sap.fiori":{"registrationIds":[],"archeType":"transactional"},"sap.cloud":{"public":true,"service":"pd-demo-approuter"}}'
}});
