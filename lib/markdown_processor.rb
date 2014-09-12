module MarkdownProcessor

  # Place a string inside <h1> tags ONLY IF it starts with a "#"
  #
  # string - the String to be manipulated
  #
  # Example:
  #
  # convert_to_h1("#hello")
  #   => '"<h1>hello</h1>"
  #
  # Returns the initial string, minus the "#", wrapped in an <h1> tag
  def self.convert_to_h1(string)
    split_string = string.split(//)
    if split_string[0] == "#"
      split_string.shift
      "<h1>#{split_string.join}</h1>"
    else
      string
    end
    
  end

end