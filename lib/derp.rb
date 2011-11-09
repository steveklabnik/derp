# This is the source code for the 'derp' gem.
#
# This gem is mostly silly. It's more of a 'hello world' kind
# of gem; I really wanted to try out this particular stack, and so
# it serves as an example of sorts in building a gem with minitest,
# bundler, watchr, etc.
#
# As far as functionality goes, this gem monkeypatches `String` to add
# a `to_derp` method, and a `from_derp` method. These encode the given
# string in a form of morse code, using herp and derp for long and short.
#
# I told you it was dumb.

# What's a gem without a monkeypatch?
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

  # This method converts a string to a derp string. Not to be confused
  # with a BenString, the derp string is simply a `String` with only
  # 'herp' and 'derp' in it.
  def to_derp
    out = ""
    self.downcase.split(//).each do |c|
      out += Morse[c] + " " unless Morse[c].nil?
    end
    out.rstrip
  end

  # The inverse of `to_derp`, `from_derp` turns a derp string back into a
  # normal `String`.
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
