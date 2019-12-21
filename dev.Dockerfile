FROM  node:alpine

WORKDIR '/usr/app/frontend'

COPY package.json .
RUN npm install 
COPY . .
RUN echo "PWD is: $PWD"

CMD ["npm", "run", "start"]
