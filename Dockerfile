	#choisir une image de base et la version (le tag)
FROM node:21-alpine3.18

#on crée le répertoire app qui va creer notre appli et on navigue vers ce nouveau répertoire (mdkir + cd)
WORKDIR /app

#on copie tous les fichiers locaux vers le répertoire nouellment crée de l'image
COPY . . 

#On utilise yarn pour packager l'application node en se basant sur le descripteur ""package.json"
RUN yarn install --production


#On EXPOSE LE PORT 3000 (sur lequel tourne l'appli, cf.src/index)
EXPOSE 3000

#On dit à l'image quelle commande doit être exécutée au d"marrage d'un conteneur
CMD ["node","src/index.js"]
