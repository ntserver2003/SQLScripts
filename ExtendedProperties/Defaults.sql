SELECT 
'Default' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,SDC.name AS DefaultConstraintName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.default_constraints SDC
 INNER JOIN sys.schemas SCH
 INNER JOIN sys.tables TBL
 ON SCH.schema_id = TBL.schema_id 
 ON SDC.parent_object_id = TBL.object_id 
 INNER JOIN sys.extended_properties SEP
 ON SDC.object_id = SEP.major_id