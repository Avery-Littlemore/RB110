arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

arr.map! do |el|
  inc_hash = {}
  el.map do |k,v|
  inc_hash[k] = v + 1
  end
  inc_hash
end

p arr