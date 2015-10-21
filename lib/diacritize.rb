require "diacritize/version"

module Diacritize

  DIACRITS = { 'a' => ("\u00E0".."\u00E5").to_a,
               'c' => ["\u00E7"],
               'e' => ("\u00E8".."\u00EB").to_a,
               'i' => ("\u00EC".."\u00EF").to_a,
               'n' => ["\u00F1"],
	       'o' => ("\u00F2".."\u00F6").to_a + ["\u00F8"],
               'u' => ("\u00F9".."\u00FC").to_a,
               'y' => ["\u00FD", "\u00FF"],
               'A' => ("\u00C0".."\u00C5").to_a,
               'C' => ("\u00C8".."\u00CB").to_a,
               'D' => ["\u00D0"],
               'E' => ("\u00C8".."\u00CB").to_a,
               'I' => ("\u00CC".."\u00CF").to_a,
               'N' => ["\u00D1"],
               'O' => ("\u00D2".."\u00D6").to_a + ["\u00D8"],
               'U' => ("\u00D9".."\u00DC").to_a,
               'Y' => ["\u00DD"]
             }

  module_function

  # Replace English alphabet characters with
  # others that have diacritical marks.  Deterministic,
  # chooses the first available diacritical character from
  # each possible option.
  def diacritize(s)
    s.split("").each_with_index  do |c,i|
      s[i] = DIACRITS[c].first if !DIACRITS[c].nil?	
    end
    s
  end

  # Replace English alphabet characters with
  # others that have diacritical marks.  Randomly
  # chooses a diacritical character from
  # each possible option.
  def random_diacritize(s)
    s.split("").each_with_index  do |c,i|
      s[i] = DIACRITS[c].sample if !DIACRITS[c].nil?	
    end
    s	
  end

end
