using JSON

a=2
b=2


function adder(x,y)
    plus = x+y  
end

result = adder(a,b)

response = JSON.json(Dict("routes" => result))

return response

