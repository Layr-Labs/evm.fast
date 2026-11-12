import InitECandidate.Solver.MemSafe.D0.Kq

/-!
# Re-basing `KP` at a later state

`kp_self`: a `KP` state is `KP` relative to itself (typing `Γ1`, pointers `p1` of its own run).
`kp_trans`: a `KP` relative to a later base `u` and the run to `u` give `KP` relative to the start.
Used to track the facts about the current typing (`BufOK` of a fresh buffer) across calls: after
`alloc`, continue with base `u`, where `BufOK Γ1 p1 q 20` is a base fact.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {H : Hooks σ}

theorem kp_self {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) :
    ∃ Γ1 p1, RunT guestC H gw Γ0 s0 Γ1 u p0 p1 ∧ KP H gw Γ1 u p1 fs e mg u := by
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112⟩ := hu
  exact ⟨Γ1, p1, hrun, hJ, Γ1, p1, runT_refl hrun.2.2.2.2.2.1 hrun.2.1, hch, hE, le_refl _, h112⟩

theorem kp_trans {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {u t : State σ} {Γ1 : Gam} {p1 : Ptrs}
    (hu : KP H gw Γ0 s0 p0 fs e mg u) (hrun : RunT guestC H gw Γ0 s0 Γ1 u p0 p1)
    (ht : KP H gw Γ1 u p1 fs e mg t) : KP H gw Γ0 s0 p0 fs e mg t := by
  obtain ⟨hJt, Γ2, p2, hrun2, hch, hE, hΦ, h112⟩ := ht
  exact ⟨hJt, Γ2, p2, runT_trans hrun hrun2, hch, hE, le_trans hΦ hu.2.choose_spec.choose_spec.2.2.2.1,
    h112⟩

/-- The current typing keeps a base buffer. -/
theorem kp_bufOK {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e mg : BitVec 64} {u : State σ} (hu : KP H gw Γ0 s0 p0 fs e mg u) (hG0 : G guestC H Γ0 s0)
    {b n : Nat} (hB : BufOK guestC Γ0 p0 b n) :
    ∃ Γ1 p1, ptrsOf u = some p1 ∧ BufOK guestC Γ1 p1 b n := by
  obtain ⟨-, Γ1, p1, hrun, -⟩ := hu
  exact ⟨Γ1, p1, hrun.2.1, bufOK_runT hG0 hrun hB⟩

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.kp_self
#print axioms InitECandidate.Solver.MemSafe.D0.kp_trans
#print axioms InitECandidate.Solver.MemSafe.D0.kp_bufOK
