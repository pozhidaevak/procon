#!/usr/bin/ruby
puts "using System.Runtime.InteropServices;"
puts "class CSCompiler{"
puts "[DllImport(\"msvcrt\",CallingConvention=CallingConvention.Cdecl)]static extern int system(string s);"
print "static void Main(){system(\"ruby -e '"
$<.each{|e|
	l=e.strip
	break if l=='__END__'
	print l.gsub('"','\"').gsub("'",'\"')+';' if !l.start_with?('#')
}
puts "'\");}}"