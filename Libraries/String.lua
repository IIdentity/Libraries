local String = {}
local Chars = {}
("ABCDEFGHIJKLMENOPQRSTUVWXYZabcdefghijklmenopqrstuvwxyz1234567890"):gsub(".",function(a)table.insert(Chars,a)end)

function String:toBytes(a)
 return a:gsub(".",function(b)return"\\"..b:byte()end)
end

function String:toByteTable(a)
 local b = {}
 a:gsub(".",function(c)table.insert(b,c:byte())end)
 return b
end

function String:toCharTable(a)
 local b = {}
 a:gsub(".",function(c)table.insert(b,c)end)
 return b
end

function String:randomString(a)
 local b = ""
 for i = 1, a do b = b .. Chars[math.random(1, #Chars)]
 return b
end

return String
