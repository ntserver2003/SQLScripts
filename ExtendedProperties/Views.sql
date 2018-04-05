SELECT 
'View' AS PropertyType
,SCH.name AS SchemaName
,VIW.name AS ViewName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
FROM sys.extended_properties SEP
 INNER JOIN sys.views VIW
 ON SEP.major_id = VIW.object_id 
 INNER JOIN sys.schemas SCH
 ON VIW.schema_id = SCH.schema_id 
WHERE SEP.minor_id = 0