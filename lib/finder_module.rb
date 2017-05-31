module Finder
  module ClassMethods
    def find_by_name(name)
      self.all.find do |as|
        as.name
      end
    end
  end
end
