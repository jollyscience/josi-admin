# Allows hubot to upgrade himself and reload scripts.
#
# upgrade|reboot|restart|power up|level up|learn.

module.exports = (robot) ->
  robot.respond /(upgrade|reboot|restart|power up|level up|learn)$/i, (msg) ->
    @exec = require('child_process').exec
    command = 'forever restart 0'

    @exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send stdout if stdout
      msg.send stderr if stderr

    command = 'forever restart 0'

    msg.send 'Goodbye, cruel world...      Hello. My name is O.B. I know kung fu.'
    @exec command, (error, stdout, stderr) ->
      msg.send error if error
      msg.send stdout if stdout
      msg.send stderr if stderr
