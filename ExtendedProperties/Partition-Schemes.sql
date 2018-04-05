SELECT 
'Partition Scheme' AS PropertyType
,PSC.name AS PartitionSchemeName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition
FROM sys.extended_properties SEP
 INNER JOIN sys.partition_schemes PSC
 ON SEP.major_id = PSC.function_id