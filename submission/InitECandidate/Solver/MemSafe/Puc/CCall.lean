import InitECandidate.Solver.MemSafe.Puc.CTail

/-!
# Puc cost: the whole tail, the call, and `HypPucCost`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx
open InitECandidate.Solver.MemSafe.PtC (CW' cw_decCall_gen cw_dec_gen shEq_wv sz_comb sz_one hszW hszW' cw_pre_ex)

variable {σ : Type}

/-- **The tail with cost** (pucS27 to the `return`). -/
theorem cw_pu_tail {A : TlA σ} {out : BitVec 64} (P : TPre A out) (hgs : Bal.HGS σ) :
    CW' (PAg (TL A (refA A) (Zt A out) ([] : List Obj)) (EnO out)) pucS27 (cbdP pucS27)
      (fun r t => r = some (.returned (.val (.word out))) ∧ TEnd A out t) := by
  have hB := bloc_tl A (refA A) (Zt A out) (O := ([] : List Obj))
  have hQT : LocIns (fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
      r = some (.returned (.val (.word out))) ∧ TEnd A out t) := fun r t l c h => ⟨h.1, tEnd_loc h.2 l c⟩
  have hEo : (EnO out) (nm "out") = some (.val (.word out)) := by unfold EnO; simp
  have hz80 := zt_out P (off := 80) (by norm_num) (by norm_num) (by norm_num)
  unfold pucS27
  refine cw_seqN hn_skip ?_
  unfold pucS28
  refine cw_seqC (cw_incorp' P hgs) ?_
  unfold pucS29
  refine cw_decT_g hB (locIns_resIns hQT _) (w := rd A.s0.memory (out + BitVec.ofNat 64 80)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hEo)) (evI_cw s 80))
    rw [h1 v hv]
    show ValueHOL.val (HolWordLab.word (rd s.memory (out + BitVec.ofNat 64 80))) = _
    rw [hr.keep _ hz80]; rfl
  have hEo1 : ((EnO out).set (nm "system_mark")
      (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "out") = some (.val (.word out)) := by
    rw [env_set_ne _ _ (by decide)]; exact hEo
  have hEm1 : ((EnO out).set (nm "system_mark")
      (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_mark") =
      some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))) := env_set_self _ _ _
  unfold pucS30
  refine cw_seqC (P1 := fun t => TEnd A out t ∧ LKE (EnO out) t) ?_ ?_
  · refine cw_iteP ?_ ?_
    · refine cw_pre_ex fun s hs ⟨hpa, hc⟩ => ?_
      have hmk : rd A.s0.memory (out + BitVec.ofNat 64 80) ≠ 0 := by
        have h0 : s.locals.lookup (nm "system_mark") = some (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80)))) :=
          hpa.2 _ _ hEm1
        exact cond_ne_gen (evI_lv h0) (evI_cw s 0) hc
      have hn1 : ((EnO out).set (nm "system_mark") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_ret_n") = none := by
        rw [env_set_ne _ _ (by decide)]; exact enO_none (by decide)
      have hn2 : ((EnO out).set (nm "system_mark") (.val (.word (rd A.s0.memory (out + BitVec.ofNat 64 80))))) (nm "system_ret") = none := by
        rw [env_set_ne _ _ (by decide)]; exact enO_none (by decide)
      exact ⟨_, hpa, Eb.cw_post (cw_then P hEo1 hEm1 hmk hn1 hn2) (fun r t _ h => ⟨h.1, h.2.1, h.2.2⟩)⟩
    · exact cw_leafN (hoare_skip fun s hs ⟨hpa, hc⟩ => ⟨rfl, by
        obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
        exact tEnd_of_mid (pu_mid P hr), lkeO_of hEo1 hpa.2⟩)
  · exact cw_leafN (hoare_return fun s hs hp v hv => by
      have hv0 : v = .val (.word out) := evI_lv (hp.2 _ _ hEo) v hv
      subst hv0
      exact ⟨rfl, tEnd_loc hp.1 s.locals s.clock⟩)

/-- **The call and the tail with cost.** -/
theorem cw_pu_call {E : PtE σ} {En : Env} {S : FS} {wm wt vmw T N n aaw akw : BitVec 64}
    (hpm : HypPmM σ (30000002)) (hpcm : HypPcm σ (30000002)) (hgs : Bal.HGS σ)
    (hOH : OwnerHeap E.Γ0) (hHO : ∀ o ∈ E.Γ0, (guestC.ty o.ty).region = .heap)
    (hnw : ∀ o ∈ E.Γ0, ∀ k, o.HasSlot k → ¬ E.WSet (o.cell k))
    (K : CallReady En S wm wt vmw T N n aaw akw) :
    CW' (PA E En S) pucS26 (cbdP pucS26)
      (fun r t => ∃ out, r = some (.returned (.val (.word out))) ∧ PucEnd E t out) := by
  have hQT := locIns_puc E
  unfold pucS26
  have hcost : Inv.CalleeCostP σ guestCtx (nm "process_message_call")
      (fun vs s => ∃ Γ p, G guestC (HR σ) Γ s ∧ ptrsOf s = some p ∧ ArgsOK guestC Γ p (sg1 []).params vs ∧
        Entry.PmPre (30000002) vs s Γ) (tblP (nm "process_message_call")) := by
    rw [tblP_pmc]
    exact Entry2.pmc_condCost_final (σ := σ) (by norm_num)
  refine Eb.cw_decCallK (locIns_resIns hQT _)
    ((pmc_funSpec (hypPm_of_M hpm) hpcm).and (funSpec_pt_gw_all guestCtx_code pmc_fin)) hcost ?_ ?_
  · intro s hs hpa vs hvs callee
    obtain ⟨D, Γ, p, hrun, hD, hHold, hlk, hfo, htc⟩ := pu_adopt_m K.fb K.pp K.m8 K.m16 K.m24 K.m32 K.m40 K.m96
      K.m120 K.m152 K.m160 K.ote K.oaa K.oak K.base.ovm K.base.bT K.base.hN K.hn K.base.hT0 (M := 30000002) (by norm_num) hpa
    obtain ⟨x, rfl, hx⟩ := evs_single hvs
    have hxw : x = .val (.word wm) := by
      have h2 : ev s (lv (nm "m")) = some (.val (.word wm)) := hlk _ _ K.hm
      rw [h2] at hx
      exact (Option.some.inj hx).symm
    subst hxw
    have hrun' : PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p :=
      ptRun_loc hrun callee (s.clock - 1)
    have hfo' : FoPre (30000002) wm (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) :=
      fopre_loc callee (s.clock - 1) hfo
    exact ⟨_, p, ptRun_G hrun', ptRun_ptrs hrun', argsOK_anys (by simp [sg1]) rfl, wm, rfl, hfo'⟩
  intro s hs hpa vs hvs callee v st ⟨hRs, hgl⟩ hst hsh
  obtain ⟨D, Γ, p, hrun, hD, hHold, hlk, hfo, htc⟩ := pu_adopt_m K.fb K.pp K.m8 K.m16 K.m24 K.m32 K.m40 K.m96
    K.m120 K.m152 K.m160 K.ote K.oaa K.oak K.base.ovm K.base.bT K.base.hN K.hn K.base.hT0 (M := 30000002) (by norm_num) hpa
  obtain ⟨x, rfl, hx⟩ := evs_single hvs
  have hxw : x = .val (.word wm) := by
    have h2 : ev s (lv (nm "m")) = some (.val (.word wm)) := hlk _ _ K.hm
    rw [h2] at hx
    exact (Option.some.inj hx).symm
  subst hxw
  have hrun' : PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p :=
    ptRun_loc hrun callee (s.clock - 1)
  have hfo' : FoPre (30000002) wm (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) :=
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
  have hTail := cw_pu_tail hP hgs
  refine Eb.cw_post (Eb.cw_pre hTail ?_) ?_
  · intro t _ ht
    subst ht
    refine ⟨⟨keepG Γ', q, tl_set (tl_loc hT0 s.locals st.clock) (nm "out") _⟩, ?_⟩
    intro y w hy
    unfold EnO at hy
    split_ifs at hy with e
    · cases hy; subst e; exact lk_set_self _ _ _
  · intro r t _ h
    exact ⟨outw, h.1, pu_link hrun' hD hOH hHO hq hkeep hbk rfl rfl hfresh hnw h.2⟩

end InitECandidate.Solver.MemSafe.Puc
