SELECT *
FROM sys.filegroups fg
LEFT OUTER JOIN 
sysfilegroups sfg
ON fg.name = sfg.groupname
LEFT OUTER JOIN 
sysfiles f
ON sfg.groupid = f.groupid
LEFT OUTER JOIN 
sys.indexes i
ON fg.data_space_id = i.data_space_id
WHERE i.object_id IS NULL

--

SELECT groupid,
       name
FROM   dbo.sysindexes
WHERE  groupid= 4
ORDER  BY  groupid,
            namE


-- ALTER PARTITION SCHEME [partSch_DateMonth_DailyTbls]  NEXT USED