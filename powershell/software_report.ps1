﻿gwmi -class win32_product -filter "vendor!='Microsoft Corporation'" |
    sort-object InstallDate |
    format-table Name, Vendor, Version, InstallDate
