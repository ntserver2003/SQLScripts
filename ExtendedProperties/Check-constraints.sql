SELECT 
'Check Constraint' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,CHK.name AS CheckConstraintName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.check_constraints CHK
 ON SEP.major_id = CHK.object_id 
 INNER JOIN sys.schemas SCH
 INNER JOIN sys.tables TBL
 ON SCH.schema_id = TBL.schema_id 
 ON CHK.parent_object_id = TBL.object_id