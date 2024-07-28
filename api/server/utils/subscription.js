const BuilderJS = require('@builder6/builder6.js');

const baseId = process.env.B6_SUBSCRIPTIONS_BASE_ID;
const apiKey = process.env.B6_SUBSCRIPTIONS_API_KEY;
const subscription_name = process.env.B6_SUBSCRIPTIONS_NAME;

const bjs = new BuilderJS({ endpointUrl: 'https://api.builder6.com', apiKey });

const getSubscription = async function (key) {
  try {
    const base = bjs.base(baseId);
    const b6Id = `${subscription_name}/${key}`;
    return (await base('b6_subscriptions').find(b6Id)).fields;
  } catch (error) {
    return {};
  }
};

module.exports = {
  getSubscription,
};
