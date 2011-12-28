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
    ' ' => '.',
    '1' => 'herpherpderpderp',
    '2' => 'herpderpherpderp',
    '3' => 'derpderpderpderp',
    '4' => 'derpherpherpherpderp',
    '5' => 'derpderpderpderpderp',
    '6' => 'derpherpherpherpherp',
    '7' => 'herpderpderpderpderp',
    '8' => 'herpherpherpherpherp',
    '9' => 'derpherpherpderpderp',
    '0' => 'herpherpderpderpherp'
  }

  # This method converts a string to a derp string. Not to be confused
  # with a BenString, the derp string is simply a `String` with only
  # 'herp' and 'derp' in it.
  def to_derp
    self.downcase.split(//).collect do |c|
      Morse[c] + " " unless Morse[c].nil?
    end.join.rstrip
  end

  # The inverse of `to_derp`, `from_derp` turns a derp string back into a
  # normal `String`.
  def from_derp
    inverted = Morse.invert
    self.split.collect do |w|
      inverted[w] + " " unless inverted[w].nil?
    end.join.gsub(/\s([a-z\s])/, '\1').rstrip
  end
end
