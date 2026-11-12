import InitECandidate.Solver.MemSafe.PtC.S6

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
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

theorem cpt_c8a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    (hk : CW' (PA E En S) ptS67 (cbd ptS67) QT) : CW' (PA E En S) ptS60 (cbd ptS60) QT := by
  unfold ptS60
  refine cw_seqN (hn_stTeK K (off := 96) (k := 1) (hlen_lv_w K.hwa) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS62
  refine cw_seqN (hn_stTeK K (off := 104) (k := 1) (hlen_add1 K.hnal) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS63
  refine cw_seqN (hn_stTeK K (off := 112) (k := 1) (hlen_lv_w K.hak) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS64
  refine cw_seqN (hn_stTeK K (off := 120) (k := 1) (hlen_lv_w K.hnk) (by norm_num) (by norm_num) (by norm_num)
    (Or.inl (by norm_num))) ?_
  unfold ptS65
  refine cw_decAnyU (locIns_resIns hQT _) tab_tx_is_blob (by simp) rfl txisb_fin rfl
    (fun g ty h => (K.C0.gl g ty h).1) (K.C0.un _ (by decide)) ?_
  unfold ptS66
  refine cw_seqN (P1 := PA E En S) ?_ ?_
  · unfold ptS68
    refine hn_ite ?_ (hn_pre hn_skip (fun s _ h => h.1))
    refine hn_pre ?_ (fun s _ h => h.1)
    unfold ptS207
    refine hn_seq (hn_stTeK K (off := 128) (k := 1) (fun s hpa v hv => len_ld1 hv) (by norm_num) (by norm_num)
      (by norm_num) (Or.inl (by norm_num))) (hn_stTeK K (off := 136) (k := 1) (fun s hpa v hv => len_ld1 hv)
      (by norm_num) (by norm_num) (by norm_num) (Or.inl (by norm_num)))
  · exact hk

theorem cpt_c8b {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv 0 0 nbl)
    (hz1 : S (Fct.memw (wt + BitVec.ofNat 64 144) 0)) (hz2 : S (Fct.memw (wt + BitVec.ofNat 64 152) 0))
    (hk : ∀ v1 v2 : BitVec 64, (v1 = 0 ∧ v2 = 0 ∨ v1 = T1 E ∧ v2 = T2 E) →
      TeK E En (Sx S wt v1 v2) rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl →
      CW' (PA E En (Sx S wt v1 v2)) ptS73 (cbd ptS73) QT) :
    CW' (PA E En S) ptS67 (cbd ptS67) QT := by
  unfold ptS67
  refine cw_decAnyU (locIns_resIns hQT _) tab_tx_is_setcode (by simp) rfl txissc_fin rfl
    (fun g ty h => (K.C0.gl g ty h).1) (K.C0.un _ (by decide)) ?_
  unfold ptS69
  refine cw_seqN (P1 := fun t => ∃ vv : BitVec 64 × BitVec 64,
      (vv.1 = 0 ∧ vv.2 = 0 ∨ vv.1 = T1 E ∧ vv.2 = T2 E) ∧ PA E En (Sx S wt vv.1 vv.2) t) (pt_issc hP K hz1 hz2) ?_
  refine cw_exC fun vv hc => ?_
  have K' := tek_issc K vv.1 vv.2
  unfold ptS70
  refine cw_seqN (hn_stTeK K' (off := 160) (k := 1) (hlen_cw 1) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  unfold ptS72
  refine cw_seqN (hn_stTeK K' (off := 168) (k := 1) (hlen_lv_w K'.C0.idx) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  exact hk vv.1 vv.2 hc K'

theorem cpt_c8c {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv v1 v2 : BitVec 64} {nbl : Nat}
    (hQT : LocIns QT) (K : TeK E En S rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl)
    (hk : ∀ (En' : Env) (S' : FS) (th : BitVec 64), TeK E En' S' rp rl buf n CV w wt wa ak nv nkv v1 v2 nbl →
      En' (nm "txh") = some (.val (.word th)) → S' (Fct.obj th tVAL 32) →
      CW' (PA E En' S') ptS79 (cbd ptS79) QT) :
    CW' (PA E En S) ptS73 (cbd ptS73) QT := by
  unfold ptS73
  refine cw_decAllocA (locIns_resIns hQT _) (e := cw 32) (n := BitVec.ofNat 64 32) (ty := tVAL)
    (fun s _ => evI_cw s 32) K.C0.gl plain_tVAL' tags_tVAL tval_reg tval_slot (by rw [tval_min]; norm_num)
    (by norm_num) (by norm_num) ?_
  intro th
  have hn32 : (BitVec.ofNat 64 32).toNat = 32 := rfl
  simp only [hn32]
  have K1 := tek_setF K (x := nm "txh") (by decide) (by unfold TeV; decide) (.val (.word th))
    [Fct.obj th tVAL 32, Fct.bufok0 th 32, Fct.prop (th.toNat % 8 = 0 ∧ heapBase ≤ th.toNat ∧ th.toNat + 32 ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl | rfl <;> simp [Fct.reads])
  have hth : (En.set (nm "txh") (.val (.word th))) (nm "txh") = some (.val (.word th)) := env_set_self _ _ _
  have hbf : addF S [Fct.obj th tVAL 32, Fct.bufok0 th 32,
      Fct.prop (th.toNat % 8 = 0 ∧ heapBase ≤ th.toNat ∧ th.toNat + 32 ≤ heapEnd)] (Fct.bufok0 th 32) := Or.inr (by simp)
  unfold ptS74
  refine cw_seqN (hn_callC tab_keccak256 (callOK_keccak hth hbf (fun g ty h => (K1.C0.gl g ty h).1))) ?_
  unfold ptS75
  refine cw_seqN (hn_stTeK K1 (off := 176) (k := 1) (hlen_lv_w hth) (by norm_num) (by norm_num) (by norm_num)
    (Or.inr (by norm_num))) ?_
  unfold ptS76
  refine cw_seqN (hn_stTeK K1 (off := 184) (k := 1) (hlen_rf 0 (by norm_num) K1.hint) (by norm_num) (by norm_num)
    (by norm_num) (Or.inr (by norm_num))) ?_
  unfold ptS77
  refine cw_seqN (hn_stTeK K1 (off := 192) (k := 1) (hlen_rf 1 (by norm_num) K1.hint) (by norm_num) (by norm_num)
    (by norm_num) (Or.inr (by norm_num))) ?_
  unfold ptS78
  refine cw_seqN hn_skip ?_
  exact hk _ _ th K1 hth (Or.inr (by simp))

end InitECandidate.Solver.MemSafe.PtC
