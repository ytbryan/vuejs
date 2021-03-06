// Generated by Vue on Rails https://github.com/vueonrails/vueonrails
// To run this script, simply run `node ssr` 

var hypernova = require('hypernova/server');

hypernova({
  devMode: true,
  getComponent(name) {
    // Console.log("The component name is -> " + name)
    // Make sure you state the corresponding name correctly. In this case, 'component.js'
    if (name === 'component.js') {
      return require('./app/javascript/ssr/component.js')
    }
    return null;
  },
  port: 7777,
});
