#!/usr/bin/env crystal
l=gets.not_nil!.to_i
gets
a=gets.not_nil!.split.map(&.to_i).sort
s=i=0
while i<a.size&&s+a[i]<=l
	s+=a[i]
	i+=1
end
p i