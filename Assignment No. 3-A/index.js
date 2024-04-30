const express = require('express');
const path = require('path');

const app = express();
const port = 3000;

// Serve static files from the 'public' directory
app.use(express.static(path.join(__dirname, 'public')));

// Define API endpoint to serve greeting message
app.get('/api/message', (req, res) => {
    // Customize the message here
    const message = { message: "Hello from the backend!" };
    res.json(message);
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});
