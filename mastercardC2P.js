const fetch = require('node-fetch');
const base64 = require('base-64');

let merchantId = 'SRCCHIPPAY';
let username = 'merchant.SRCCHIPPAY';
let password = 'fdb93d5ccb8a0249d01182fa760a5cc7';

let auth = 'Basic ' + base64.encode(username + ':' + password);

const createSessionURL = `https://test-gateway.mastercard.com/api/rest/version/58/merchant/${merchantId}/session`;

function myFunction(res) {
    console.log('Hello');
    return response;
}

let createSession = async () => {
    await fetch(createSessionURL, {
        method: 'POST',
        withCredentials: true,
        headers: {
            "Content-Type": "application/json",
            "Authorization": auth, 
        }
    }).then(res => {
        console.log(res.session.id);
        return res;
    })
}
let response = createSession();