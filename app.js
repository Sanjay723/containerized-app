const http = require("http");

const PORT = 3000;

const server = http.createServer((req, res) => {
    res.writeHead(200, { "Content-Type": "text/html" });

    res.end(`
        <h1>Containerized App</h1>
        <p>Hello from my Node.js application!</p>
        <p>Running inside Docker.</p>
    `);
});

server.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});
