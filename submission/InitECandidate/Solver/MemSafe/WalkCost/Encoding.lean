import InitECandidate.Solver.MemSafe.WalkCost.Cost
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.WalkCost
variable {width : Nat}
def InReadImage (M : Nat) (read : Nat → Option (BitVec width)) (v : BitVec width) : Prop :=
 ∃ a, a < M ∧ read a = some v
noncomputable def imageEncoding (M : Nat) (read : Nat → Option (BitVec width)) (v : BitVec width) : Nat := by
 classical
 exact if h : InReadImage M read v then Nat.find h else M + v.toNat

theorem imageEncoding_lt (M : Nat) (read : Nat → Option (BitVec width)) (v : BitVec width)
 (h : InReadImage M read v) : imageEncoding M read v < M := by
 classical
 simp only [imageEncoding,dif_pos h]
 exact (Nat.find_spec h).1

theorem imageEncoding_inj (M : Nat) (read : Nat → Option (BitVec width)) :
 Function.Injective (imageEncoding M read) := by
 classical
 intro u v he
 by_cases hu : InReadImage M read u
 · by_cases hv : InReadImage M read v
   · simp only [imageEncoding,dif_pos hu,dif_pos hv] at he
     have eu := (Nat.find_spec hu).2
     have ev := (Nat.find_spec hv).2
     rw [he] at eu
     exact Option.some.inj (eu.symm.trans ev)
   · have hh := imageEncoding_lt M read u hu
     simp only [imageEncoding,dif_pos hu,dif_neg hv] at he
     simp only [imageEncoding,dif_pos hu] at hh
     omega
 · by_cases hv : InReadImage M read v
   · have hh := imageEncoding_lt M read v hv
     simp only [imageEncoding,dif_neg hu,dif_pos hv] at he
     simp only [imageEncoding,dif_pos hv] at hh
     omega
   · simp only [imageEncoding,dif_neg hu,dif_neg hv] at he
     exact BitVec.eq_of_toNat_eq (by omega)
#print axioms imageEncoding_inj
end InitECandidate.Solver.MemSafe.WalkCost
