--E5

select a.nome, p.stagione, count(CASE WHEN p.golCasa > p.golTrasferta and s.regione = a.regioneSezioneAIA THEN 1 ELSE 0 END)
from arbitro a JOIN partita p ON a.codice = p.arbitro JOIN squadra s ON s.nome = p.squadraCasa
group by a.nome, p.stagione
