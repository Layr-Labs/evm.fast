import InitECandidate.Solver.MemSafe.Ops4.PmCore

set_option autoImplicit false

/-!
# `pre_modexp`: the `charge_gas` stage of the gas proof

`chg_call`: `charge_gas(e)` from `PK (aAt H s0 Γ0 p0) K MK L`: afterwards the state again satisfies `G`,
`ReqOK capE`, `gword ev = e`, `gasV ≤ g0` and the locals invariant (so a fresh activation can be taken).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Ops4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Mod
open InitECandidate.Solver.MemSafe.Rpg
open InitECandidate.Solver.MemSafe.WaveHelpers

variable {σ : Type} {X : Ctx 64} {H : Hooks σ}

/-- The state after `charge_gas`. -/
def ChgPost (H : Hooks σ) (e : BitVec 64) (g0 : Nat) (L : LocalsH → Prop)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (ro = none → ∃ Γ2 p2, G guestC H Γ2 t ∧ ptrsOf t = some p2 ∧ ReqOK capE t Γ2 ∧
      gword t Frames.nmEv = some e ∧ gasV t e ≤ g0 ∧ L t.locals) ∧
    ∀ r', ro = some r' → ¬ Abortive r' → gasV t e ≤ g0

theorem chg_call (En : RpEnv σ X H) {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (hG : G guestC H Γ0 s0) (hps : ptrsOf s0 = some p0) (hreq : ReqOK capE s0 Γ0)
    {e : BitVec 64} {g0 : Nat} (hge : gword s0 Frames.nmEv = some e) (hg0 : gasV s0 e ≤ g0)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {args : List (ExpHOL 64)}
    (hvl1 : ∀ s : State σ, L s.locals → ∀ vs, evs s args = some vs → vs.length = 1) :
    HoareG σ X (PK (aAt H s0 Γ0 p0) K MK L) (.call (some (none, none)) (nm "charge_gas") args)
      (ChgPost H e g0 L) := by
  obtain ⟨ha, hh0⟩ := entry_act En hG hps hreq
  have hspec := Frames.charge_evSpec (σ := σ) (X := X) En.hX En.hF
  refine hoareG_callD hspec ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st hR hst
    have hGs : G guestC H Γ s := G_of_upg capsOK_capE hh.1
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
      G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hGs
    have hreqs : ReqOK capE s Γ := req_now ha hh
    obtain ⟨eo, heo, het, hgeo⟩ := hreqs ⟨nm "ev", 0, [], false⟩ (by simp [capE]) (by decide)
    have hvl : vs.length = 1 := hvl1 s hL vs hvs
    have hargs : ArgsOK guestC Γ p Frames.sg1n.params vs :=
      Frames.argsOK_anyL (by simp [Frames.sg1n]) (by simp [Frames.sg1n, hvl])
    have hs' : gword s Frames.nmEv = some e := by
      have hk := caps_kept ha hh ⟨nm "ev", 0, [], false⟩ (by simp [aAt, actOf, capE]) (by decide)
      rw [← hge]
      exact gword_of_lookup hk
    have hcur : gasV s e ≤ g0 := gasle_of_heap En hG hps hreq hge hg0 hh
    have hPre : ∃ e1, Frames.EvRun tEV Γ (callEntryStateHOLFinite s callee) e1 := ⟨eo, heo, het, hgeo⟩
    obtain ⟨Γ', p1, p2, core, hQ⟩ := hR (by simp [Good]) Γ hGe ⟨p, hh.2.1, hargs⟩ hPre
    obtain ⟨hΓ, hpt, hgl, e1, a1, hge1, hvs1, hcase⟩ := hQ
    subst hΓ
    obtain ⟨hp1, hp2, -, -, -, hG', -⟩ := core
    have he1 : e1 = e := by
      have : gword (callEntryStateHOLFinite s callee) Frames.nmEv = some e := hs'
      rw [hge1] at this; exact Option.some.inj this
    subst he1
    rcases hcase with ⟨hr, -, -⟩ | ⟨-, hle, hm⟩
    · cases hr
    have hgw : gword st Frames.nmEv = some e1 := by
      have : gword st Frames.nmEv = gword s Frames.nmEv := by
        unfold gword; rw [hgl]; rfl
      rw [this]; exact hs'
    have hgas : gasV { st with locals := s.locals } e1 ≤ g0 := by
      show (Frames.fld st.memory e1 64).toNat ≤ g0
      rw [hm]
      show (Frames.fld (Frames.chargeMem s.memory e1 a1) e1 64).toNat ≤ g0
      rw [Frames.fld_charge64]
      exact le_trans (toNat_sub_le _ _ hle) hcur
    refine ⟨fun _ => ⟨Γ', p2, G_congr (s := st) (t := { st with locals := s.locals }) En.hH rfl rfl rfl rfl hG', hp2, ?_, hgw, hgas, hL⟩,
      fun r' h => by cases h⟩
    intro c hc _
    simp only [capE, List.mem_singleton] at hc
    subst hc
    have hgeo' : gword s (nm "ev") = some eo.base := hgeo
    have hbe : eo.base = e1 := Option.some.inj (hgeo'.symm.trans hs')
    refine ⟨eo, heo, het, ?_⟩
    show gword st (nm "ev") = some eo.base
    rw [hbe]; exact hgw
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st hR hst habn
    have hGs : G guestC H Γ s := G_of_upg capsOK_capE hh.1
    have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
      G_congr (s := s) (t := callEntryStateHOLFinite s callee) En.hH rfl rfl rfl rfl hGs
    have hreqs : ReqOK capE s Γ := req_now ha hh
    obtain ⟨eo, heo, het, hgeo⟩ := hreqs ⟨nm "ev", 0, [], false⟩ (by simp [capE]) (by decide)
    have hvl : vs.length = 1 := hvl1 s hL vs hvs
    have hargs : ArgsOK guestC Γ p Frames.sg1n.params vs :=
      Frames.argsOK_anyL (by simp [Frames.sg1n]) (by simp [Frames.sg1n, hvl])
    have hcur : gasV s e ≤ g0 := gasle_of_heap En hG hps hreq hge hg0 hh
    have hPre : ∃ e1, Frames.EvRun tEV Γ (callEntryStateHOLFinite s callee) e1 := ⟨eo, heo, het, hgeo⟩
    have hg : Good (some r) := by
      rcases habn with ⟨e', v', rfl⟩ | ⟨e', rfl⟩ <;> simp [Good]
    obtain ⟨Γ', p1, p2, core, hQ⟩ := hR hg Γ hGe ⟨p, hh.2.1, hargs⟩ hPre
    obtain ⟨hΓ, hpt, hgl, e1, a1, hge1, hvs1, hcase⟩ := hQ
    have hmem : st.memory = s.memory := by
      rcases hcase with ⟨hr, -, hm⟩ | ⟨hr, -, -⟩
      · exact hm
      · rcases habn with ⟨e', v', rfl⟩ | ⟨e', rfl⟩ <;> cases hr
    refine ⟨(fun h => by cases h), fun r' hr' hna => ?_⟩
    show (Frames.fld st.memory e 64).toNat ≤ g0
    rw [hmem]
    exact hcur

end InitECandidate.Solver.MemSafe.Ops4

#print axioms InitECandidate.Solver.MemSafe.Ops4.chg_call
