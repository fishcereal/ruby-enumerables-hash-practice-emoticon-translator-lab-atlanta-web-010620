# require modules here
require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  
emoticons[:get_meaning] = {}
emoticons[:get_emoticon] = {}
emoticons.each do |key,val|
    english_key = val[0]
    japanese_key = val[1] 

    if japanese_key != nil 
        emoticons[:get_meaning][japanese_key] = key
        emoticons[:get_emoticon][english_key] = key
    end

    # emoticons[:get_value] = val 
    
end
  
  return emoticons 
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end