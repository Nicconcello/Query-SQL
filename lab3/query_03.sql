--E3

SELECT 
    s.nome, 
    s.citta, 
    p.stagione, 
    SUM(CASE WHEN p.squadraCasa = s.nome AND p.golCasa > p.golTrasferta THEN 1 ELSE 0 END) as partiteVinteCasa,
    AVG(CASE WHEN p.squadraCasa = s.nome AND p.golCasa > p.golTrasferta THEN p.golCasa ELSE NULL END) as mediaGolVinteCasa
FROM squadra s 
JOIN partita p ON s.nome = p.squadraCasa OR s.nome = p.squadraTrasferta
GROUP BY s.nome, s.citta, p.stagione;
