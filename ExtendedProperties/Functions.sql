SELECT 
'Function' AS PropertyType
,SCH.name AS SchemaName
,SOB.name AS FunctionName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
FROM sys.extended_properties SEP
 INNER JOIN sys.objects SOB
 ON SEP.major_id = SOB.object_id 
 INNER JOIN sys.schemas SCH
 ON SOB.schema_id = SCH.schema_id 
WHERE SOB.type_desc LIKE N'%FUNCTION%' 
 AND SEP.minor_id = 0