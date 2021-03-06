﻿SELECT 
'Table Index' AS PropertyType
,SCH.name AS SchemaName
,TBL.name AS TableName
,SIX.name AS IndexName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.indexes SIX
 INNER JOIN sys.extended_properties SEP
 ON SIX.object_id = SEP.major_id 
 AND SIX.index_id = SEP.minor_id 
 INNER JOIN sys.tables TBL
 INNER JOIN sys.schemas SCH
 ON TBL.schema_id = SCH.schema_id 
 ON SIX.object_id = TBL.object_id 
WHERE SEP.class_desc = N'INDEX' 
 AND SIX.is_primary_key = 0