#!/usr/bin/ruby
n=gets.to_i
h=Hash.new(0)
a=[]
n.times{|z|
  s=gets.split
  h[s[0]]+=s[1].to_i
  a<<s
}
m=h.values.max
h.each_key{|k| h[k]=(h[k]==m)?0:nil}

#re-read
a.each{|i|
  if h[i[0]]
    h[i[0]]+=i[1]
    if h[i[0]]>=m then puts i[0]; exit end
  end
}