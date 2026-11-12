import InitECandidate.Solver.MemSafe.Rcpt.Util

set_option autoImplicit false

/-!
# `encode_logs`: the environment and the loop invariants

`Env M D Lg`: the entry memory `M` of `encode_logs(D, Lg)`; the output `[D, D + 9 + S)`,
`S = Sk M Lg N`, ends below `heapEnd`, and every cell the code reads (`PCc`) lies outside it.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

/-- The cells `encode_logs` and `logs_encoded_bound` read. -/
def PCc (M : Mem) (Lg : BitVec 64) (c : BitVec 64) : Prop :=
  (∃ k, (k = 0 ∨ k = 8) ∧ c = Lg + BitVec.ofNat 64 k) ∨
    ∃ i, i < lgN M Lg ∧ (c = lgArr M Lg i ∨
      ∃ k, (k = 0 ∨ k = 8 ∨ k = 16 ∨ k = 24 ∨ k = 32) ∧ c = lgRec M Lg i + BitVec.ofNat 64 k)

structure Env (M : Mem) (D Lg : BitVec 64) : Prop where
  hE : D.toNat + 9 + Sk M Lg (lgN M Lg) ≤ heapEnd
  hP : ∀ c, PCc M Lg c → Prot D.toNat (9 + Sk M Lg (lgN M Lg)) c

theorem sk_succ (M : Mem) (Lg : BitVec 64) (i : Nat) :
    Sk M Lg (i + 1) = Sk M Lg i + 64 + 33 * lgNt M Lg i + lgDn M Lg i := by
  simp only [Sk, lgWb]
  omega

theorem env_hdr {M : Mem} {D Lg : BitVec 64} (h : Env M D Lg) {k : Nat} (hk : k = 0 ∨ k = 8) :
    Prot D.toNat (9 + Sk M Lg (lgN M Lg)) (Lg + BitVec.ofNat 64 k) :=
  h.hP _ (Or.inl ⟨k, hk, rfl⟩)

theorem env_arr {M : Mem} {D Lg : BitVec 64} (h : Env M D Lg) {i : Nat} (hi : i < lgN M Lg) :
    Prot D.toNat (9 + Sk M Lg (lgN M Lg)) (lgArr M Lg i) :=
  h.hP _ (Or.inr ⟨i, hi, Or.inl rfl⟩)

theorem env_rec {M : Mem} {D Lg : BitVec 64} (h : Env M D Lg) {i : Nat} (hi : i < lgN M Lg) {k : Nat}
    (hk : k = 0 ∨ k = 8 ∨ k = 16 ∨ k = 24 ∨ k = 32) :
    Prot D.toNat (9 + Sk M Lg (lgN M Lg)) (lgRec M Lg i + BitVec.ofNat 64 k) :=
  h.hP _ (Or.inr ⟨i, hi, Or.inr ⟨k, hk, rfl⟩⟩)

/-! ## Invariants -/

variable (D Lg : BitVec 64) (M : Mem)

def JO (i Q : Nat) (m : Locals) : Prop :=
  LB m dN D ∧ LB m logsN Lg ∧ LW m nN (lgN M Lg) ∧ LB m Aw.pN (lgP M Lg) ∧ LW m qN Q ∧ LW m iN i ∧
    i ≤ lgN M Lg ∧ D.toNat + 9 ≤ Q ∧ Q ≤ D.toNat + 9 + Sk M Lg i

/-- Inside iteration `i`, after `r = q + 9 + 21`. -/
def J3 (i Q : Nat) (m : Locals) : Prop :=
  JO D Lg M i Q m ∧ LB m logN (lgRec M Lg i) ∧ LW m rN (Q + 30) ∧ i < lgN M Lg

/-- The topics loop. -/
def JI (i Q j : Nat) (m : Locals) : Prop :=
  J3 D Lg M i Q m ∧ LW m tsN (Q + 30) ∧ LW m tN (Q + 39 + 33 * j) ∧ LW m ntN (lgNt M Lg i) ∧
    LW m jN j ∧ j ≤ lgNt M Lg i

end InitECandidate.Solver.MemSafe.Rcpt
