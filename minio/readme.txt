STEPS

1. Abra o terminal dentro da pasta minio;

2. Execute o comando <docker build -t minio .>

3. Execute o comando <docker run -d -p 9000:9000 --name minio --network rede_teste minio>

4. Abra o endereço da S3-API no log do container.

5. Entre com o login:
    Username: link.dev
    Password: 12345678
