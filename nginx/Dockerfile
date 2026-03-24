FROM nginx:alpine

# Cria a pasta para armazenar os certificados
RUN mkdir -p /etc/nginx/ssl

# Copia os arquivos de configuração e certificados para o container 
COPY ./conf.d/default.conf /etc/nginx/nginx.conf
COPY ../nginx-selfsigned.crt /etc/nginx/ssl/
COPY ../nginx-selfsigned.key /etc/nginx/ssl/
COPY ../src/index.html /usr/share/nginx/html/