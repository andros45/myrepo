# search_files - a simple grep. Called as ... 
# search_files ("struct", "*.h") 
sub search_files { 
	my ($pattern, $filepattern) = @_; 
	local (@ARGV) = glob($filepattern); # ARGV used here
	return unless (@ARGV); 
	while (<>) { 
		if (/$pattern/o) { 
			print "$ARGV\[$.\]: $_";
		} 
	} 
}
