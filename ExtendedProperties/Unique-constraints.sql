SELECT 
'Unique Constraint' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,SKC.name AS UniqueConstraintName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.tables TBL
 INNER JOIN sys.schemas SCH
 ON TBL.schema_id = SCH.schema_id 
 INNER JOIN sys.extended_properties SEP
 INNER JOIN sys.key_constraints SKC
 ON SEP.major_id = SKC.object_id 
 ON TBL.object_id = SKC.parent_object_id 
WHERE SKC.type_desc = N'UNIQUE_CONSTRAINT'
 AND (SEP.value <> '1' AND SEP.value <> 1)