STEPS

1. Abra a pasta grafana com o terminal;

2. Execute <docker build -t grafana .>;

3. Execute <docker run -d -p 3001:3001 --name grafana -v grafana-storage:/var/lib/grafana grafana/grafana-enterprise grafana/grafana>
