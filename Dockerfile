FROM emscripten/emsdk:latest

WORKDIR /app

COPY main.cpp .

CMD ["emcc", "main.cpp", "-s", "EXPORTED_FUNCTIONS=['_add']", "-s", "EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']", "-s", "ALLOW_MEMORY_GROWTH=1", "-O2", "-o", "main.js"]
