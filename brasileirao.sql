USE brasileirao_db;

# 1 - Qual a importância do fator casa para o resultado dos jogos?
SELECT
	COUNT(*) AS total_jogos,
    
    # Analisando a porcentagem de vitória dos mandantes
    SUM(CASE WHEN gols_mandante > gols_visitante THEN 1 ELSE 0 END) AS vitorias_mandante,
    ROUND(SUM(CASE WHEN gols_mandante > gols_visitante THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) as porcentagem_vitoria_mandante,
    
    # Analisando a porcentagem de vitórias dos visitantes
    SUM(CASE WHEN gols_visitante > gols_mandante THEN 1 ELSE 0 END) AS vitorias_visitantes,
    ROUND(SUM(CASE WHEN gols_visitante > gols_mandante THEN 1 ELSE 0 END) * 100.0 / COUNT(*),2) AS porcentagem_vitoria_visitante,
    
    # Analisando a porcentagem de empates
    SUM(CASE WHEN gols_visitante = gols_mandante THEN 1 ELSE 0 END) AS empates,
    ROUND(SUM(CASE WHEN gols_visitante = gols_mandante THEN 1 ELSE 0 END),2) AS porcentagem_empates

FROM partidas;
    
    # A porcentagem de vitórias dos mandantes é praticamente o dobro dos visitantes,
    # indicando que o fator casa é um grande aliado da vitória.
    
# 2 Quais são os times mais goleadores no campeonato jogando como mandante?

SELECT mandante, SUM(gols_mandante) AS total_gols_mandante
FROM partidas
GROUP BY mandante
ORDER BY total_gols_mandante DESC
LIMIT 5;
		
        # Flamengo, Santos, Atlético-MG, Gremio e Palmeiras possuem os ataques mais fulminantes dentro de casa
	
# 3 - E jogando fora de casa?
SELECT visitante, SUM(gols_visitante) AS total_gols_visitante
FROM partidas
GROUP BY visitante
ORDER BY total_gols_visitante DESC
LIMIT 5;

	# Flamengo, São Paulo, Palmeiras, Atlético-MG e FLuminense são os visitantes mais indigestos
    