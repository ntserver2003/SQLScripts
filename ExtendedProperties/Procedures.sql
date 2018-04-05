SELECT 
'Procedure' AS PropertyType
,SCH.name AS SchemaName
,PRC.name AS ProcedureName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.procedures PRC
 ON SEP.major_id = PRC.object_id 
 INNER JOIN sys.schemas SCH
 ON PRC.schema_id = SCH.schema_id 
WHERE SEP.minor_id = 0