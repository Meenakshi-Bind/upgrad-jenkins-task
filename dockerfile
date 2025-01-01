# Use the official Node.js Alpine base image
FROM node:16-alpine

# Create the application inline
RUN echo 'const http = require("http"); \
const PORT = 3000; \
const server = http.createServer((req, res) => { \
  res.writeHead(200, { "Content-Type": "text/plain" }); \
  res.end("Hello, World!\\n"); \
}); \
server.listen(PORT, () => { \
  console.log(`Server running at http://localhost:${PORT}/`); \
});' > app.js

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
