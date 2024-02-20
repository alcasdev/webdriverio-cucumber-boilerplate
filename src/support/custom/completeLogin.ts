/**
 * Open the given URL for the demo page and login with the provided credentials.
 * @param  {String}   page The URL to navigate to
 * @param  {String}   username The username for the login form
 * @param  {String}   password The password for the login form
 */
import checkIfElementExists from '../lib/checkIfElementExists.js';

export default async (page: string, username: string, password: string ) => {
    /**
     * The URL for the demo page, username and password for the login form.
     * @type {String}
     */

    // set some constants to differentiate webdriver commands below in lines 24-26
    const textCommand = 'setValue'
    const clickCommand = 'click'

    // open page and validate
    await browser.url(page);
    await checkIfElementExists('#user-name', false, 1);

    // form inputs and login click
    await $('#user-name')[textCommand](username);
    await $('#password')[textCommand](password);
    await $('#login-button')[clickCommand]();

};
