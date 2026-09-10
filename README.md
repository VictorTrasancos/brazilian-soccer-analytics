# Análise de Dados do Campeonato Brasileiro 

Projeto de análise de dados exploratória do Campeonato Brasileiro utilizando **SQL (MySQL)** para  extração de métricas  e **Python (Pandas, SQLAlchemy e Matplotlib)** para a conexão com o banco e visualização gráfica.

##  Tecnologias Utilizadas
* **MySQL / SQL Workbench:** Modelagem de dados, consultas e estruturação do banco (`brasileirao_db`).
* **Python:** Linguagem base para automação e integração.
* **Pandas:** Manipulação e estruturação de DataFrames.
* **Matplotlib:** Geração de gráficos e visualização de dados.

##  Principais Análises Realizadas via SQL
O projeto responde a perguntas estratégicas e históricas sobre o campeonato:
1. **Fator Casa:** Análise percentual comparando o aproveitamento de mandantes, visitantes e empates.
2. **Ataques Mais Goleadores:** Identificação dos clubes com maior volume ofensivo jogando em casa e fora.
3. **Dominância Estadual:** Mapeamento dos estados que acumulam mais vitórias na competição.
4. **Rei dos Clássicos:** Cruzamento histórico de vitórias em confrontos diretos entre rivais do mesmo estado
5. **Classificação Histórica Geral:** Tabela acumulada simulando a pontuação oficial dos clubes ao longo das temporadas.

##  Visualizações Gráficas (Python)
O repositório inclui scripts que trazem duas principais perspectivas visuais trazidas do banco de dados:
* **Gráfico de Pizza:** Ilustra o impacto do **Fator Casa** no histórico geral do campeonato.
* **Gráfico de Barras:** Apresenta o ranking do **Top 20 Clubes** com mais pontos acumulados na história do dataset.

##  Como Executar o Projeto
1. Certifique-se de ter o **MySQL** rodando na sua máquina.
2. Configure a sua conexão com o banco `brasileirao_db` utilizando o SQLAlchemy no seu Jupyter Notebook.
3. Execute as consultas SQL para extração dos dados ou utilize os scripts em Python para popular o banco e gerar os gráficos.
