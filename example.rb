require_relative 'main.rb'

log = Log4Bot::Main.new("%Y-%m-%d %H:%M:%S")


log.debug("Debug")
log.info("Info")
log.warn("Warn")
log.error("Error")
log.log("Log")
