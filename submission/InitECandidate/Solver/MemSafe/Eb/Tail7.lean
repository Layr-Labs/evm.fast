import InitECandidate.Solver.MemSafe.Eb.Tail6

/-!
# `execute_block`: the final postcondition, `return 0;`, and the `BlockErr` guards
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

variable {σ : Type}

/-- A return ends in a run of the walk. -/
def RetQ (E : EbE σ) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ v, r = some (.returned v) → ∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ t p

theorem retQ_locIns (E : EbE σ) : LocIns (RetQ E) := by
  intro r t l c h v hv
  obtain ⟨Γ, p, hr⟩ := h v hv
  exact ⟨Γ, p, ebRun_loc hr l c⟩

section tail7
variable {E : EbE σ} {En : Env} {S : FS}

theorem hn_ret0 : Hoare σ guestCtx (PA E En S) (.return (cw 0)) (RetQ E) := by
  refine hoare_return ?_
  intro s hs hpa v hv
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  intro v' hv'
  cases hv'
  exact ⟨Γ, p, ebRun_loc hr _ s.clock⟩

/-- A guard `if c { throw }`: the continuation keeps the state. -/
theorem hn_guard {c : ExpHOL 64} {x : MlS} {ex : ExpHOL 64} :
    HN (PA E En S) (.ite c (.raise x ex) .skip) (PA E En S) :=
  hn_post hguard (fun t _ h => h.1)

end tail7

end InitECandidate.Solver.MemSafe.Eb
