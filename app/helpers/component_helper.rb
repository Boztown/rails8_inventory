#!/usr/bin/ruby
module ComponentHelper
  def component(path, locals = {}, &block)
    full_path = Pathname.new("components") / path

    if block
      # Render the passed block within the current context and
      # store it in the `content` variable
      content = capture do
        block.call
      end

      # Call render but pass it a new block that yields just
      # the contents of the `content` variable
      render(full_path.to_s, locals) { content }
    else
      render(full_path.to_s, locals)
    end
  end
end
