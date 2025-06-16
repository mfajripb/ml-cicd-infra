const axios = require('axios');

async function main() {
  const response = await axios.post("http://3.91.200.135:5000/generate", {
    prompt: "Once upon a time"
  });
  console.log("Generated:", response.data.response);
}

main();
