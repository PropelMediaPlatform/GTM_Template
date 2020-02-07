___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Propel Media Pixel Conversion Tracking",
  "categories": ["CONVERSIONS", "ANALYTICS", "UTILITY"],
  "brand": {
    "id": "brand_dummy",
    "displayName": ""
  },
  "description": "Tracking template for registering conversion in the Propel Media Platform.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "trackingPixelID",
    "displayName": "Tracking ID",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "commission",
    "displayName": "commission",
    "simpleValueType": true,
    "defaultValue": 0
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const query = require('queryPermission');
const iframe = require('injectHiddenIframe');
const encodeUriComponent = require('encodeUriComponent');

if (data.trackingPixelID == '')
  data.gtmOnFailure();

const url = 'https://tracking.propelmedia.com/?id=' + encodeUriComponent(data.trackingPixelID) + '&fetch=2&value=' + encodeUriComponent(data.commission);
if (query('inject_hidden_iframe', url)) {
  iframe(url, data.gtmOnSuccess, data.gtmOnFailure);
} else {
  data.gtmOnFailure();
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_hidden_iframe",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://tracking.propelmedia.com/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 2/6/2020, 8:26:35 PM
