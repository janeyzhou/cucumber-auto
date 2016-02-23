$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__)))
require 'env'

def load_files(files_array)
  files_array.each do |file|
    if (!$LOADED_FEATURES.include? file) && (__FILE__ != file)
      load file
    end
  end
end


load_files Dir[File.join(File.dirname(__FILE__), '*.rb')]

load_files Dir[File.join(File.dirname(__FILE__),'..', 'pages', '*.rb')]

