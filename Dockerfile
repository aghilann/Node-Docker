FROM node:15
WORKDIR /app
COPY package.json .
RUN npm install
COPY . ./
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "dev"]
# docker run -v %cd%:/app -v /app/node_modules --env PORT=4000 -p 3000:4000 -d --name node-app node-app-image