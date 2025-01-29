const { GoogleAssistant } = require("google-assistant");
const path = require("path");

const assistant = new GoogleAssistant({
  keyFilePath: path.resolve(__dirname, "path/to/your/credentials.json"),
});

assistant
  .query("Turn off the living room lights")
  .then(response => console.log(response))
  .catch(error => console.error(error));