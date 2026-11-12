import InitECandidate.Solver.MemSafe.Ptx.PcmStep2

/-!
# F3c: the callee steps (`step_st`, `stSum_sr`, `step_cf`)
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
open InitECandidate.Solver.MemSafe.Entry2

variable {σ : Type}

theorem inO_eq_of_cell {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) {k : Nat} (hk : o'.HasSlot k) (hio : InO o (o'.cell k)) : o = o' := by
  have h2 : InO o' (o'.cell k) := inO_cell hord hL ho' (k := 8 * k) (by unfold Obj.HasSlot at hk; omega)
  exact Hooks.gam_eq (Hooks.gamOK_of_layout hL) ho ho' hio.1 hio.2 h2.1 h2.2

theorem stCell_noObj {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {o : Obj}
    (ho : o ∈ Γ) {a : BitVec 64} (hS : StCell guestSt Γ a) (hio : InO o a) : guestSt o.ty = true := by
  obtain ⟨o', ho', hs, k, hk, rfl⟩ := hS
  obtain rfl := inO_eq_of_cell hord hL ho ho' hk hio
  exact hs

theorem step_st {sg : Sig} {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {vs : List (ValueHOL 64)} {u t : State σ} {v : ValueHOL 64} {Γ : Gam} {p : Ptrs} {child : BitVec 64}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg (fun _ s _ => JrNZ s)
      (fun _ _ Γ a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) Q vs u (.returned v) t)
    (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u) (hp : ptrsOf u = some p)
    (hargs : ArgsOK guestC Γ p sg.params vs) (hJ : JrNZ u) (hgw : ∀ g, g ∈ sg.gw → g ∈ [Hooks.gJn])
    (hev : ∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) :
    ∃ (Γ' : Gam) (p' : Ptrs), RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ u Γ' t p p' ∧
      XKeep guestC Γ u.memory t.memory (child, 0) ∧ LstKeep Γ u.memory t.memory := by
  obtain ⟨e, he, heb, het⟩ := hev
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hG ⟨p, hp, hargs⟩ hJ
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  obtain ⟨q, hq, hord, hL, -⟩ := id hG
  obtain rfl : q = _ := Option.some.inj (hq.symm.trans hp)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  refine ⟨Γ', p', step_core hc hG hac hgw he het heb ?_ ?_ ?_⟩
  · rintro a - ⟨-, hS⟩ ⟨o, ho, hty, hio⟩
    have := stCell_noObj hord hL ho hS hio
    rw [guestSt_msgTys _ hty] at this; cases this
  · rintro a - ⟨-, hS⟩ ⟨o, ho, hty, hio⟩
    have := stCell_noObj hord hL ho hS hio
    rw [lstTy_nst hty] at this; cases this
  · rintro a - ⟨-, hS⟩ j hj rfl
    have hsz := ev_size (Hooks.frameCfg_guestHooksR (σ := σ)) hL he het
    have hio : InO e (e.cell j) := inO_cell hord hL he (k := 8 * j) (by simp [evXSlots] at hj; omega)
    have := stCell_noObj hord hL he hS hio
    rw [het] at this
    exact absurd this (by decide)

/-- `state_restore` as a state-object summary. -/
theorem stSum_sr : StSum σ guestCtx guestC Hooks.guestHooksR guestSt (nm "state_restore") HtabEntries.srSig := by
  have hc : CSumm σ guestCtx guestC Hooks.guestHooksR (nm "state_restore") HtabEntries.srSig HtabEntries.srCaps :=
    HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR
  exact stSum_of_csumm (St := guestSt) hc (Wire.keepsFp_guest (by decide_cbv))
    (fun _ _ hG hJ => reqOK_jr srCaps_jr hG hJ) (by decide) guestSt_own

end InitECandidate.Solver.MemSafe.Ptx
