def triangle_type(a,b,c)
    x,y,z = ([a,b,c]).sort
    if x + y <= z
      0
    elsif x*x + y*y == z*z
      2
    elsif x*x + y*y > z*z
      1
    elsif x*x + y*y < z*z
      3
    end
end


puts triangle_type(7,3,2)	# 0  # Not triangle
puts triangle_type(2,4,6) #0)  # Not triangle
puts triangle_type(8,5,7)#, 1)  # Acute
puts triangle_type(3,4,5)#, 2)  # Right
puts triangle_type(7,12,8)#, 3) # Obtuse

def list(names)
  return '' if names.empty?
  
  names = names.map do |names|
     names[:name]
  end
  if names.one? 
     "#{names.first}"
  else
    "#{names[0...-1].join(', ')} & #{names.last}" 
  end
end