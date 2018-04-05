SELECT 
'Function Parameter' AS PropertyType
,SCH.name AS SchemaName
,OBJ.name AS ProcedureName
,PRM.name AS ParameterName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.objects OBJ
 ON SEP.major_id = OBJ.object_id 
 INNER JOIN sys.schemas SCH
 ON OBJ.schema_id = SCH.schema_id 
 INNER JOIN sys.parameters PRM
 ON SEP.major_id = PRM.object_id 
 AND SEP.minor_id = PRM.parameter_id 
WHERE SEP.class_desc = N'PARAMETER'
 AND OBJ.type IN ('FN', 'IF', 'TF') 