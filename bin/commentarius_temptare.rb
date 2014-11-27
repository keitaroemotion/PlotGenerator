#require './memo.rb'
require './commentarius.rb'

# category - content
#scribo "java", ["Hello java world", "this is", " Kei Sugano", " speaking. Roger."], Commentarius::memo_path
#scribo "foo", ["foobarfoo"], Commentarius::memo_path
#lego_tamquam_console "java", Commentarius::memo_path

Commentarius.scribo "java", ["Hello java world", "this is", " Kei Sugano", " speaking. Roger."]
Commentarius.scribo "foo", ["foobarfoo"]
Commentarius.lego_tamquam_console "java"
