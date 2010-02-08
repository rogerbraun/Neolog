require "db.rb"

file = File.open("entries_index.csv")

file.each_line do |line| 
  if not Word.get(line.gsub('"','')) then
    word = Word.new
    word.lemma=line.gsub('"','')
    word.save
  end
end
