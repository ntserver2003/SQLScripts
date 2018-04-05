SELECT 
'View Index' AS PropertyType
,SCH.name AS SchemaName
,VIW.name AS ViewName
,SIX.name AS IndexName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.indexes SIX
 INNER JOIN sys.extended_properties SEP
 ON SIX.object_id = SEP.major_id 
 AND SIX.index_id = SEP.minor_id 
 INNER JOIN sys.views VIW
 INNER JOIN sys.schemas SCH
 ON VIW.schema_id = SCH.schema_id 
 ON SIX.object_id = VIW.object_id 
WHERE SEP.class_desc = N'INDEX' 