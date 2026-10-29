import InitECandidate.Proofs.BootstrapMemory
import InitECandidate.Proofs.CompactComputation

/-! Proved access shortcuts keep byte checks from expanding the full image. -/
set_option autoImplicit false

namespace InitECandidate.Proofs.ImageComputation
open InitE
open Flapjack

/-- The prefix before the last ROM suffix chunk. Keeping its checked length
separate avoids traversing these bytes again for each final-word lookup. -/
def suffixLeadingBytes : List (BitVec 8) :=
  [InitECandidate.suffix000, InitECandidate.suffix001, InitECandidate.suffix002,
   InitECandidate.suffix003, InitECandidate.suffix004, InitECandidate.suffix005,
   InitECandidate.suffix006, InitECandidate.suffix007, InitECandidate.suffix008,
   InitECandidate.suffix009].flatten

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
private theorem suffixLeadingBytes_length : suffixLeadingBytes.length = 40960 := by
  kernel_rfl

private theorem suffix_split :
    InitECandidate.suffix = suffixLeadingBytes ++ InitECandidate.suffix010 := by
  simp only [InitECandidate.suffix, suffixLeadingBytes, List.flatten_cons,
    List.flatten_nil, List.append_nil, List.append_assoc]

theorem suffix_getElem?_eq (i : Nat) :
    InitECandidate.suffix[i]? =
      if i < 40960 then suffixLeadingBytes[i]?
      else InitECandidate.suffix010[i - 40960]? := by
  rw [suffix_split, List.getElem?_append, suffixLeadingBytes_length]

theorem code_getElem?_eq (i : Nat) :
    InitECandidate.code[i]? =
      if i < 983348 then
        if i < 4208 then InitECandidate.bootPrefix[i]?
        else InitECandidate.nativeCode[i - 4208]?
      else InitECandidate.suffix[i - 983348]? := by
  simp only [InitECandidate.code, List.getElem?_append, List.length_append,
    LiteralFacts.bootPrefix_length, LiteralFacts.nativeCode_length]

theorem initialMemory_eq (a : BitVec 64) :
    initialMemory a =
      if initialPc ≤ a.toNat ∧ a.toNat < initialPc + 1028080 then
        (if a.toNat - initialPc < 983348 then
          if a.toNat - initialPc < 4208 then InitECandidate.bootPrefix[a.toNat - initialPc]?
          else InitECandidate.nativeCode[a.toNat - initialPc - 4208]?
        else InitECandidate.suffix[a.toNat - initialPc - 983348]?).getD 0
      else 0 := by
  simp only [initialMemory, LiteralFacts.code_length, code_getElem?_eq]

attribute [scoped cbv_eval] initialMemory_eq
end InitECandidate.Proofs.ImageComputation
