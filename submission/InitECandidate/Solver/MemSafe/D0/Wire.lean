import InitECandidate.Solver.MemSafe.D0.D0Final
import InitECandidate.Solver.MemSafe.Ra.Main
import InitECandidate.Solver.MemSafe.Sc.Final
import InitECandidate.Solver.MemSafe.Hooks.TeFacts

/-!
# `depth0_prepare`'s spec with no hypotheses

Stage 2b discharges the four hypotheses of `d0Spec_proved`:
* `teHook_proved : TeHook σ tTE`: `msg[8]` is a `tTE` object (`Hooks.te_msg`, from the message types' slot 1) and a `tTE`
  object has the origin block and the `tAUTH` array (`Hooks.te_wf`, from the `teD` record entry);
* `raH_proved : RaH σ`: `recover_authority`'s summary (`Ra.sumSpecA_recover_authority_G`);
* `setCodeH_proved : SetCodeH σ`: `set_code`'s summary (`Sc.sumSpecA_set_code_G`);
* `recNoMsg_proved : RecNoMsg σ`: message types are not record types (`RecTyOK`), so `Hooks.recFp_not`.

**`d0Spec_final : Frames.D0Spec σ`.**
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem teHook_proved : TeHook σ tTE where
  heap := rfl
  msg := fun _ _ hG _ ho ht => te_msg hG ho ht
  wf := fun _ _ _ hG _ _ hx ht => te_wf hG hx ht

theorem raH_proved : RaH σ := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', core, hq⟩ :=
    Ra.sumSpecA_recover_authority_G vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  refine ⟨Γ', p, p', core, fun v hv => ?_⟩
  obtain ⟨w, hw, h⟩ := hq v hv p' core.2.1
  refine ⟨w, hw, ?_⟩
  rcases h with h | ⟨-, hb⟩
  · exact Or.inl h
  · refine Or.inr fun p'' hp'' => ?_
    obtain rfl : p'' = p' := Option.some.inj (hp''.symm.trans core.2.1)
    exact hb

theorem setCodeH_proved : SetCodeH σ := Sc.sumSpecA_set_code_G

theorem recNoMsg_proved : RecNoMsg σ := by
  intro Γ m o M a be _ hM hMt hf ⟨h1, h2⟩
  refine recFp_not hf hM (fun h => ?_) h1 h2
  have hne := recTy_ne_msg h
  rcases hMt with e | e <;> rw [e] at hne
  · exact hne.1 rfl
  · exact hne.2 rfl

/-- **`depth0_prepare`'s spec, with no hypotheses.** -/
theorem d0Spec_final : Frames.D0Spec σ :=
  d0Spec_proved setCodeH_proved raH_proved teHook_proved recNoMsg_proved

/-- **`depth0_prepare`'s spec with the handler facts, with no hypotheses.** -/
theorem d0SpecH_final : D0SpecH σ :=
  d0SpecH_proved setCodeH_proved raH_proved teHook_proved recNoMsg_proved

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.teHook_proved
#print axioms InitECandidate.Solver.MemSafe.D0.raH_proved
#print axioms InitECandidate.Solver.MemSafe.D0.setCodeH_proved
#print axioms InitECandidate.Solver.MemSafe.D0.recNoMsg_proved
#print axioms InitECandidate.Solver.MemSafe.D0.d0Spec_final
#print axioms InitECandidate.Solver.MemSafe.D0.d0SpecH_final
