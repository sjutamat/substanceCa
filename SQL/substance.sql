--Select data following Search Critiria for Accidental apparent opioid toxicity deaths
select * from Peyto.substanceharmsdata where 
Region ='Canada' and Specific_Measure='Overall numbers'
and Unit = 'Crude rate' and Substance = 'Opioids'
and Type_Event = 'Accidental apparent opioid toxicity deaths';

--Select data following Search Critiria for Total apparent opioid toxicity deaths
select * from Peyto.substanceharmsdata where 
Region ='Canada' and Specific_Measure='Overall numbers'
and Unit = 'Crude rate' and Substance = 'Opioids'
and Type_Event = 'Total apparent opioid toxicity deaths';

--Select data following Search Critiria for Total opioid-related poisoning hospitalizations.
--to check other conditions if they are more interesting.
--this could be the next phase of this analysis.

select * from Peyto.substanceharmsdata where 
Region ='Canada' and Specific_Measure='Overall numbers'
and Unit = 'Crude rate' and Substance = 'Opioids'
and Type_Event = 'Total opioid-related poisoning hospitalizations';


select * from Peyto.substanceharmsdata where Type_Event='Accidental opioid-related poisoning hospitalizations'; 


select Specific_Measure, Type_Event, Substance, count(*) from  Peyto.substanceharmsdata 
where Specific_Measure='Overall numbers' and Substance = 'Stimulants'
group by  Specific_Measure, Type_Event, Substance

select Specific_Measure, Type_Event, Substance, count(*) from Peyto.substanceharmsdata 
where Specific_Measure='Type of opioids' and Substance = 'Stimulants'
group by  Specific_Measure, Type_Event, Substance;
 
select Specific_Measure, count(*) from Peyto.substanceharmsdata
group by Specific_Measure;

 
select Disaggregator, count(*) from Peyto.substanceharmsdata 
where Specific_Measure='Type of stimulants' 
and Type_Event = 'Total apparent stimulant toxicity deaths'
group by Disaggregator;

select * from Peyto.substanceharmsdata where 
Region ='Canada' and Specific_Measure='Type of opioids'
and Unit = 'Crude rate' and Substance = 'Opioids'
and Type_Event = 'Total opioid-related poisoning hospitalizations';