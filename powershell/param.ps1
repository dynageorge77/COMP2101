 param([Parameter(Mandatory=$true,
                    position=1,
                    ValueFromPipeline=$true,
                    ValueFromPipelineByPropertyName=$true)]$objectName) ($objectName.GetType()) |
       Format-list Fullname, Name
 