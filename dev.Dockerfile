FROM  node:alpine

WORKDIR /app

COPY package.json .
RUN npm install 
COPY . .
RUN echo "PWD is: $PWD"

CMD ["npm", "run", "start"]
