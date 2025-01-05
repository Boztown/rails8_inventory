module ComponentHelper
  def component(path, options = {}, &block)
    full_path = Pathname.new("components") / path
    render(full_path.to_s, options)
  end
end
