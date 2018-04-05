SELECT 
'View Trigger' AS PropertyType
,SCH.name AS SchemaName
,VIW.name AS TableName
,TRG.name AS TRIGGER_NAME
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
FROM sys.views VIW
 INNER JOIN sys.triggers TRG
 ON VIW.object_id = TRG.parent_id 
 INNER JOIN sys.extended_properties SEP
 ON TRG.object_id = SEP.major_id 
 INNER JOIN sys.schemas SCH
 ON VIW.schema_id = SCH.schema_id