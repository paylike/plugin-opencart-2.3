# Warning
This plugin is now deprecated in favor of [this new version](https://github.com/paylike/plugin-opencart-3).
Updating is backwards compatible so you can just use the new plugin to overwrite the old one and you will be able to continue where you left off with your transactions.


# OpenCart plugin for Paylike

This plugin is *not* developed or maintained by Paylike but kindly made
available by the community.

Released under the MIT license: https://opensource.org/licenses/MIT

You can also find information about the plugin here: https://paylike.io/plugins/opencart20

## Supported OpenCart versions

- 2.3

Last tested version: 2.3.0.2

## Prerequisites

- The plugin needs vQmod to function, you can read how to install it here: https://github.com/vqmod/vqmod/wiki/Installing-vQmod-on-OpenCart

## Installation

Once you have installed OpenCart, follow these simple steps:
1. Signup at [paylike.io](https://paylike.io) (it’s free)
1. Create a live account
1. Create an app key for your OpenCart website
1. Copy all the files inside the `upload` folder to the opencart folder, this will add files to the necessary folders. This should be done via ftp, or inside a file manager, for example the cpanel file manager.
2. Log in as administrator and click  "Extensions" from the top menu then "extension" then "payments" and install the Paylike plugin by clicking the `Install` link listed there.
3. Click the Edit Paylike button
4. Add the Public and App key that you can find in your Paylike account and enable the plugin

## Updating settings

Under the extension settings, you can:
 * Update the payment method text in the payment gateways list
 * Update the payment method description in the payment gateways list
 * Update the title that shows up in the payment popup
 * Update the popup description, choose whether you want to show the popup  (the cart contents will show up instead)
 * Add test/live keys
 * Set payment mode (test/live)
 * Change the capture type (Instant/Manual via Paylike Tool)


 ## How to capture / manage transactions

   - You can Capture/Refund/Void an order accessing edit mode from Admin panel -> Sales -> Orders and press Edit button from Actions table column (the orders can be also accessed at YOUR_DOMAIN_URL/admin/index.php?route=sale/order).
   - Go to `STEP 5. Totals` tab by pressing `Continue` button 4 times.
   - In `Paylike Tool` dropdown select field you can:

1. Capture
    * In Instant mode, the orders are captured automatically
    * In Delayed mode you can do this by selecting `Capture` and press 'Submit', then press 'Save'.
2. Refund
    * To Refund an order you can do this by selecting `Refund` and press 'Submit', then press 'Save'.
3. Void
    * To Void an order you can do this by selecting `Void` and press 'Submit', then press 'Save'.


## Available features

1. Capture
   * Opencart admin panel: full capture
   * Paylike admin panel: full/partial capture
2. Refund
   * Opencart admin panel: full/partial refund
   * Paylike admin panel: full/partial refund
3. Void
   * Opencart admin panel: full void
   * Paylike admin panel: full/partial void


## Changelog

#### 1.2.0:
* Updated js SDK to 10.js
* Updated logic to work with SDK v10 version

#### 1.0.4:
* Added logic to convert currency code to uppercase

#### 1.0.3:
* Updated to 6.js from 3.js

#### 1.0.2:
* Updated currencies support

#### 1.0.1:
* Code formatting, localization bugs fixed

#### 1.0.0:
* Initial version
