--E1

select p.stagione, p.squadraCasa, p.squadraTrasferta, p.golCasa, p.golTrasferta, a.nome
from partita p JOIN arbitro a ON p.arbitro = a.codice
where a.regioneSezioneAIA = 'Lazio'
