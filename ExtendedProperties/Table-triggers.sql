SELECT 
'Table Trigger' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,TRG.name AS TRIGGER_NAME
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.tables TBL
 INNER JOIN sys.triggers TRG
 ON TBL.object_id = TRG.parent_id 
 INNER JOIN sys.extended_properties SEP
 ON TRG.object_id = SEP.major_id 
 INNER JOIN sys.schemas SCH
 ON TBL.schema_id = SCH.schema_id