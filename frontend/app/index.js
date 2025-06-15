const axios = require('axios');

async function main() {
  const response = await axios.post("http://<EC2_PUBLIC_IP>:5000/generate", {
    prompt: "Once upon a time"
  });
  console.log("Generated:", response.data.response);
}

main();
