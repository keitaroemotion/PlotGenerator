# memo application

# > ./memo [operation] [category] [content:args[]]
# path: data/memo/

class Memo

  $ROOT = Dir.pwd
  $memo_path = "#{$ROOT}/../data/memo"

  def self.creoFile(file_destinatum)
    if !File.exist? file_destinatum
      f = File.new file_destinatum, "w"
      f.close
    end
  end

  # get target file
  def self.nanciscor_destinati_file(path, category)
    "#{path}/#{category}"
  end

  def self.scribo(category, contents)
    destinati_file = nanciscor_destinati_file $memo_path, category
    creoFile destinati_file
    f = File.open(destinati_file, "a")
    linea = ""
    contents.each{ |content|
      linea += content+" "
    }
    f.puts linea
    f.close
  end

  def self.scribo_header_corpus(content)
    def self.facto_line(content)
      (1..content.size).each{ |i|
        printf "-"
      }
    end
    facto_line content
    puts
    puts content
    facto_line content
    puts
  end

  # read_ as _
  def self.lego_tamquam_console(category)
    destinati_file = nanciscor_destinati_file $memo_path, category
    scribo_header_corpus destinati_file
    File.open(destinati_file, "r").each { |line|
      puts line
    }
  end

end

