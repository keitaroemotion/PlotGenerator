#
#   In[]  =>  Process => Out[] (Console)
#
# In 1. interactive 2. file

# Interactive
#
# Char registration
#
# > char add john
# ===> +john
#
#
# 'ki ... ex)
#  >  ki john hooks up mary
#  ===> |ki| #john |hooks up| #mary
# 'so ...
# 'ten ...
# 'ke ...


# Show

# Individual-Based
#
# john  => |ki| hooks up mary
#          |so| go to school
#          |ten| fight with #enemy
#          |ke| win enemy

class Fabula

  $CHARACTER = "char"
  $ROOT = Dir.pwd

  # id


  def self.add_tag(text)
    chars = get_characters
    puts chars
    get_id
  end

  def self.get_characters()
    f = get_file $CHARACTER, "r"
    chars = f.each_line.to_a
    f.close
    chars
  end

  def self.overwrite_id(id)
    f = File.open("#{$ROOT}/id", "w")
    f.puts id
    f.close
  end

  def self.get_id()
    f = File.open("#{$ROOT}/id", "r")
    id = f.each_line.to_a
    if (id.size == 0 || id[0].strip == "")
      abort "id file is blanc"
    end
    f.close
    id[0].chomp
  end

  def self.getRootDir()
    dir = "#{$ROOT}/../data/#{get_id}/"
    if !Dir.exist? dir
      require 'fileutils'
      FileUtils::mkdir_p dir
    end
    dir
  end

  def self.get_file(file, op)
    file = "#{getRootDir}#{file.chomp}"
    guaranteeFileExistence file
    File.open(file, op)
  end

  def self.guaranteeFileExistence(file)
    if !File.exist? file
      tmp = File.new file, "w"
      tmp.close
    end
    file
  end

  def self.add(file, content)
    # char only
    chars = get_characters
    f = get_file file, "a"
    if !chars.include? "#{content}\n"
      f.puts content
    end
    f.close
  end

  def self.delete(file, content)
    f = get_file file, "r"
    new_file = Array.new
    f.each_line { |c|
      if c.chomp != content
        new_file.push c
      end
    }
    f.close
    f = get_file file, "w"
    new_file.each{ |c|
      f.puts c
    }
    f.close
  end

  def self.operate(input)
    if input.size < 3
      abort  "argument size is too short"
    end
    case input[1]
    when "add"
      add(input[0], input[2])
    when "delete"
      delete(input[0], input[2])
    end
  end

  def self.read_input(input)
    if input.size == 0
      abort "you need argument"
    end
    operate(input)
  end

end
