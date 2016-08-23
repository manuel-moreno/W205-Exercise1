select hp.providerID, h.providerName, sum(hp.procedureScore * hp.procedureSamples) as aggregateScore, 
sum(hp.procedureScore * hp.procedureSamples)/sum( hp.procedureSamples ) as averageScore 
from hosp_proc_measure hp join hospital h 
where h.providerID = hp.providerID 
group by hp.providerID, h.providerName order by averageScore
desc limit 10;
