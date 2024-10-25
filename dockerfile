# Utilisation d'une image de base avec Python préinstallé
FROM python:3.9-slim

# Nous allons Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Nous allons copier le fichier requirements.txt dans le conteneur
COPY requirements.txt requirements.txt

# Nous allons installer les dépendances Python
RUN pip install --no-cache-dir -r requirements.txt

# Nous permet de Copier tout le code du projet dans le conteneur
COPY . .

# permet d'exposer le port 5000 sur lequel Flask va tourner
EXPOSE 5000

# Commande qui exécuter pour démarrer notre application Flask
CMD ["python", "app.py"]
