import Guest.Basic

namespace Guest

/-- The eight little-endian bytes of a word. -/
def leBytes (w : Word) : List UInt8 :=
  (List.range 8).map fun i => UInt8.ofNat ((w.toNat / 256 ^ i) % 256)

/-- The word whose little-endian bytes are `bytes` (missing high bytes zero). -/
def wordOfLeBytes (bytes : List UInt8) : Word :=
  BitVec.ofNat 64 (bytes.foldr (fun byte acc => acc * 256 + byte.toNat) 0)

/-- The little-endian words packed in `bytes`; a trailing partial word is dropped. -/
def wordsOfLeBytes : List UInt8 → List Word
  | b0 :: b1 :: b2 :: b3 :: b4 :: b5 :: b6 :: b7 :: rest =>
      wordOfLeBytes [b0, b1, b2, b3, b4, b5, b6, b7] :: wordsOfLeBytes rest
  | _ => []

/-- The little-endian bytes of a list of words. -/
def leBytesOfWords (words : List Word) : List UInt8 :=
  words.flatMap leBytes

end Guest
