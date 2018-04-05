SELECT 
'DDL Trigger' AS PropertyType
,TRG.name AS DDLTriggerNAme
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.triggers TRG
 ON SEP.major_id = TRG.object_id
WHERE TRG.parent_class_desc = N'DATABASE'