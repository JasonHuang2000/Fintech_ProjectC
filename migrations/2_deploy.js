// migrations/2_deploy.js
// SPDX-License-Identifier: MIT
const myContract = artifacts.require("B08902049");

module.exports = function(deployer) {
  deployer.deploy(myContract);
};
