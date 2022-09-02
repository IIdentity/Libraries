local HttpService = game:GetService("HttpService")
local http_request = (syn and syn.request) or (http and http.request) or http_request
local Http = {}
function Http:decode(stuff)
    local stuff = stuff or {}
    HttpService:JSONDecode(stuff.Stuff)
end
function Http:encode(stuff)
    local stuff = stuff or {}
    HttpService:JSONEncode(stuff.Stuff)
end
function Http:load(url)
    local url = url or {}
    loadstring(game:HttpGet(url.Url))()
end
function Http:request(url)
    local url = url or {}
    return http_request({
        Url = url.Url,
        Method = "GET"
    })
end
function Http:post(info)
    local info = info or {}
    local url = info.Url
    local headers = info.Headers
    return http_request({
        Url = url,
        Headers = headers,
        Method = "POST"
    })
end
