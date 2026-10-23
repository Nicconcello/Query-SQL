--E2

select i.codicee
from servizio s JOIN impiego i ON s.codice = i.codices
where s.tipologia = 'sicurezza'
except
select i.codicee 
from servizio s JOIN impiego i ON s.codice = i.codices
where s.tipologia = 'ristorazione'
