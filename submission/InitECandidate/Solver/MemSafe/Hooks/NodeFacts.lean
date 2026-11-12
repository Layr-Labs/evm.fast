import InitECandidate.Solver.MemSafe.Hooks.ValWrite

set_option autoImplicit false

/-!
# Stage 2b: the node hooks as facts about `G`

* `nIn_of_node`: a leaf / extension node's nibble slice (`+32`, `+40`) is `NIn`;
* `vIn_of_leaf`, `vIn_of_branch`: a leaf's value slice (`+48`, `+56`) and a branch's (`+160`, `+168`)
  are `VInR tVAL`.
-/

namespace InitECandidate.Solver.MemSafe.Hooks
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem nibExtD_mem {be : Bool} : nibExtD ∈ recTab be := by simp [recTab]

theorem nIn_of_node {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {o : Obj}
    (ho : o ∈ Γ) (hty : o.ty = tNLEAF ∨ o.ty = tNEXT) :
    NIn Γ (rd s.memory (o.base + 32)) (rd s.memory (o.base + 40)) := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  rcases hty with h | h
  · obtain ⟨-, -, hw⟩ := recHooks_guestR.get Γ s o nibLeafD nibLeafD_mem (by rw [h]; rfl) (hW o ho)
    exact hw.2.2
  · obtain ⟨-, -, hw⟩ := recHooks_guestR.get Γ s o nibExtD nibExtD_mem (by rw [h]; rfl) (hW o ho)
    exact hw.2.2

theorem vIn_of_leaf {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {o : Obj}
    (ho : o ∈ Γ) (hty : o.ty = tNLEAF) :
    VInR tVAL Γ (rd s.memory (o.base + 48)) (rd s.memory (o.base + 56)) := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, hw⟩ := recHooks_guestR.get Γ s o valLeafD valLeafD_mem (by rw [hty]; rfl) (hW o ho)
  exact hw.2.2

theorem vIn_of_branch {Γ : Gam} {s : State σ} (hG : G guestC (guestHooksR (σ := σ)) Γ s) {o : Obj}
    (ho : o ∈ Γ) (hty : o.ty = tNBRANCH) :
    VInR tVAL Γ (rd s.memory (o.base + 160)) (rd s.memory (o.base + 168)) := by
  obtain ⟨p, -, -, -, -, -, -, hW⟩ := hG
  obtain ⟨-, -, hw⟩ := recHooks_guestR.get Γ s o valBrD valBrD_mem (by rw [hty]; rfl) (hW o ho)
  exact hw.2.2

end InitECandidate.Solver.MemSafe.Hooks

#print axioms InitECandidate.Solver.MemSafe.Hooks.nIn_of_node
#print axioms InitECandidate.Solver.MemSafe.Hooks.vIn_of_leaf
#print axioms InitECandidate.Solver.MemSafe.Hooks.vIn_of_branch
