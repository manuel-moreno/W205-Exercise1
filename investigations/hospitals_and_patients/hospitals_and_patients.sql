select * from (select providerID,
row_number() over (order by sum(procedureScore * procedureSamples)/sum( procedureSamples ) desc) as ProcRank
from hosp_proc_measure hp
group by providerID) as x join
(select providerID, row_number() over (Order BY ProviderBase desc) from survey) as y
on x.providerID = y.providerID;
