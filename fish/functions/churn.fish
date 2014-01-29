function churn
	git log --all -M -C --name-only --format='format:' $argv | sort | grep -v '^$' | uniq -c | sort | awk 'BEGIN {print "count\tfile"} {print $1 "\t" $2}' | sort -g
end
