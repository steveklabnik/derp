class String
  Morse = {
    'a' => 'herpderp',
    'b' => 'derpherpherpherp',
    'c' => 'derpherpderpherp',
    'd' => 'derpherpherp',
    'e' => 'herp',
    'f' => 'herpherpderpherp',
    'g' => 'derpderpherp',
    'h' => 'herpherpherpherp',
    'i' => 'herpherp',
    'j' => 'herpderpderpderp',
    'k' => 'derpherpderp',
    'l' => 'herpderpherpherp',
    'm' => 'derpderp',
    'n' => 'derpherp',
    'o' => 'derpderpderp',
    'p' => 'herpderpderpherp',
    'q' => 'derpderpherpderp',
    'r' => 'herpderpherp',
    's' => 'herpherpherp',
    't' => 'derp',
    'u' => 'herpherpderp',
    'v' => 'herpherpherpderp',
    'w' => 'herpderpderp',
    'x' => 'derpherpherpderp',
    'y' => 'derpherpderpderp',
    'z' => 'derpderpherpherp',
    ' ' => '.'
  }

  def to_derp
    out = ""
    self.downcase.split(//).each do |c|
      out += Morse[c] + " " unless Morse[c].nil?
    end
    out.rstrip
  end

  def from_derp
    inverted = Morse.invert
    out = ""
    self.split.each do |w|
      out += inverted[w] + " " unless inverted[w].nil?
    end
    out.gsub!(/\s([a-z\s])/, '\1')
    out.rstrip
  end
end
