# crypt caesar
s = "fsdz{Fdhvdu_flskhu_lv_fodvvlfdo_flskhu}"
up=[*"A".."Z"]
down=[*"a".."z"]

ans=s.split("").each.map do |char|
  if up.include?(char)
    ((char.ord - "A".ord - 3) % 26 + "A".ord).chr
  elsif down.include?(char)
    ((char.ord - "a".ord - 3) % 26 + "a".ord).chr
  else
    char
  end
end

puts ans.join
