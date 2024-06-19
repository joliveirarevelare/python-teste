# Usar uma imagem base oficial do Python
FROM python:3.9-slim as build

# Definir o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copiar os arquivos de requisitos para o contêiner
COPY requirements.txt requirements.txt

# Instalar as dependências
RUN pip install -r requirements.txt

# Copiar o código da aplicação para o contêiner
COPY app.py app.py

# Expor a porta que a aplicação irá rodar
EXPOSE 80

# Comando para rodar a aplicação
CMD ["python", "app.py"]