import InitECandidate.Solver.MemSafe.Trie.Bmi
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Trie
namespace InitECandidate.Solver.MemSafe.BmiCost.ArrayBound
variable {σ : Type}
def countMax : Nat := (scratchEnd-heapBase)/16+1
theorem allocated_upper {p : Ptrs} (hp : p.Ordered) {a : Nat} (ha : p.Allocated a) :
 heapBase ≤ a ∧ a < scratchEnd := by
 rcases ha with h | h | h <;> simp only [Ptrs.Ordered] at hp <;> omega
theorem arr_bound {p : Ptrs} {m0 mm : Mem} {A N : BitVec 64} {Γ : Gam}
 (hp : p.Ordered) (h : ArrE p m0 A N Γ mm) : N.toNat ≤ countMax := by
 by_cases hn : N.toNat=0
 · rw [hn];exact Nat.zero_le _
 have hz : (0 : BitVec 64).toNat < N.toNat := by simpa using Nat.pos_of_ne_zero hn
 have ha := (h 0 hz).1.1
 have ha' : p.Allocated A.toNat := by simpa using ha
 obtain ⟨hAl,hAu⟩ := allocated_upper hp ha'
 let j : Nat := (scratchEnd-A.toNat)/16+1
 have hj : j ≤ countMax := by dsimp [j,countMax];omega
 by_contra hbad
 have hJ : j < N.toNat := by omega
 have hj64 : j < 2^64 := by dsimp [j,scratchEnd];omega
 let J : BitVec 64 := BitVec.ofNat 64 j
 have hJnat : J.toNat=j := by
  change j % 18446744073709551616 = j
  exact Nat.mod_eq_of_lt (by omega)
 have haddr : (A+J*16#64).toNat=A.toNat+j*16 := by
  have hb : A.toNat+j*16 < 2^64 := by dsimp [j,scratchEnd] at *;omega
  simp only [BitVec.toNat_add,BitVec.toNat_mul,hJnat]
  norm_num only [BitVec.toNat_ofNat,Nat.reducePow,Nat.reduceMod]
  rw [Nat.mod_eq_of_lt (by omega : j*16 < 18446744073709551616)]
  exact Nat.mod_eq_of_lt (by omega)
 have haJ := (allocated_upper hp (h J (by rw [hJnat];exact hJ)).1.1).2
 rw [haddr] at haJ
 dsimp [j] at haJ
 omega
#print axioms arr_bound
end InitECandidate.Solver.MemSafe.BmiCost.ArrayBound
