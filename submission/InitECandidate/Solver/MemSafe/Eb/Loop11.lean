import InitECandidate.Solver.MemSafe.Eb.Loop10

/-!
# `execute_block`: loop part 11 (one iteration)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-- The tracked locals inside the loop. -/
def EnL (En : Env) (X ptxs0 iv : BitVec 64) : Env :=
  ((En.set (nm "lasth") (.val (.word X))).set (nm "ptxs") (.val (.word ptxs0))).set (nm "i") (.val (.word iv))

theorem resIns_pa {E : EbE σ} {En : Env} {S : FS} {n : MlS} (hn : En n = none) :
    ResIns n (fun r t => r = none ∧ PA E En S t) := by
  intro r t old ⟨hr, hp⟩
  refine ⟨hr, pb_loc hp.1 _ t.clock, fun x v hx => ?_⟩
  by_cases hxn : x = n
  · subst hxn; rw [hn] at hx; cases hx
  · show (t.locals.resVarEq (n, old)).lookup x = some v
    rw [lookup_resVarEq_ne _ _ (Ne.symm hxn)]
    exact hp.2 x v hx

theorem pa_derive {E : EbE σ} {En : Env} {S S' : FS} {u : State σ} (h : PA E En S u)
    (hd : ∀ (Γ : Gam) (p : Ptrs), HoldsAll E.p0 Γ p u S → HoldsAll E.p0 Γ p u S') : PA E En S' u := by
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := h
  exact ⟨⟨Γ, p, hr, hd Γ p hL⟩, hlk⟩

end InitECandidate.Solver.MemSafe.Eb
