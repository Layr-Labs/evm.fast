import InitECandidate.Solver.MemSafe.Frames.NewSpec
import InitECandidate.Solver.MemSafe.Hooks.Journal

/-!
# `frame_new`'s hook requirements for the guest hook families

`newHooks_guest : NewHooks guestHooks` and `newHooks_guestJ : NewHooks guestHooksJ` (the family
with the journal hook, used for the final assembly): the EV hook is `evW` (membership, `GamOK`
from the layout, `EvSM`), stack / memory / list objects are unhooked.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem newHooks_guest : NewHooks (guestHooks (σ := σ)) := by
  refine ⟨fun Γ s o p hL ho ht hsm => ?_, fun Γ s o h => ?_⟩
  · have hk : hkOf o.ty = .ev := by rw [ht]; exact hkOf_tEV
    exact (gwf_ev hk).2 ⟨ho, gamOK_of_layout hL, hsm⟩
  · rcases h with h | h | h | h <;> exact gwf_none (by rw [h]; decide)

theorem newHooks_guestJ : NewHooks (guestHooksJ (σ := σ)) := by
  refine ⟨fun Γ s o p hL ho ht hsm => ⟨newHooks_guest.ev Γ s o p hL ho ht hsm, fun hj => ?_⟩,
    fun Γ s o h => ⟨newHooks_guest.triv Γ s o h, fun hj => ?_⟩⟩
  · rw [ht] at hj
    exact absurd hj (by decide)
  · rcases h with h | h | h | h <;> rw [h] at hj <;> exact absurd hj (by decide)

end InitECandidate.Solver.MemSafe.Frames
