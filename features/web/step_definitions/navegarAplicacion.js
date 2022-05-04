const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

Given('Ir a la aplicacion Ghost', async function () {
    return await this.driver.url('http://localhost:2368/ghost');
});
