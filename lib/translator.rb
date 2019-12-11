# require modules here
require 'yaml'

def load_library(path)
  emoticons = YAML.load_file(path)
  
  
new_hash = {}
new_hash[:get_meaning] = {}
new_hash[:get_emoticon] = {}
emoticons.each do |key,val|
    english_key = val[0]
    japanese_key = val[1] 
    if japanese_key != nil 
        new_hash[:get_meaning][japanese_key] = key
        new_hash[:get_emoticon][english_key] = japanese_key
    end
  end
  return new_hash
end


def get_japanese_emoticon(yaml_path,emoticon) 
  array = load_library(yaml_path) 
  
  # code goes here
end

def get_english_meaning
  # code goes here
end