local HttpService = game:GetService("HttpService")
local http_request = syn.request or http.request or http_request
local Http = {}
function Http:request(a)
	return http_request(a)
end
return Http
