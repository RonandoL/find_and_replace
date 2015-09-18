class String
  define_method(:find_and_replace) do |target, replacement|
    string = self

    if string.include?(target)
      string.gsub!(target, replacement)
    else
      string
    end

    if string.include?(target.capitalize)
      string.gsub!(target.capitalize, replacement.capitalize!)
    else
      string
    end
  end
end
