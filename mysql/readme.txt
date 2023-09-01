STEPS

1. Abra a pasta mysql com o terminal;

2. Execute <docker build -t mysql .>;

3. Execute <docker run -d -p 3310:3306 --name mysql mysql>

4. Abra o dbeaver-ce;

5. Configure ou entre no banco:
    Server Host: localhost
    Port 3310
    Username: dev
    Password: dev
