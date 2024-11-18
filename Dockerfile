# Usa a imagem base do Python 3.9
FROM python:3.9

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo de requisitos para o diretório de trabalho
COPY requirements.txt .

# Instala as dependências
RUN pip install -r requirements.txt

# Copia o restante do código para o container
COPY . .

# Expõe a porta 5000
EXPOSE 5000

# Define o comando para rodar o app
CMD ["python", "app.py"]