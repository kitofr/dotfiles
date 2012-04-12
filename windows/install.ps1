$cmd = "mklink /J ""$($profile.AllUsersCurrentHost)"" $($pwd)profile.ps1"
& cmd /c $cmd

Set-Alias ngen @(
    dir (join-path ${env:\windir} "Microsoft.NET\Framework") ngen.exe -recurse |
    sort -descending lastwritetime
    )[0].fullName
[appdomain]::currentdomain.getassemblies() | %{ngen $_.location}
