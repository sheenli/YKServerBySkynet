﻿---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Administrator.
--- DateTime: 2018/8/20 0:24
---
local skynet      = require "skynet"
local service     = require "service_base"
local serviceNames = require("serviceNames")
local command = service.command


function command.init()
end

function service.onStart()
    skynet.register(serviceNames.test)
end

service.modules.test = require("impl")
service.start()
