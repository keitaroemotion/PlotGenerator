#require './memo.rb'
require './memo.rb'

# category - content
#scribo "java", ["Hello java world", "this is", " Kei Sugano", " speaking. Roger."], Memo::memo_path
#scribo "foo", ["foobarfoo"], Memo::memo_path
#lego_tamquam_console "java", Memo::memo_path

Memo.scribo "java", ["Hello java world", "this is", " Kei Sugano", " speaking. Roger."]
Memo.scribo "foo", ["foobarfoo"]
Memo.lego_tamquam_console "java"
