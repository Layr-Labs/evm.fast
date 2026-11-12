import InitECandidate.Solver.MemSafe.Bal.GetPreCode
import InitECandidate.Solver.MemSafe.Frames.SCGuestJL
import InitECandidate.Solver.MemSafe.Frames.GChkJL
import InitECandidate.Solver.MemSafe.HoareX

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section gp
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

theorem cpw_step {cs0 cs : List Cap} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {t s' : State σ}
    (hcs : ∀ c ∈ cs, c.ks = [] ∧ ∃ c0 ∈ cs0, c0.all = true ∧ ∀ t, AllTy c t → AllTy c0 t)
    (hT : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs0 Γ0 s0 p0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) :
    ∀ y, ProtCell guestC Γ y → CapPW cs s' Γ y → cpw cs0 Γ0 s0 p0 y := by
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT
  obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  exact fun y hpc hpw => cpw_of_caps hord0 hordT hmT hL0 hLayT hnfT hcs hpc hpw

/-- The post of a body that may end in a non-abortive exception: every non-abortive result keeps
`bs` and the tracking. -/
def GQ (cs : List Cap) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ rr, r = some rr → ¬ Abortive rr → t.globals.lookup (nm "bs") = s0.globals.lookup (nm "bs") ∧
    ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw cs Γ0 s0 p0) Γ t

theorem gq_locals (hH : HooksLawful guestC (guestHooksR (σ := σ))) {cs : List Cap}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : GQ cs Γ0 s0 p0 r t) : GQ cs Γ0 s0 p0 r { t with locals := L } := by
  intro rr hr hna
  obtain ⟨hb, Γ, hT⟩ := h rr hr hna
  exact ⟨hb, Γ, Struct.trk_congr hH hT rfl rfl rfl rfl⟩


def wsSg : Sig := ⟨[.any], [], [], false⟩

theorem wsGet_mem : (nm "ws_get_account_optional", wsSg, ([] : List Cap)) ∈ ShardsJL.tab26 := by
  decide +kernel

theorem wsGet_cs : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "ws_get_account_optional")
    wsSg [] :=
  tabJL_guestR (σ := σ) _ _ _ wsGet_mem

theorem gp_hoare (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {B : Obj} (hB : B ∈ Γ0) (hBt : B.ty = tBS) (hbs : gword s0 (nm "bs") = some B.base)
    {ADDR : BitVec 64} (hkey : SrcKey Γ0 ADDR 20 tHTb20)
    (hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR))) :
    HoareG σ guestCtx (fun u => u = s0) gpBody (GQ (capsHT tHTb20) Γ0 s0 p0) := by
  have hF := Rec.foldOK_guestR (σ := σ)
  have hH := hF.hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hbs' : s0.globals.lookup (nm "bs") = some (.val (.word B.base)) := AllocImpl.lookup_of_gword hbs
  have hneG : NoExc σ guestCtx (nm "htab_get") := noExc_htabX hF.hX _ (by decide)
  unfold gpBody
  refine hoareG_decCall (FunSpec.and (funSpec_get_j (σ := σ) hF.hX) hneG) ?_ ?_
  · intro s hs hsu vs hvs callee v st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst hsh
    subst s
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    rw [evs_nil] at hr2
    cases hr2
    have ha1' := lp_ev_ld (ev_add2 (ev_gv hbs') (ev_cw _ 16)) ha1
    subst ha1'
    rw [Mpt.Leaves.ev_lv' hla] at ha2
    cases ha2
    obtain ⟨ws, hws, rfl⟩ := eq_wv_of_shapeEq' (k := 2) (by
      have := (shapeEqHOL_eq_true _ _).mp hsh
      exact (shapeEqHOL_eq_true _ _).mpr this)
    match ws, hws with
    | [a, b], _ =>
    have hgs : st.globals = s0.globals := AllocImpl.hfm_ext (funext hgl)
    set u1 := setVarHOLFinite (nm "w") (wv [a, b]) { st with locals := s0.locals } with hu1
    have hT1 : Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw (capsHT tHTb20) Γ0 s0 p0) Γ0 u1 :=
      Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hgs hd hbe
    obtain ⟨pT1, hpT1, -⟩ := id hT1
    have hbsU : u1.globals.lookup (nm "bs") = some (.val (.word B.base)) := by
      show st.globals.lookup (nm "bs") = _
      rw [hgs]; exact hbs'
    have hlaU : u1.locals.lookup (nm "addr") = some (.val (.word ADDR)) :=
      (lk_set_ne _ _ (by decide)).trans hla
    refine hoareG_conseq (P := fun t => t = u1) ?_ (fun s _ h => h)
      (fun r t _ _ hq => gq_locals hH r t _ hq)
    unfold gpTail
    refine hoareG_seq (R := fun r t => (r = none ∧ t = u1) ∨ (r ≠ none ∧ GQ (capsHT tHTb20) Γ0 s0 p0 r t)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite ?_ ?_
      · refine hoareG_return fun t _ ⟨ht, _⟩ v' hv' => Or.inr ⟨by simp, ?_⟩
        intro rr hrr hna
        cases hrr
        subst ht
        exact ⟨by show st.globals.lookup (nm "bs") = _; rw [hgs],
          Γ0, Struct.trk_congr hH hT1 rfl rfl rfl rfl⟩
      · exact hoareG_skip fun t _ ⟨ht, _⟩ => Or.inl ⟨rfl, ht⟩
    · refine hoareG_pre (P := fun t => t = u1) ?_ (fun t _ h => by
        rcases h with ⟨-, h⟩ | ⟨hr, -⟩
        · exact h
        · exact absurd rfl hr)
      have gwOf : ∀ f, (balFns.map Prod.fst).contains f = true → FunSpec σ guestCtx f
          (fun _ s _ t => t.globals.lookup (nm "bs") = s.globals.lookup (nm "bs")) :=
        fun f hf => funSpec_bal_gw hF.hX (by simp) hf
      refine hoareG_seq (R := fun r t => (r = none ∧ t.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
          t.globals.lookup (nm "bs") = s0.globals.lookup (nm "bs") ∧
          ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw (capsHT tHTb20) Γ0 s0 p0) Γ t) ∨
          (r ≠ none ∧ GQ (capsHT tHTb20) Γ0 s0 p0 r t)) ?_
        (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
      · refine hoareG_callD (FunSpec.and (sumRel_fun (sumSpec_record_pre_state_read_k (σ := σ)))
          (FunSpec.and (Frames.funSpec_dom _) (gwOf (nm "record_pre_state_read") (by decide_cbv)))) ?_ ?_
        · intro s hs hsu vs hvs callee v' st' ⟨hS, ⟨hd', hbe'⟩, hgw'⟩ hst'
          subst hsu
          rw [evs_cons (Mpt.Leaves.ev_lv' hlaU) evs_nil] at hvs
          cases hvs
          obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT1 hord0 hL0 (sg := rprSig) (Pre := RprPre)
            (PW' := fun _ s Γ y => CapPW (capsHT tHTb20) s Γ y) (Q := BsPost)
            (vs := [.val (.word ADDR)]) (r := .returned v') (callee := callee) (st := st') hS
            (by simp [Good]) (by simp [Abortive]) ⟨pT1, hpT1, argsOK_any1⟩
            ⟨ADDR, rfl, ⟨B, hB, hBt, AllocImpl.gword_of_lookup hbsU⟩, hkey⟩ (fun g _ => by simp [rprSig])
            (fun y hy => absurd hy argCells_any1) (cpw_step capsHT_self hT1 hord0 hL0) hd' hbe'
          refine Or.inl ⟨rfl, hlaU, ?_, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
          show st'.globals.lookup (nm "bs") = _
          rw [hgw']
          show st.globals.lookup (nm "bs") = _
          rw [hgs]
        · intro s hs hsu vs hvs callee r' st' ⟨hS, ⟨hd', hbe'⟩, hgw'⟩ hst' habn'
          subst hsu
          rw [evs_cons (Mpt.Leaves.ev_lv' hlaU) evs_nil] at hvs
          cases hvs
          refine Or.inr ⟨by simp, fun rr hrr hna => ?_⟩
          cases hrr
          obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT1 hord0 hL0 (sg := rprSig) (Pre := RprPre)
            (PW' := fun _ s Γ y => CapPW (capsHT tHTb20) s Γ y) (Q := BsPost)
            (vs := [.val (.word ADDR)]) (r := r') (callee := callee) (st := st') hS
            (abn_good habn') hna ⟨pT1, hpT1, argsOK_any1⟩
            ⟨ADDR, rfl, ⟨B, hB, hBt, AllocImpl.gword_of_lookup hbsU⟩, hkey⟩ (fun g _ => by simp [rprSig])
            (fun y hy => absurd hy argCells_any1) (cpw_step capsHT_self hT1 hord0 hL0) hd' hbe'
          refine ⟨?_, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
          show st'.globals.lookup (nm "bs") = _
          rw [hgw']
          show st.globals.lookup (nm "bs") = _
          rw [hgs]
      · refine hoareG_pre (P := fun t => t.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
            t.globals.lookup (nm "bs") = s0.globals.lookup (nm "bs") ∧
            ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (cpw (capsHT tHTb20) Γ0 s0 p0) Γ t) ?_
          (fun t _ h => by
            rcases h with ⟨-, h⟩ | ⟨hr, -⟩
            · exact h
            · exact absurd rfl hr)
        refine hoareG_decCall (FunSpec.and (sa_of_csumm (wsGet_cs (σ := σ)))
          (FunSpec.and (Frames.funSpec_dom _) (gwOf (nm "ws_get_account_optional") (by decide_cbv)))) ?_ ?_
        · intro s hs ⟨hlaS, hbsS, Γ, hT⟩ vs hvs callee v' st' ⟨hS, ⟨hd', hbe'⟩, hgw'⟩ hst' hsh'
          obtain ⟨pT2, hpT2, -⟩ := id hT
          obtain ⟨w', hw'⟩ := val_of_shape1 hsh'
          subst hw'
          rw [evs_cons (Mpt.Leaves.ev_lv' hlaS) evs_nil] at hvs
          cases hvs
          obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := wsSg)
            (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ) (PW' := fun _ s Γ y => CapPW ([] : List Cap) s Γ y)
            (Q := fun _ _ _ _ _ _ => True) (vs := [.val (.word ADDR)]) (r := .returned (.val (.word w')))
            (callee := callee) (st := st') hS (by simp [Good]) (by simp [Abortive])
            ⟨pT2, hpT2, argsOK_any1⟩ (fun c hc => by cases hc) (fun g _ => by simp [wsSg])
            (fun y hy => absurd hy argCells_any1) (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc) hd' hbe'
          refine hoareG_conseq (P := fun t => t = setVarHOLFinite (nm "a") (.val (.word w')) { st' with locals := s.locals })
            (hoareG_return fun t _ ht v'' hv'' => ?_) (fun s _ h => h) (fun r t _ _ hq => gq_locals hH r t _ hq)
          subst ht
          rw [lp_ev_lv (lk_set_self _ _ _)] at hv''
          intro rr hrr hna
          cases hrr
          refine ⟨?_, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
          show st'.globals.lookup (nm "bs") = _
          rw [hgw']
          exact hbsS
        · intro s hs ⟨hlaS, hbsS, Γ, hT⟩ vs hvs callee r' st' ⟨hS, ⟨hd', hbe'⟩, hgw'⟩ hst' habn'
          obtain ⟨pT2, hpT2, -⟩ := id hT
          rw [evs_cons (Mpt.Leaves.ev_lv' hlaS) evs_nil] at hvs
          cases hvs
          intro rr hrr hna
          cases hrr
          obtain ⟨Γ1, pp, pp', hc, -, hT2⟩ := call_cs hH hT hord0 hL0 (sg := wsSg)
            (Pre := fun _ s Γ => ReqOK ([] : List Cap) s Γ) (PW' := fun _ s Γ y => CapPW ([] : List Cap) s Γ y)
            (Q := fun _ _ _ _ _ _ => True) (vs := [.val (.word ADDR)]) (r := r')
            (callee := callee) (st := st') hS (abn_good habn') hna
            ⟨pT2, hpT2, argsOK_any1⟩ (fun c hc => by cases hc) (fun g _ => by simp [wsSg])
            (fun y hy => absurd hy argCells_any1) (fun y _ h => by obtain ⟨c, hc, -⟩ := h; cases hc) hd' hbe'
          refine ⟨?_, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl⟩
          show st'.globals.lookup (nm "bs") = _
          rw [hgw']
          exact hbsS
  · intro s hs hsu vs hvs callee r st ⟨⟨hm, hgl, hd, hbe, hRet⟩, hne⟩ hst habn
    subst s
    rcases hne (abn_good habn) with ⟨v, hv⟩ | hab
    · exact absurd hv (Struct.abn_ne_ret habn v)
    · intro rr hrr hna
      cases hrr
      exact absurd hab hna


/-- **`get_pre_tx_account(addr)` for a key outside the pre-reads table** (e.g. an entry of the
transaction's tables): `SrcKey Γ addr 20 tHTb20` and `bs` a non-null block-state object. It may end in
the exceptions of the witness reads; writes only `tHTb20` table cells. -/
theorem sumSpec_get_pre_tx_account_k :
    SumSpecA σ guestCtx guestC (guestHooksR (σ := σ)) (nm "get_pre_tx_account") rprSig RprPre
      (fun _ s Γ a => CapPW (capsHT tHTb20) s Γ a) BsPost := by
  have hF := Rec.foldOK_guestR (σ := σ)
  intro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 hargs hpre
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, rfl, sa, hA⟩ := lookupCode_one code_get_pre_tx_account hl'
  obtain ⟨ADDR, hvs, ⟨B, hB, hBt, hbs⟩, hkey⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  have hla : s0.locals.lookup (nm "addr") = some (.val (.word ADDR)) := by rw [hloc]; exact hA
  have H' := gp_hoare hG0 hp0 hB hBt hbs hkey hla s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at H'
  obtain ⟨hbl, Γ', hT⟩ := H' r rfl hna
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := rprSig)
    (PWs := fun a => ProtCell guestC Γ0 a ∧ CapPW (capsHT tHTb20) s0 Γ0 a)
    (vs := [.val (.word ADDR)]) (r := r) (trk_cpw_down (by decide) hT) hp0 (fun h => by simp [rprSig] at h)
    (fun p _ w' hw' i rt w'' hi hfl => by simp [rprSig] at hi)
  exact ⟨Γ', p0, p', hc, fun v' hv' => by rw [hv'] at *; exact hbl⟩

end gp

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_get_pre_tx_account_k
