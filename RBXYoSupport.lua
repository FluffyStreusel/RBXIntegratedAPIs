--[[
  Yo! App API support for ROBLOX
]]

local httpService = game:GetService'HttpService'
local apiBase = "http://api.justyo.co"
local apiToken = "" -- Your API token
local yoData = {}

function clearExistingData()
  yoData = nil
  wait()
  yoData = {}
end

function yo(username)
  clearExistingData()
  yoData["api_token"] = apiToken
  yoData["username"] = username
  jsonYoData = httpService:JSONEncode(yoData)
  httpService:PostAsync(apiBase .. "/yo/", jsonYoData)
end

--yo("user")
