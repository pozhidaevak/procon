#!/usr/bin/ruby
puts "#!/usr/bin/perl"
print "system(q#ruby -e '"
$<.each{|e|
	l=e.strip
	break if l=='__END__'
	print l.gsub("'",'"')+';' if !l.start_with?('#')
}
puts "'#)"