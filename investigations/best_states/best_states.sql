select h.providerState, avg(hhp.averageScore) as stateAvg 
from hospital as h join (select hp.providerID, 
sum(hp.procedureScore * hp.procedureSamples)/sum(hp.procedureSamples) as averageScore from hosp_proc_measure hp 
group by hp.providerID) as hhp 
where h.providerID = hhp.providerID group by h.providerState
order by stateAvg desc limit 10;