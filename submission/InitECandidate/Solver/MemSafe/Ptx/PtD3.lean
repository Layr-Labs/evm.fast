import InitECandidate.Solver.MemSafe.Ptx.PtD2

/-!
# F3e: chunk 3 (`validate_transaction` ... `set_account_balance`, `ptS14` to `ptS38`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem pa_addprop {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) (P : Prop) (hP : P) :
    PA E En (fun f => S f ∨ f = Fct.prop P) u := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hk⟩ := h
  refine ⟨⟨D, Γ, p, hr, hD, fun f hf => ?_⟩, hk⟩
  rcases hf with hf | rfl
  · exact hL f hf
  · exact hP

macro "envs" : tactic => `(tactic| simp (config := {decide := true}) [Env.set])

macro "par_tac" : tactic => `(tactic| (intro i pt h; rcases i with _ | _ | _ | _ | i <;> simp at h <;> subst h <;>
  first | (left; rfl) | (right; exact ⟨_, rfl, by norm_num⟩)))

theorem hn_incr : True := trivial

/-- Facts of the walk from `ptS38` on (after `set_account_balance`). -/
def Cx3 (E : PtE σ) (En : Env) (S : FS) (rp rl : BitVec 64) (buf n : Nat) (CV : List (BitVec 64))
    (w : BitVec 64) (a b c : BitVec 64) (pr : List (BitVec 64)) (mg rs : BitVec 64) : Prop :=
  Cx2 E En S rp rl buf n CV w ∧ En (nm "intrinsic") = some (wv [a, b, c]) ∧
    En (nm "price") = some (wv pr) ∧ pr.length = 4 ∧
    En (nm "mgas") = some (.val (.word mg)) ∧ En (nm "reservoir") = some (.val (.word rs)) ∧
    S (Fct.prop (mg.toNat ≤ 2 ^ 24))

end InitECandidate.Solver.MemSafe.Ptx
