FROM node:26-slim AS build
RUN npm install --global bun
WORKDIR /app
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile
COPY . .
ARG PR_PREVIEW=""
ENV PR_PREVIEW=$PR_PREVIEW
RUN bun run build

FROM nginx:1.29-alpine
COPY infra/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /app/dist /usr/share/nginx/html
USER nobody
CMD ["nginx", "-g", "daemon off;"]
