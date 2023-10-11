Olá! 

Aqui segue o projeto, em dbt (Data Build Tool), criado para realizar as análises do desafio da Bravium.

### Dashboard 

Visualização do Dashboard criado com as análises, clique [Aqui](https://lookerstudio.google.com/reporting/fbf8938e-5a0f-4be9-b1f2-643639475599)

### Utilizando o projeto na sua máquina

1. É necessário configurar um arquivo profile.yml, na pasta ~/.dbt, no seu computador, com suas informações e do seu conjunto de dados. Para instruções de como fazer isso, consulte a primeira bibliografia;
2. Edite o arquivo dbt_project.yml com as informações do seu projeto e profile;
3. Após isso, tente os seguintes comandos:
```
pip install dbt-bigquery
```
```
dbt deps
```
```
dbt seed
```
```
dbt run 
```
4. Em caso de erros, basta observar o erro retornado pela ferramenta e pesquisá-lo. Há informações e comunidade nas bibliografias abaixo.
  
### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
