## Projeto Final da Disciplina "Bancos de dados Avançado", do prof. Wuldson Franco

### Resumo

Para este projeto, inicialmente foi criado um container no docker para subir um banco de dados PostgreSQL e uma aplicação em Python. Em seguida, criei um script em python de webscraping, que utilizou a biblioteca Selenium para raspar dados do site da NBA, trazendo informações sobre os jogadores líderes de temporada, das últimas 20 temporadas, resultando em um dataframe de mais de 4.000 linhas. Foi criado então um script para fazer o envio desse dataframe para o banco PostgreSQL, no qual foi criada uma tabela correspondente e, em seguida, aplicados alguns dos conceitos de SQL vistos em sala de aula: análises exploratórias, CTEs, Views e Triggers.

## Tecnologias utilizadas

- Docker;
- Python (com as bibliotecas pandas, selenium, sqlalchemy, psycopg2);
- PostgreSQL;
- DBeaver.
