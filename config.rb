require "active_record"
require "yaml"

db_config = YAML.safe_load(File.read("database.yml"), aliases: true)
ActiveRecord::Base.establish_connection(db_config["development"])
