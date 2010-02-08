require "dm-core"
require "do_sqlite3"

DataMapper.setup(:default,"sqlite3://#{Dir.pwd}/db/wordlist.db")

class Word
  include DataMapper::Resource
  property :lemma, String, :key => true
end

DataMapper.auto_migrate!
