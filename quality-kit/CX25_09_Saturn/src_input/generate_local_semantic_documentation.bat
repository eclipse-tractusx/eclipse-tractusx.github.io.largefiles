@echo off
rem execute in the directory of your local semantic model repository
rem adapt to local files
set samm_cli=C:\development\CX_QAX_Aspectmodels\samm-cli-2.9.9.jar

setlocal enabledelayedexpansion 

set model[0]=QualityCore
set modelspace_version[0]=io.catenax.shared.quality_core\1.0.0

set model[1]=QualityTask
set modelspace_version[1]=io.catenax.quality_task\3.0.0

set model[2]=ClaimData
set modelspace_version[2]=io.catenax.fleet.claim_data\3.0.0

set model[3]=DiagnosticData
set modelspace_version[3]=io.catenax.fleet.diagnostic_data\3.0.0

set model[4]=Vehicles
set modelspace_version[4]=io.catenax.fleet.vehicles\4.0.0

set model[5]=PartsAnalyses
set modelspace_version[5]=io.catenax.parts_analyses\4.0.0

set model[6]=ManufacturedPartsQualityInformation
set modelspace_version[6]=io.catenax.manufactured_parts_quality_information\3.0.0

set model[7]=QualityTaskAttachment
set modelspace_version[7]=io.catenax.quality_task_attachment\3.0.0

set model[8]=Report8D
set modelspace_version[8]=io.catenax.report_8d\1.0.0

set model[9]=WarrantyClaimRequest
set modelspace_version[9]=io.catenax.warranty_claim_request\1.0.0

set model[10]=WarrantyClaimRequestVerification
set modelspace_version[10]=io.catenax.warranty_request_verification\1.0.0

@echo off

rem check all models
for /l %%n in (0,1,10) do ( 
   echo !model[%%n]! validation
   java -jar %samm_cli% aspect !modelspace_version[%%n]!\!model[%%n]!.ttl validate
)

exit 0

rem now generate docu for all models
for /l %%n in (1,1,6) do ( 
   echo !model[%%n]! docu generation
   java -jar %samm_cli% aspect !modelspace_version[%%n]!\!model[%%n]!.ttl to html -o !modelspace_version[%%n]!\gen\!model[%%n]!.html
   java -jar %samm_cli% aspect !modelspace_version[%%n]!\!model[%%n]!.ttl to json -o !modelspace_version[%%n]!\gen\!model[%%n]!.json
   java -jar %samm_cli% aspect !modelspace_version[%%n]!\!model[%%n]!.ttl to schema -o !modelspace_version[%%n]!\gen\!model[%%n]!-schema.json
   java -jar %samm_cli% aspect !modelspace_version[%%n]!\!model[%%n]!.ttl to png -o !modelspace_version[%%n]!\gen\!model[%%n]!.png
)