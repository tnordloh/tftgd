require 'pathname'

module Blog
  module Models
    class Post < ActiveRecord::Base
      belongs_to :author
    end
  end
end
