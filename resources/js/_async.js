
const fetch = require('node-fetch');

fetch('https://dka-develop.ru/api?type=city')
    .then(res => res.json())
    .then(json => console.log(json));
/*
async function getJs() {
    let response = await fetch('https://dka-develop.ru/api?type=hashtag');
    return response;
}
console.log(getJs());
*/