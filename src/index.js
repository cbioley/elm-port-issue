const Elm = require('./Main');
const app = Elm.Main.embed(document.getElementById( 'main' ));

const { ports: { ask, answer } } = app;

ask.subscribe(function(val) {
  console.log('Elm sent: ', val);
  answer.send(42);
});
