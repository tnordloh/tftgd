module Blog
  module Models
    class NotFound < StandardError; end

    autoload :Post,   'app/models/post'
    autoload :Author, 'app/models/author'
  end
end
