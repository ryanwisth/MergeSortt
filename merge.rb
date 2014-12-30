#!/usr/bin/env ruby

a = [50,50,2222,3,6666,26,5555,222,3333,555, 739, 39222, 39484,333322,525155,2433211,52535, 17]
b = Array.new
c = Array.new
count2 = 0




d = 1
q = a.length
r = 2
z = 1
while q > r
r = 2  ** z
z +=1
end
e = z -1





while count2 < e
count = 0
count1 = 0
a = a.each_slice(d).to_a
x = a[0].length * 2
y = a.length/2
while count < a.length
	while count1 < x

			if a[count] == nil and a[count+1] == nil
			elsif a[count+1] == nil
				b.push(a[count])
				a.delete_at(count)
			elsif a[count][0] == nil
				b.push(a[count+1][0])
				a[count+1].delete_at(0)
			elsif a[count+1][0] == nil
				b.push(a[count][0])
				a[count].delete_at(0)
			elsif a[count][0] == a[count+1][0]
				b.push(a[count][0])
				b.push(a[count+1][0])
				a[count].delete_at(0)
				a[count+1].delete_at(0)
			elsif a[count][0] > a[count+1][0]
				b.push(a[count+1][0])
				a[count+1].delete_at(0)
			elsif a[count][0] < a[count+1][0]
				b.push(a[count][0])
				a[count].delete_at(0)
			else
				end
					count1+=1
					end
						count+=2
						count1 = 0
						end

			b.delete(nil)
a = b
b = Array.new
a = a.flatten
d = d * 2
count2+=1
end
puts a