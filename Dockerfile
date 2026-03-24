FROM nginx:alpine

# Cria a pasta para armazenar os certificados
RUN mkdir -p /etc/nginx/ssl

# Copia os arquivos de configuração e certificados para o container 
COPY ./nginx/conf.d/default.conf /etc/nginx/nginx.conf
COPY ./nginx/nginx-selfsigned.crt /etc/nginx/ssl/
COPY ./nginx/nginx-selfsigned.key /etc/nginx/ssl/
COPY ./src/index.html /usr/share/nginx/html/