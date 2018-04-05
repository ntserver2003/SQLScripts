SELECT 
'Procedure Parameter' AS PropertyType
,SCH.name AS SchemaName
,SPR.name AS ProcedureName
,sys.parameters.name AS ParameterName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition

FROM sys.extended_properties SEP
 INNER JOIN sys.procedures SPR
 ON SEP.major_id = SPR.object_id 
 INNER JOIN sys.schemas SCH
 ON SPR.schema_id = SCH.schema_id 
 INNER JOIN sys.parameters 
 ON SEP.major_id = sys.parameters.object_id 
 AND SEP.minor_id = sys.parameters.parameter_id

WHERE SEP.class_desc = N'PARAMETER'