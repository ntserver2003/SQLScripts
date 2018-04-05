SELECT 
'Partition Function' AS PropertyType
,PFN.name AS PartitionFunctionName
,SEP.name AS DescriptionType
,SEP.value AS DescriptionDefinition 
FROM sys.extended_properties SEP
 INNER JOIN sys.partition_functions PFN
 ON SEP.major_id = PFN.function_id