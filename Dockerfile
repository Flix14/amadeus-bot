ARG NODE_VERSION=18.18.2-slim
FROM node:${NODE_VERSION} as base

ENV USER=amadeus

RUN apt-get update && \
    apt-get install -y --no-install-recommends python3 build-essential && \
    apt-get purge -y --auto-remove && \
    rm -rf /var/lib/apt/lists/*

RUN groupadd -r ${USER} && \
    useradd --create-home --home /home/amadeus -r -g ${USER} ${USER}

USER ${USER}
WORKDIR /home/amadeus

FROM base as build

COPY --chown=${USER}:${USER}  . .
RUN npm ci
RUN npm run build

RUN rm -rf node_modules && \
    npm ci --omit=dev

FROM node:${NODE_VERSION} as prod

COPY --chown=${USER}:${USER} package*.json ./
COPY --from=build --chown=${USER}:${USER} /home/amadeus/node_modules ./node_modules
COPY --from=build --chown=${USER}:${USER} /home/amadeus/dist ./dist

CMD [ "node", "./dist/index.js" ]