function prompt {	
	$machine = ([System.Environment]::MachineName.ToLower())
	$username = ([System.Environment]::UserName.ToLower())
	$who = "$($username)@$($machine) "
	$location = "$(convert-path $pwd)"
	$gitBranch = ""
	git branch | foreach {
		if ($_ -match "^\*(.*)"){
			$gitBranch = $matches[1]
		}
	}

	Write-Host ("[") -nonewline
	Write-Host ($who) -nonewline -foregroundcolor yellow
	Write-Host ($location) -nonewline
	if($gitBranch) {
		Write-Host ($gitBranch) -nonewline -foregroundcolor green
	}
	Write-Host ("] @ ") -nonewline
	Write-Host (Get-Date)
	Write-Host (">") -nonewline
	return " "
}

Set-Alias l ls
Set-Alias .. cd..

function trunk { cd "c:\Work\Cint\main" }
function kitofr { cd "c:\Work\kitofr" }
