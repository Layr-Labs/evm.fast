import InitECandidate.Solver.Compiler.StackPasses
import InitECandidate.Solver.Compiler.WordToStack
import InitECandidate.Solver.Compiler.CrepToLoop
import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.CrepKernelComputation

/-!
# Concrete program side conditions: bounds and Boolean checkers

The explicit bounds `crepS`, `wordS`, `stackS` are the exact maxima of the node counts of the
baseline's concrete programs (computed offline, then proved below the bound by kernel-checked
Boolean evaluation, shard by shard, in `Concrete/{Crep,Word,Stack,Flat}/…`):

* `crepS = 14860`: `CrepToLoop.csize` over the crep program `FrontendStages.pass3`
  (maximum at entry `90`, `Crep.output90`);
* `wordS = 19619`: `WordToStack.wsize` over the post-`word_to_word` program
  `BackendStages.Native.programs0` (maximum at label `877`);
* `stackS = 20339`: `Flatten.psize` over the `stack_remove` output `BackendStages.Removed.stack`
  (maximum at label `877`).

The checkers are per-entry Booleans; `forall_of_all` turns a checked `List.all` into the `∀`
hypothesis shape consumed by the bounded compiler theorems.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.Concrete

open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Backend.StackLang
open InitECandidate.Solver.Compiler
open Flapjack.Basis.Pure.MlString (MlString)

/-- Crep-stage bound: maximum of `csize` over the baseline crep program. -/
def crepS : Nat := 14860
/-- Word-stage bound: maximum of `wsize` over the baseline post-`word_to_word` program. -/
def wordS : Nat := 19619
/-- Stack-stage bound: maximum of `psize` over the baseline `stack_remove` output. -/
def stackS : Nat := 20339

theorem three_le_crepS : 3 ≤ crepS := by decide
theorem one_le_wordS : 1 ≤ wordS := by decide

/-- `noA` on the body, and `okP [storeConstsStubLocation]` unless the label is the
`word_to_stack` constant-store stub. -/
def stackOkB (np : Nat × HolProg 64) : Bool :=
  StackPasses.noA np.2 &&
    (np.1 == storeConstsStubLocation || StackPasses.okP [storeConstsStubLocation] np.2)

/-- `psize ≤ S` on a stack code entry. -/
def flatOkB (S : Nat) (np : Nat × HolProg 64) : Bool := Nat.ble (Flatten.psize np.2) S

/-- `wsize ≤ S` on a word code entry. -/
def wordOkB (S : Nat) (e : Nat × Nat × WordLangProgHOL (BitVec 64)) : Bool :=
  Nat.ble (WordToStack.wsize e.2.2) S

/-- `csize ≤ S` on a crep code entry. -/
def crepOkB (S : Nat) (e : MlString × List Nat × CrepProgHOL 64) : Bool :=
  Nat.ble (CrepToLoop.csize e.2.2) S

/-- `crepOkB` on the conversion of a raw crep program, through the baseline's structural copy
of `crepProgToHOL` (Flapjack's is well-founded, hence not kernel-reducible). -/
def crepRawOkB (S : Nat) (p : CrepProg (BitVec 64)) : Bool :=
  Nat.ble (CrepToLoop.csize (InitECandidate.Proofs.CrepKernelComputation.crepProgToHOL p)) S

theorem crepOkB_of_raw {S : Nat} {n : MlString} {ps : List Nat} (p : CrepProg (BitVec 64))
    (h : crepRawOkB S p = true) : crepOkB S (n, ps, Flapjack.crepProgToHOL p) = true := by
  unfold crepOkB
  unfold crepRawOkB at h
  rw [InitECandidate.Proofs.CrepKernelComputation.crepProgToHOL_function_eq]
  exact h

section Lists
variable {α : Type}

theorem all_nil_of (f : α → Bool) : ([] : List α).all f = true := rfl

theorem all_cons_of {f : α → Bool} {x : α} {l : List α} (hx : f x = true)
    (hl : l.all f = true) : (x :: l).all f = true := by
  rw [List.all_cons, hx, hl]; rfl

theorem all_append_of {f : α → Bool} {l r : List α} (hl : l.all f = true)
    (hr : r.all f = true) : (l ++ r).all f = true := by
  rw [List.all_append, hl, hr]; rfl

theorem forall_of_all {f : α → Bool} {l : List α} (h : l.all f = true) :
    ∀ x ∈ l, f x = true :=
  List.all_eq_true.mp h

end Lists

theorem stackOkB_noA {np : Nat × HolProg 64} (h : stackOkB np = true) :
    StackPasses.noA np.2 = true := by
  unfold stackOkB at h
  simp only [Bool.and_eq_true] at h
  exact h.1

theorem stackOkB_okP {np : Nat × HolProg 64} (h : stackOkB np = true)
    (hx : np.1 ≠ storeConstsStubLocation) :
    StackPasses.okP [storeConstsStubLocation] np.2 = true := by
  unfold stackOkB at h
  simp only [Bool.and_eq_true, Bool.or_eq_true, beq_iff_eq] at h
  rcases h.2 with h' | h'
  · exact absurd h' hx
  · exact h'

theorem flatOkB_le {S : Nat} {np : Nat × HolProg 64} (h : flatOkB S np = true) :
    Flatten.psize np.2 ≤ S :=
  Nat.le_of_ble_eq_true h

theorem wordOkB_le {S : Nat} {e : Nat × Nat × WordLangProgHOL (BitVec 64)}
    (h : wordOkB S e = true) : WordToStack.wsize e.2.2 ≤ S :=
  Nat.le_of_ble_eq_true h

theorem crepOkB_le {S : Nat} {e : MlString × List Nat × CrepProgHOL 64}
    (h : crepOkB S e = true) : CrepToLoop.csize e.2.2 ≤ S :=
  Nat.le_of_ble_eq_true h

end InitECandidate.Solver.Concrete

#print axioms InitECandidate.Solver.Concrete.crepOkB_of_raw
#print axioms InitECandidate.Solver.Concrete.stackOkB_okP
