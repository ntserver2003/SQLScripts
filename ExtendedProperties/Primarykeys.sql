SELECT 
'Primary Key' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,SKC.name AS PrimaryKeyName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
,TBL.object_id AS TableObjectID
,SKC.object_id AS SubObjectID 
FROM sys.tables TBL
 INNER JOIN sys.schemas SCH
 ON TBL.schema_id = SCH.schema_id 
 INNER JOIN sys.extended_properties SEP
 INNER JOIN sys.key_constraints SKC
 ON SEP.major_id = SKC.object_id 
 ON TBL.object_id = SKC.parent_object_id 
WHERE SKC.type_desc = N'PRIMARY_KEY_CONSTRAINT'
