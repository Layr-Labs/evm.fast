import InitECandidate.Solver.MemSafe.Entry.Steps

/-!
# Entry: `frame_open`, `depth0_prepare`, `frame_start` on `PI M`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-! ## `depth0_prepare` -/

/-- The value relation of `depth0_prepare` (the `D0Spec` shape). -/
def D0R (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ) →
    ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧
      (QProX guestC tEV tCK GP GR vs s Γ r t Γ' ∧ (∀ v, r = .returned v → JrNZ t) ∧
        (∀ v, r = .exception nmEvmErr v → JrNZ t))

theorem d0_spec (hD0 : D0Spec σ) (M : Nat) : FunSpec σ guestCtx (nm "depth0_prepare") (D0R M) :=
  hD0 M

theorem pi_d0 {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PI M u)
    (h : D0R M [] (callEntryStateHOLFinite u callee) (.returned v) st) : PI M st := by
  obtain ⟨Γ, p, hG, hp, hpre⟩ := pi_entry hP callee
  obtain ⟨Γ', hG', hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hG ⟨rfl, hpre⟩
  obtain ⟨p', hp', -⟩ := id hG'
  exact ⟨Γ', p', hG', hp', d0_ret hpre hq⟩

/-! ## `frame_start` -/

def FsR (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sg0 [Hooks.gJn]) (PreInvX guestC tEV tCK GP GR M)
    (fun _ _ Γ a => ¬ KCell guestC Γ a) (QLeX guestC tEV tCK GP GR) vs s r t

theorem fs_spec (hP : PreHyps σ) (M : Nat) :
    FunSpec σ guestCtx (nm "frame_start") (FsR M) := fst_sumSpecX_guestRh hP

theorem pi_fs {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PI M u)
    (h : FsR M [] (callEntryStateHOLFinite u callee) (.returned v) st) : PI M st := by
  obtain ⟨Γ, p, hG, hp, hpre⟩ := pi_entry hP callee
  obtain ⟨Γ', p0, p', hc, hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hG
    ⟨p, hp, argsOK_any (by simp [sg0]) rfl⟩ hpre
  have hJ : JrNZ st := jrNZ_sumCore (by decide) (by decide) hc hpre.2
  exact ⟨Γ', p', hc.2.2.2.2.2.1, hc.2.1, fst_ret hpre hq hJ⟩

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pi_d0
#print axioms InitECandidate.Solver.MemSafe.Entry.pi_fs
