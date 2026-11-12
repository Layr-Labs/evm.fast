import InitECandidate.Solver.MemSafe.Puc.Link

/-!
# Puc U5: `var out = process_message_call(m)` and the hand-over to the tail

Copy of F3's `pt_call` (`Ptx/PtW3.lean`) with the Puc anchor: the call, the destructuring of `PmcFin`, the anchor
`A` (the heap part `keepG Γ'` of the post-call typing, the post-call state), `TPre A out`, the start of `TlS`,
the tail `pu_tail`, and the link `pu_link`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem gobj_post {Γe Γ' : Gam} {s0 st : State σ} {p q : Ptrs} {g : MlS} {ty : Nat}
    (hgl : st.globals.lookup g = s0.globals.lookup g) (hp : ptrsOf s0 = some p) (hq : ptrsOf st = some q)
    (hordp : p.Ordered) (hkeep : KeepH guestC Γe Γ' s0 st) (hh : (guestC.ty ty).region = .heap)
    (hso : ¬ ScratchOwn ty) (h : ∃ w, gword s0 g = some w ∧ ∃ o ∈ Γe, o.base = w ∧ o.ty = ty) :
    ∃ w, gword st g = some w ∧ ∃ o ∈ keepG Γ', o.base = w ∧ o.ty = ty := by
  obtain ⟨w, hw, o, ho, hb, ht⟩ := h
  obtain ⟨-, hsurv, -⟩ := hkeep p q hp hq hordp
  obtain ⟨o', ho', hb', ht', -⟩ := hsurv o ho (by rw [ht]; exact hh)
  refine ⟨w, ?_, o', mem_keepG.mpr ⟨ho', by rw [ht', ht]; exact hh, by rw [ht', ht]; exact hso⟩, hb'.trans hb, ht'.trans ht⟩
  unfold gword at hw ⊢
  rw [hgl]; exact hw

/-- **The call and the tail.** -/
theorem pu_call {E : PtE σ} {En : Env} {S : FS} {M : Nat} {wm wt vmw T N n aaw akw : BitVec 64}
    (hpm : HypPmM σ M) (hpcm : HypPcm σ M) (hM : 30000000 + 2 ≤ M) (hgs : Bal.HGS σ)
    (hOH : OwnerHeap E.Γ0) (hHO : ∀ o ∈ E.Γ0, (guestC.ty o.ty).region = .heap)
    (hnw : ∀ o ∈ E.Γ0, ∀ k, o.HasSlot k → ¬ E.WSet (o.cell k))
    (K : CallReady En S wm wt vmw T N n aaw akw) :
    Hoare σ guestCtx (PA E En S) pucS26
      (fun r t => ∃ out, r = some (.returned (.val (.word out))) ∧ PucEnd E t out) := by
  have hQT := locIns_puc E
  unfold pucS26
  refine hdecCallK (locIns_resIns hQT _)
    ((pmc_funSpec (hypPm_of_M hpm) hpcm).and (funSpec_pt_gw_all guestCtx_code pmc_fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hRs, hgl⟩ hst hsh
  obtain ⟨D, Γ, p, hrun, hD, hHold, hlk, hfo, htc⟩ := pu_adopt_m K.fb K.pp K.m8 K.m16 K.m24 K.m32 K.m40 K.m96
    K.m120 K.m152 K.m160 K.ote K.oaa K.oak K.base.ovm K.base.bT K.base.hN K.hn K.base.hT0 hM hpa
  obtain ⟨x, rfl, hx⟩ := evs_single hvs
  have hxw : x = .val (.word wm) := by
    have h2 : ev s (lv (nm "m")) = some (.val (.word wm)) := hlk _ _ K.hm
    rw [h2] at hx
    exact (Option.some.inj hx).symm
  subst hxw
  have hrun' : PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p :=
    ptRun_loc hrun callee (s.clock - 1)
  have hfo' : FoPre M wm (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) :=
    fopre_loc callee (s.clock - 1) hfo
  have hHold' : HoldsAll E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) p (callEntryStateHOLFinite s callee) (SAm S wm) :=
    holdsAll_loc hHold callee (s.clock - 1)
  obtain ⟨outw, hv, Γ', hG', hkeep, hbk, hout', hev, hcc, hcase, h48, hfresh⟩ :=
    hRs _ (ptRun_G hrun') ⟨wm, rfl, hfo', htc⟩ v rfl
  subst hv
  obtain ⟨q, hq, hord, hL, -⟩ := id hG'
  have hpe := ptRun_ptrs hrun'
  have hordp := ptRun_ord hrun'
  have hGk := G_keepOwnerHeap hG' hev hcc
  -- the anchor
  let A : TlA σ := ⟨keepG Γ', st, q, hq, hord, fun _ => False, fun a ha => ha.elim, fun a ha => ha.elim⟩
  have hgo : ∀ {g : MlS} {ty : Nat}, (SAm S wm) (Fct.gobj g ty) → cW.contains g = false →
      (guestC.ty ty).region = .heap → ¬ ScratchOwn ty → GObj (keepG Γ') st g ty := by
    intro g ty hf hc hh hso
    exact gobj_post (hgl g hc) hpe hq hordp hkeep hh hso (hHold' _ hf)
  have hP : TPre A outw :=
    { heap0 := fun o ho => (mem_keepG.mp ho).2.1
      own0 := ownerHeap_keepG Γ'
      outO := by
        obtain ⟨o, ho, hb, ht, hs⟩ := hout'
        exact ⟨o, mem_keepG.mpr ⟨ho, by rw [ht]; decide, by rw [ht]; decide⟩, hb, ht, hs⟩
      gbs := hgo (K.base.sam wm |>.g1) (by decide) (by decide) (by decide)
      gba := hgo (K.base.sam wm |>.g2) (by decide) (by decide) (by decide)
      gbk := hgo (K.base.sam wm |>.g3) (by decide) (by decide) (by decide)
      gbi := hgo (K.base.sam wm |>.g4) (by decide) (by decide) (by decide)
      gbs2 := hgo (K.base.sam wm |>.g5) (by decide) (by decide) (by decide)
      gsk := hgo (K.base.sam wm |>.g6) (by decide) (by decide) (by decide)
      ts := hgo (K.base.sam wm |>.g7) (by decide) (by decide) (by decide)
      mv := by
        intro hne
        rcases hcase with hcol | ⟨hm, -, -⟩
        · exact absurd hcol.1 hne
        · exact hm
      b48 := h48
      noY := fun a h => h }
  -- the start of the tail
  have hJ : JrNZ st := jrNZ_of_lookup (fun g hg => hgl g (by
    simp only [jrGs, List.mem_cons, List.not_mem_nil, or_false] at hg
    rcases hg with rfl | rfl <;> decide)) (ptRun_jr hrun')
  have hT0 : TlS A (refA A) (Zt A outw) ([] : List Obj) st (keepG Γ') q :=
    ⟨hq, ⟨le_refl _, le_refl _, le_refl _⟩, fun o ho => ⟨o, ho, rfl, rfl, le_refl _⟩,
      fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hGk.1, fun _ _ => rfl, hJ, hev, hcc,
      fun a ha => by
        obtain ⟨o, ho, hot, k, hk, hpr, rfl⟩ := ha.1
        exact ⟨o, ho, bk_heap hot, guestSt_bk hot, k, hk, hpr, rfl⟩,
      fun _ _ => rfl, fun o ho => absurd ho (by simp), fun o ho => absurd ho (by simp), fun _ _ => rfl⟩
  have hTail := pu_tail hP hgs
  refine hoare_post (hoare_pre hTail ?_) ?_
  · intro t _ ht
    subst ht
    refine ⟨⟨keepG Γ', q, tl_set (tl_loc hT0 s.locals st.clock) (nm "out") _⟩, ?_⟩
    intro y w hy
    unfold EnO at hy
    split_ifs at hy with e
    · cases hy; subst e; exact lk_set_self _ _ _
  · intro r t _ _ h
    exact ⟨outw, h.1, pu_link hrun' hD hOH hHO hq hkeep hbk rfl rfl hfresh hnw h.2⟩

end InitECandidate.Solver.MemSafe.Puc
