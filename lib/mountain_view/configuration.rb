module MountainView
  class Configuration
    attr_accessor :included_stylesheets
    attr_accessor :included_javascripts
    attr_reader :components_path

    def initialize
      @included_stylesheets = []
      @included_javascripts = []
    end

    def components_path=(path)
      @components_path = Pathname.new(path)
    end
  end
end
