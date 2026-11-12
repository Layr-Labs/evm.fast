import InitECandidate.Solver.MemSafe.PtC.S13

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem cpt_call {E : PtE σ} {En : Env} {S : FS} {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)}
    {w wt wa ak nv nkv wm aaw akw v32 v96 v120 mg : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hOH : OwnerHeap E.Γ0)
    (hcoinR : heapBase ≤ (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat ∧
      (rd E.s0.memory (E.be + BitVec.ofNat 64 32)).toNat + 20 ≤ heapEnd)
    (hpm : HypPmM σ (2 ^ 24 + 2)) (hpcm : HypPcm σ (2 ^ 24 + 2)) (hR : HypRcpt σ) (hgs : Bal.HGS σ)
    (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl (MsL [(40, mg), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)] v32 v96 v120 aaw akw))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0)) (hb32 : S (Fct.bufok0 v32 20))
    (htg : S (tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32))
    (hp120 : S (Fct.prop (v120.toNat + 63 < 2 ^ 64))) (hd96 : S (Fct.prop (v96.toNat < 2 ^ 32))) :
    CW' (PA E En S) ptS113 (cbd ptS113)
      (fun r t => r = some (.returned (.val (.word 0))) ∧ PtEnd E t) := by
  have hQT := locIns_ptEnd E
  unfold ptS113
  have hcost : Inv.CalleeCostP σ guestCtx (nm "process_message_call")
      (fun vs s => ∃ Γ p, G guestC (HR σ) Γ s ∧ ptrsOf s = some p ∧ ArgsOK guestC Γ p (sg1 []).params vs ∧
        Entry.PmPre (2 ^ 24 + 2) vs s Γ) (tbl (nm "process_message_call")) := by
    rw [tbl_pmc]
    exact Entry2.pmc_condCost_final (σ := σ) (by norm_num)
  refine Eb.cw_decCallK (locIns_resIns hQT _)
    ((pmc_funSpec (hypPm_of_M hpm) hpcm).and (funSpec_pt_gw_all guestCtx_code pmc_fin)) hcost ?_ ?_
  · intro s hs hpa vs hvs callee
    obtain ⟨D, Γ, p, hrun, hD, hHold, hlk, hfo, htc⟩ := pa_adopt_m K hoa hoak hb32 htg hp120 hd96 (K.h40 mg (by simp [MsL])) le_rfl hpa
    obtain ⟨x, rfl, hx⟩ := evs_single hvs
    have hxw : x = .val (.word wm) := by
      have := hlk _ _ K.hm
      have h2 : ev s (lv (nm "m")) = some (.val (.word wm)) := this
      rw [h2] at hx
      exact (Option.some.inj hx).symm
    subst hxw
    have hrun' : PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p :=
      ptRun_loc hrun callee (s.clock - 1)
    have hfo' : FoPre (2 ^ 24 + 2) wm (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) :=
      fopre_loc callee (s.clock - 1) hfo
    exact ⟨_, p, ptRun_G hrun', ptRun_ptrs hrun', argsOK_anys (by simp [sg1]) rfl, wm, rfl, hfo'⟩
  intro s hs hpa vs hvs callee v st ⟨hRs, hgl⟩ hst hsh
  obtain ⟨D, Γ, p, hrun, hD, hHold, hlk, hfo, htc⟩ := pa_adopt_m K hoa hoak hb32 htg hp120 hd96 (K.h40 mg (by simp [MsL])) le_rfl hpa
  obtain ⟨x, rfl, hx⟩ := evs_single hvs
  have hxw : x = .val (.word wm) := by
    have := hlk _ _ K.hm
    have h2 : ev s (lv (nm "m")) = some (.val (.word wm)) := this
    rw [h2] at hx
    exact (Option.some.inj hx).symm
  subst hxw
  have hrun' : PtRun D E.Γ0 E.s0 E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p :=
    ptRun_loc hrun callee (s.clock - 1)
  have hfo' : FoPre (2 ^ 24 + 2) wm (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) :=
    fopre_loc callee (s.clock - 1) hfo
  obtain ⟨outw, hv, Γ', hG', hkeep, hbk, hout', hev, hcc, hcase, -, -⟩ :=
    hRs _ (ptRun_G hrun') ⟨wm, rfl, hfo', htc⟩ v rfl
  subst hv
  obtain ⟨q, hq, hord, hL, -⟩ := id hG'
  have hpe := ptRun_ptrs hrun'
  have hHold' : HoldsAll E.p0 (Γ ++ [⟨wm, tMSGh, 176⟩]) p (callEntryStateHOLFinite s callee) (SAm S wm) :=
    holdsAll_loc hHold callee (s.clock - 1)
  have hSa : ∀ f, S f → SafeK f → SAm S wm f := fun f hf hs => Or.inl ⟨hf, hs⟩
  have W : WalkEnd E D (Γ ++ [⟨wm, tMSGh, 176⟩]) (callEntryStateHOLFinite s callee) p w rp rl :=
    walkEnd_of hP hrun' hD hHold' rfl (hSa _ K.A.C0.osd trivial) (hSa _ K.A.C0.gl.ts trivial)
      (hSa _ K.A.C0.cv1 trivial) (hSa _ K.A.C0.cv2 trivial) (hSa _ K.A.C0.objE trivial) K.A.C0.bnd hcoinR
  have hglt : ∀ g, cW.contains g = false → st.globals.lookup g =
      (callEntryStateHOLFinite s callee).globals.lookup g := hgl
  have hPre := mk_pre hP.toB hOH W hG' hq hord hL hev hcc hkeep hbk hglt hout' hcase
  have hLink := mk_link hP.toB hOH hrun' hD hq hkeep hbk hG' hord hL outw w (rd st.memory (outw + BitVec.ofNat 64 24))
  set Kc := mkCtx E Γ' st q hq hord hL outw w (rd st.memory (outw + BitVec.ofNat 64 24)) with hKc
  have hB := hPre.B
  have hstart := tl_start Kc hB.hG hB.hJ hB.hev hB.hcc
  refine Eb.cw_post (Eb.cw_pre (ctl_tail hPre hR hgs) ?_) (fun r t _ h => ⟨h.1, Kc, hLink, h.2⟩)
  intro t0 _ ht0
  subst ht0
  refine ⟨⟨Kc.E.Γ0, Kc.q0, tl_set (tl_loc hstart s.locals st.clock) (nm "out") _⟩, ?_⟩
  have h1 := lke_set (lke_restore (st := st) hlk) (nm "out") (.val (.word outw))
  refine lke_mono h1 (fun y v hy => ?_)
  have hne1 : nm "index" ≠ nm "out" := by decide
  have hne2 : nm "sender" ≠ nm "out" := by decide
  simp only [EnT0] at hy
  split_ifs at hy with e1 e2 e3
  · cases hy
    rw [e1, env_set_ne _ _ hne1]
    exact K.A.C0.idx
  · cases hy
    rw [e2, env_set_ne _ _ hne2]
    exact K.A.C0.sd
  · cases hy
    rw [e3]
    exact env_set_self _ _ _

end InitECandidate.Solver.MemSafe.PtC
