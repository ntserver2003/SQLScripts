SELECT 
'Foreign Key' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,SFK.name AS ForeignKeyName 
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.foreign_keys SFK
 ON SEP.major_id = SFK.object_id 
 INNER JOIN sys.tables TBL
 ON SFK.parent_object_id = TBL.object_id 
 INNER JOIN sys.schemas SCH
 ON TBL.schema_id = SCH.schema_id