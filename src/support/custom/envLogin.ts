/**
 * Use ENV variables to open URL for the demo page and login with the provided ENV credentials.
 */
import checkIfElementExists from '../lib/checkIfElementExists.js';

export default async () => {

    // set some constants to differentiate webdriver commands below
    const textCommand = 'setValue'
    const clickCommand = 'click'

    // get .env variables
    const url = process.env.DEMO_URL || '';
    const username = process.env.DEMO_USERNAME || '';
    const password = process.env.DEMO_PASSWORD || '';

    // open page and validate
    await browser.url(url);
    await checkIfElementExists('#user-name', false, 1);

    // form inputs and login click
    await $('#user-name')[textCommand](username);
    await $('#password')[textCommand](password);
    await $('#login-button')[clickCommand]();

};
