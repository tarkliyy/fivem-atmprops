---@diagnostic disable: undefined-global

fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Tarkliyy <peachchziza@gmail.com>'
description 'ATM props spawner only client'
version '1.0.0'

lua54 'yes' --wtf is lua54 >.<

-- What to run
client_scripts {
    'client/client.lua',
    'config.lua'
}
