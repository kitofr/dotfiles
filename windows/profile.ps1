$psProfileHome = [System.IO.Path]::GetDirectoryName($profile.AllUsersCurrentHost)

function prompt {	
	$machine = ([System.Environment]::MachineName.ToLower())
	$username = ([System.Environment]::UserName.ToLower())
	$who = "$($username)@$($machine) "
	$location = "$(convert-path $pwd)"
	$gitBranch = ""
	$color = "yellow"
	git branch -v --no-color | foreach {
		if ($_ -match "^\* (\(no branch\)|\S+)(?:.*\[ahead (\d+)\])?"){
			$gitBranch = " " + $matches[1]
			if($matches[2]){
				$gitBranch += "(+$($matches[2]))"
			}
			if((git status --porcelain)) {
				$color = "red"
			}
		}
	}

	Write-Host ("[") -nonewline
	Write-Host ($who) -nonewline
	Write-Host ($location) -nonewline
	if($gitBranch) {
		Write-Host ($gitBranch) -nonewline -foregroundcolor $color
	}
	Write-Host ("]")
	Write-Host (">") -nonewline
	return " "
}

Set-Alias l ls
Set-Alias .. cd..

function trunk { cd "c:\code\work\main" }
function kitofr { cd "c:\code\kitofr" }
function csa { cd "c:\code\work\main\src\web.cpx.csa\content" }
