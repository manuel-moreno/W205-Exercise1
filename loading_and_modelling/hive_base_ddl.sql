DROP TABLE hospital_gi;
CREATE EXTERNAL TABLE hospital_gi (ProviderID int,HospitalName string,Address string,City string,State string,ZIPCode string,CountyName string,PhoneNumber string,HospitalType string,HospitalOwnership string,EmergencyServices string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital_gi';

DROP TABLE hospital_tec;
CREATE EXTERNAL TABLE hospital_tec (ProviderID int,HospitalName string,Address string,City string,State string,ZIPCode string,CountyName string,PhoneNumber string,Condition string,MeasureID string,MeasureName string,Score double,Sample int,Footnote string,MeasureStartDate string,MeasureEndDate string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital_tec';

DROP TABLE hospital_rd;
CREATE EXTERNAL TABLE hospital_rd (ProviderID int,HospitalName string,Address string,City string,State string,ZIPCode string,CountyName string,PhoneNumber string,MeasureName string,MeasureID string,ComparedtoNational string,Denominator int,Score double,LowerEstimate double,HigherEstimate double,Footnote string,MeasureStartDate string,MeasureEndDate string)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital_rd';

DROP TABLE hospital_survey;
CREATE EXTERNAL TABLE hospital_survey (ProviderNumber int,HospitalName string,Address string,City string,State string,ZIPCode string,CountyName string,CommunicationwithNursesAchievementPoints string,CommunicationwithNursesImprovementPoints string,CommunicationwithNursesDimensionScore string,CommunicationwithDoctorsAchievementPoints string,CommunicationwithDoctorsImprovementPoints string,CommunicationwithDoctorsDimensionScore string,ResponsivenessofHospitalStaffAchievementPoints string,ResponsivenessofHospitalStaffImprovementPoints string,ResponsivenessofHospitalStaffDimensionScore string,PainManagementAchievementPoints string,PainManagementImprovementPoints string,PainManagementDimensionScore string,CommunicationaboutMedicinesAchievementPoints string,CommunicationaboutMedicinesImprovementPoints string,CommunicationaboutMedicinesDimensionScore string,CleanlinessandQuietnessofHospitalEnvironmentAchievementPoints string,CleanlinessandQuietnessofHospitalEnvironmentImprovementPoints string,CleanlinessandQuietnessofHospitalEnvironmentDimensionScore string,DischargeInformationAchievementPoints string,DischargeInformationImprovementPoints string,DischargeInformationDimensionScore string,OverallRatingofHospitalAchievementPoints string,OverallRatingofHospitalImprovementPoints string,OverallRatingofHospitalDimensionScore string,HCAHPSBaseScore int,HCAHPSConsistencyScore int)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/hospital_compare/hospital_survey';