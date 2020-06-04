resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

client_scripts {
    '@warmenu/warmenu.lua',
    'client/msq-cl.lua',
    'client/menu.lua',
    'config/config.lua'
}

server_scripts {
    'server/server.lua',
    'config/config.lua'
}

dependency 'warmenu'
