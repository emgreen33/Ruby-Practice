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