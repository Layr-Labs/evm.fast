import InitECandidate.Solver.MemSafe.D0.D0Main

/-!
# `d0Spec_ext` and `d0Spec_proved`

`d0Spec_ext`: `Frames.D0Spec`'s `JSpec` with the extra post `Ext Γ Γ'` on a return.
`d0Spec_proved`: `Frames.D0Spec σ`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- **`depth0_prepare`'s spec with `Ext`.** -/
theorem d0Spec_ext {tE : Nat} (hSC : SetCodeH σ) (hRA : RaH σ) (hTE : TeHook σ tE)
    (hRec : RecNoMsg σ) (M : Nat) :
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "depth0_prepare")
      (fun vs s Γ => vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ)
      (fun vs s Γ r t Γ' => (QProX guestC tEV tCK GP GR vs s Γ r t Γ' ∧
        (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .exception nmEvmErr v → JrNZ t)) ∧
        (∀ v, r = .returned v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, r = .exception nmEvmErr v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, (r = .returned v ∨ r = .exception nmEvmErr v) → ∀ e', gword s nmEv = some e' →
          gword t nmEv = some e' ∧ fld t.memory e' 112 = fld s.memory e' 112) ∧
        (∀ v, r = .returned v → BKeep guestC Γ s t) ∧
        (∀ v, r = .exception nmEvmErr v → BKeep guestC Γ s t)) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG ⟨hvs, ⟨hx, hΦM⟩, hJ0⟩
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_d0 hl
  have ⟨p, hps, _⟩ := hG
  obtain ⟨fs, hch0, hE0⟩ := hx
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hch0.chain
  have hk0 : KP (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ s0 p fs e (fld s0.memory e 112) s0 :=
    ⟨hJ0, Γ, p, runT_refl hG hps, hch0, hE0, le_refl _, rfl⟩
  haveI : Fact (ChainOf s0 fs) := ⟨hch0.chain⟩
  have H0 := d0_main hTE hRA hSC hRec hfs hG hk0 s0 hs0 rfl (by rw [hr]; exact hg)
  rw [hr] at H0
  obtain ⟨Γ', p', hrun, h1, h2⟩ := H0 r rfl hna
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine ⟨Γ', hrun.2.2.2.2.2.1, ⟨⟨fun v hv => ?_, fun v hv => ?_⟩, fun v hv => ?_, fun v hv => ?_⟩,
    fun v hv => keepH_of_runT hrun, fun v hv => keepH_of_runT hrun, fun v hv e' he' => ⟨?_, ?_⟩,
    fun v hv => bkeep_of_runT hrun, fun v hv => bkeep_of_runT hrun⟩
  · obtain ⟨a, b, -, k, -⟩ := h1 v hv; exact ⟨a, b, k⟩
  · obtain ⟨a, b, -, k, -⟩ := h2 v hv; exact ⟨a, b, k⟩
  · obtain ⟨-, -, c', -⟩ := h1 v hv; exact c'
  · obtain ⟨-, -, c', -⟩ := h2 v hv; exact c'
  · have hl := hrun.2.2.2.2.2.2.1 nmEv hF.pgEv (by decide)
    unfold gword at he' ⊢
    rw [hl]; exact he'
  · rcases hv with hv | hv
    · exact (h1 _ hv).2.2.2.2 e' he'
    · exact (h2 _ hv).2.2.2.2 e' he'

/-- **`depth0_prepare`'s spec with what the catch handler needs**: the plain `D0Spec` post, `KeepH`
on both results, and on a return or an `EvmErr` the running frame (`ev`) is unchanged with its
`EV_MSG` kept. -/
def D0SpecH (σ : Type) : Prop := ∀ M : Nat,
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "depth0_prepare")
      (fun vs s Γ => vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ)
      (fun vs s Γ r t Γ' => (QProX guestC tEV tCK GP GR vs s Γ r t Γ' ∧
        (∀ v, r = .returned v → JrNZ t) ∧ (∀ v, r = .exception nmEvmErr v → JrNZ t)) ∧
        (∀ v, r = .returned v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, r = .exception nmEvmErr v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, (r = .returned v ∨ r = .exception nmEvmErr v) → ∀ e', gword s nmEv = some e' →
          gword t nmEv = some e' ∧ fld t.memory e' 112 = fld s.memory e' 112) ∧
        (∀ v, r = .returned v → BKeep guestC Γ s t) ∧
        (∀ v, r = .exception nmEvmErr v → BKeep guestC Γ s t))

theorem d0SpecH_proved {tE : Nat} (hSC : SetCodeH σ) (hRA : RaH σ) (hTE : TeHook σ tE)
    (hRec : RecNoMsg σ) : D0SpecH σ := fun M => d0Spec_ext hSC hRA hTE hRec M

/-- **`Frames.D0Spec σ`**, proved. -/
theorem d0Spec_proved {tE : Nat} (hSC : SetCodeH σ) (hRA : RaH σ) (hTE : TeHook σ tE)
    (hRec : RecNoMsg σ) : Frames.D0Spec σ := by
  intro M
  refine FunSpec.mono (d0Spec_ext hSC hRA hTE hRec M) ?_
  intro vs s r t h hg hna Γ hG hpre
  obtain ⟨Γ', hG', hq, -⟩ := h hg hna Γ hG hpre
  exact ⟨Γ', hG', hq⟩

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.d0Spec_ext
#print axioms InitECandidate.Solver.MemSafe.D0.d0Spec_proved
#print axioms InitECandidate.Solver.MemSafe.D0.d0SpecH_proved
