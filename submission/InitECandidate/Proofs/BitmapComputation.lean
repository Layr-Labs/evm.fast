import InitECandidate.Proofs.BootstrapMemory

set_option autoImplicit false

namespace InitECandidate.Proofs.BitmapComputation
open InitE

def wordBytes (w : BitVec 64) : List (BitVec 8) :=
  (List.range 8).map (wordByte w)

def bytes (words : List (BitVec 64)) : List (BitVec 8) := words.flatMap wordBytes

theorem bytes_length (words : List (BitVec 64)) : (bytes words).length = 8 * words.length := by
  induction words with
  | nil => simp [bytes]
  | cons w ws ih =>
    change (wordBytes w ++ bytes ws).length = _
    simp only [List.length_append, wordBytes, List.length_map, List.length_range, ih,
      List.length_cons]
    omega

theorem bytes_getElem? (words : List (BitVec 64)) (i : Nat) (hi : i < 8 * words.length) :
    (bytes words)[i]? = some (wordByte (words[i / 8]?.getD 0) (i % 8)) := by
  induction words generalizing i with
  | nil => simp at hi
  | cons w ws ih =>
    change (wordBytes w ++ bytes ws)[i]? = _
    rw [List.getElem?_append]
    simp only [wordBytes, List.length_map, List.length_range]
    split
    · rename_i h
      have hd : i / 8 = 0 := by omega
      have hm : i % 8 = i := Nat.mod_eq_of_lt h
      simp only [List.getElem?_map, List.getElem?_range h, Option.map_some,
        hd, List.getElem?_cons_zero, Option.getD_some, hm]
    · rename_i h
      have hd : i / 8 = (i - 8) / 8 + 1 := by omega
      have hm : i % 8 = (i - 8) % 8 := by omega
      have hb : i - 8 < 8 * ws.length := by
        simp only [List.length_cons] at hi
        omega
      rw [ih (i - 8) hb, hd, hm, List.getElem?_cons_succ]

theorem range_bytes_eq (words : List (BitVec 64)) :
    (List.range (8 * words.length)).map
      (fun offset => wordByte (words[offset / 8]?.getD 0) (offset % 8)) = bytes words := by
  apply List.ext_getElem?
  intro i
  by_cases hi : i < 8 * words.length
  · rw [List.getElem?_map, List.getElem?_range hi, Option.map_some, bytes_getElem? words i hi]
  · have hleft : (List.range (8 * words.length))[i]? = none :=
      List.getElem?_eq_none (by simpa using (Nat.le_of_not_lt hi))
    have hright : (bytes words)[i]? = none :=
      List.getElem?_eq_none (by simpa only [bytes_length] using (Nat.le_of_not_lt hi))
    simp only [List.getElem?_map, hleft, Option.map_none, hright]

#print axioms range_bytes_eq
end InitECandidate.Proofs.BitmapComputation
