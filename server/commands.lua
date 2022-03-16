ZRP.RegisterCommand('demo', {'user'}, function(zPlayer, args, showError)
  -- Podemos llamar un evento del cliente desde el zPlayer
  zPlayer.triggerEvent('chat:addMessage', {
    color = {0, 255, 0},
    multiline = true,
    args = {'Desde zPlayer', args.message}
  })

  -- O podemos hacerlo de la manera tradicional pasando el source
  TriggerClientEvent('chat:addMessage', zPlayer.source, {
    color = {0, 255, 0},
    multiline = true,
    args = {'Tradicional', args.message}
  })

end, false, {
  -- Descripción del comando
  help = 'Comando de demostración',
  -- Comprobar si coincide la cantidad de argumentos
  -- que recibimos con los que pedimos
  validate = false,
  -- Podemos obtener parámetros del comando especificando cuales son
  arguments = {{
    -- Nombre del argumento
    name = 'message',
    -- Descripción del argumento
    help = 'Mensaje a repetir',
    -- Tipo del argumento
    type = 'string'
  }}
})
