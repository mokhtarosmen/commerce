# 1. On part d'une image de base : un serveur web léger (Nginx)
FROM nginx:alpine

# 2. On indique à Docker de copier tous les fichiers de notre projet
# dans le dossier que Nginx utilise pour afficher les sites web
COPY . /usr/share/nginx/html

# 3. On ouvre le port 80 (le port standard pour le web)
EXPOSE 80

# 4. On lance le serveur Nginx
CMD ["nginx", "-g", "daemon off;"]
