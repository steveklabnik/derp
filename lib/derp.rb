class String
  def to_derp
    morse = {
      'a' => 'herpderp',
      'b' => 'derpherpherpherp',
      'c' => 'derpherpderpherp',
      'd' =>'derpherpherp',
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
    out = ""
    self.split(//).reverse.each do |c|
      out += morse[c] + " " unless morse[c].nil?
    end
    out.rstrip
  end
end
