FROM node:16

ENV PORT=5000
ENV INSTANCE_NAME="XYZ"
ENV INSTANCE_HASH="WAWA"

WORKDIR /

COPY dov-bear/javascript/ ./
RUN npm install

HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 \
    CMD curl -f http://localhost:${PORT} || exit 1

EXPOSE $PORT
CMD ["node", "main.js", \
    "--name", "WHAT IS MY NAME?"]

