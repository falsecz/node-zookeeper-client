zookeeper = require './lib/client'
# zk = zookeeper "localhost:2181"

# zk.create "/hera/brokers/broker", 123124, zk.ZOO_SEQUENCE | zk.ZOO_EPHEMERAL, (err, path) ->
# 	console.log arguments
#
# zk.getChildren "/hera/brokers", no, (err, childs) ->
# 	console.log arguments

# zk.volunteer "bender0000000000", (err, o) ->
# 	console.log arguments


module.exports = zookeeper
