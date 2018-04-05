SELECT 
'View Column' AS PropertyType
,SCH.name AS SchemaName
,VIW.name AS ViewName
,COL.name AS ColumnName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
FROM sys.extended_properties SEP
 INNER JOIN sys.columns COL
 ON SEP.major_id = COL.object_id 
 AND SEP.minor_id = COL.column_id 
 INNER JOIN sys.views VIW
 ON SEP.major_id = VIW.object_id 
 INNER JOIN sys.schemas SCH
 ON VIW.schema_id = SCH.schema_id
WHERE SEP.class = 1
 AND (SEP.value <> '1' AND SEP.value <> 1)