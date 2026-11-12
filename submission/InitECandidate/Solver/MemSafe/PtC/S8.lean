import InitECandidate.Solver.MemSafe.PtC.S7

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

theorem cpt_c9 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv : BitVec 64} {nbl : Nat}
    (hP : PtPreX E) (hQT : LocIns QT) (K : AdK E En S rp rl buf n CV w wt wa ak nv nkv nbl)
    (hrd : RdIn S [Fct.arrbuf wa nbl (nv.toNat + 1) 20, Fct.arrbuf wa nbl 1 20])
    (hk : ∀ (En' : Env) (S' : FS) (wm mg : BitVec 64), En' (nm "mgas") = some (.val (.word mg)) →
      S' (Fct.prop (mg.toNat ≤ 2 ^ 24)) →
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl [(40, mg), (24, rd E.s0.memory (E.tx + BitVec.ofNat 64 152)), (16, w), (8, wt)] →
      CW' (PA E En' S') ptS87 (cbd ptS87) QT) :
    CW' (PA E En S) ptS79 (cbd ptS79) QT := by
  obtain ⟨mg, hmgE, hmgS⟩ := K.hmg
  obtain ⟨rs, hrsE⟩ := K.hrs
  have hPB : ∀ b ∈ [(wa, nbl)], S (Fct.fbuf b.1 b.2) ∧ S (Fct.prop (BlkP b.1 b.2)) ∧ b.2 % 8 = 0 ∧ 0 < b.2 := by
    intro b hb
    simp at hb; subst hb
    refine ⟨K.hfba, K.hppa, ?_, ?_⟩ <;> rw [K.hnbl] <;> omega
  unfold ptS79
  refine cw_decNewP (locIns_resIns hQT _) mn_spec mn_fin (by norm_num) (by norm_num) (by norm_num) []
    (by simp) (fun g ty h => (K.C0.gl g ty h).1) [(wa, nbl)] hPB ?_
  intro wm
  have M0 := msk_of_adk K hrd wm
  have e_mg : (En.set (nm "m") (.val (.word wm))) (nm "mgas") = some (.val (.word mg)) := by
    rw [env_set_ne _ _ (by decide)]; exact hmgE
  have e_rs : (En.set (nm "m") (.val (.word wm))) (nm "reservoir") = some (.val (.word rs)) := by
    rw [env_set_ne _ _ (by decide)]; exact hrsE
  have e_mgS : (addF S [Fct.fbuf wm 176, Fct.prop (BlkP wm 176), Fct.prop (wa.toNat + nbl ≤ wm.toNat)])
      (Fct.prop (mg.toNat ≤ 2 ^ 24)) := Or.inl hmgS
  unfold ptS80
  refine cw_seqN (hn_stMs M0 (off := 0) (k := 1) (hlen_gv_be hP.toPtPre) (by norm_num) (by norm_num) (by simp)) ?_
  unfold ptS81
  refine cw_seqN (hn_c9_one M0 (off := 8) (x := wt) (fun s hpa => evI_lv (hpa.2 _ _ M0.A.hte)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M1 := msk_addM M0 (off := 8) (x := wt) (by norm_num) (by norm_num)
  unfold ptS82
  refine cw_seqN (hn_c9_one M1 (off := 16) (x := w) (fun s hpa => evI_lv (hpa.2 _ _ M1.A.C0.sd)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M2 := msk_addM M1 (off := 16) (x := w) (by norm_num) (by norm_num)
  unfold ptS83
  refine cw_seqN (hn_c9_one M2 (off := 24) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152))
    (evI_ldtx hP.toPtPre M2.A.C0.tx (by norm_num) (by norm_num)) (by norm_num) (by norm_num) (by simp)) ?_
  have M2' := msk_addM M2 (off := 24) (x := rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) (by norm_num) (by norm_num)
  unfold ptS84
  refine cw_seqN (hn_c9_one M2' (off := 40) (x := mg) (fun s hpa => evI_lv (hpa.2 _ _ e_mg)) (by norm_num)
    (by norm_num) (by simp)) ?_
  have M3 := msk_addM M2' (off := 40) (x := mg) (by norm_num) (by norm_num) (fun _ => Or.inl (Or.inl (Or.inl e_mgS)))
  unfold ptS85
  refine cw_seqN (hn_stMs M3 (off := 48) (k := 1) (hlen_lv_w e_rs) (by norm_num) (by norm_num) (by simp)) ?_
  unfold ptS86
  refine cw_seqN (hn_stMs M3 (off := 56) (k := 4) (fun s hpa v hv => len_ld4 hv) (by norm_num) (by norm_num)
    (by simp)) ?_
  exact hk _ _ wm mg e_mg (Or.inl (Or.inl (Or.inl (Or.inl e_mgS)))) M3

theorem cpt_c10 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPreX E) (hQT : LocIns QT) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hk : ∀ (En' : Env) (S' : FS) (aaw akw : BitVec 64),
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl L →
      En' (nm "aa") = some (.val (.word aaw)) → En' (nm "ak") = some (.val (.word akw)) →
      S' (Fct.obj aaw tHTh20 0) → S' (Fct.obj akw tHTh52 0) →
      CW' (PA E En' S') ptS104 (cbd ptS104) QT) :
    CW' (PA E En S) ptS87 (cbd ptS87) QT := by
  obtain ⟨pav, hlook, o0, ho0, hb0, ht0, hsz0, hbd0⟩ := pre_pa hP.toPtPre
  have hnvb : nv.toNat < 2 ^ 58 := nalOK_lt hP.toPtPre K.A.hnv
  have hnkb : nkv.toNat < 2 ^ 58 := nk_bound hP.toPtPre K.A.hnv K.A.hnkv
  unfold ptS87
  refine cw_decHtabNew (locIns_resIns hQT _) tab_htab_new_20_64 (fun g ty h => (K.A.C0.gl g ty h).1) ?_
  intro aaw
  have K1 := msk_setF K (x := nm "aa") (by decide) (by unfold AdV; decide) (by decide) (.val (.word aaw))
    [Fct.obj aaw tHTh20 0] (by intro X hX; simp at hX; subst hX; simp [Fct.reads])
  unfold ptS89
  refine cw_seqN hn_skip ?_
  unfold ptS90
  refine cw_seqN (hn_hset (th := tHTh20) (n := 20) (m := 24) (kw := w) (csOK_htab_set tHTh20 (by decide))
    tab_htab_set_20 (aaE := nm "aa") (kE := lv (nm "sender")) (env_set_self _ _ _) (Or.inr (by simp)) ?_
    K1.A.C0.bsd (by norm_num) (fun g ty h => (K1.A.C0.gl g ty h).1)) ?_
  · intro s hpa
    exact evI_lv (hpa.2 _ _ K1.A.C0.sd)
  unfold ptS91
  refine cw_seqN hn_skip ?_
  unfold ptS92
  refine cw_ghostF (Fct.obj pav tB360 360) ?_ ?_
  · intro s hpa D Γ p hr hL
    obtain ⟨o', ho', hb', ht', hs'⟩ := ptRun_ext hr o0 ho0
    exact ⟨o', ho', hb'.trans hb0, ht'.trans ht0, le_trans hsz0 hs'⟩
  refine cw_ghostF (Fct.prop (pav.toNat + 360 ≤ heapEnd)) (fun s hpa D Γ p hr hL => hbd0) ?_
  refine cw_seqN (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv)) ?_
  unfold ptS93
  have hGl2 : ∀ g ty, (addF (addF (addF S [Fct.obj aaw tHTh20 0]) [Fct.obj pav tB360 360])
      [Fct.prop (pav.toNat + 360 ≤ heapEnd)]) (Fct.gobj g ty) → cW.contains g = false :=
    hgl_addF (hgl_addF (hgl_addF (fun g ty h => (K.A.C0.gl g ty h).1) (by simp)) (by simp)) (by simp)
  refine cw_seqN (pt_loopA (aaw := aaw) (pav := pav) (En := En.set (nm "aa") (.val (.word aaw)))
    (env_set_self _ _ _) (Or.inl (Or.inl (Or.inr (by simp)))) (Or.inl (Or.inr (by simp))) (Or.inr (by simp))
    (fun En' s hpa => pa_glob_pav hlook s hpa) hGl2) ?_
  unfold ptS94
  refine cw_seqN (hn_post (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv))
    (fun t _ h => by rwa [env_set_set] at h)) ?_
  unfold ptS96
  have e_wa : (En.set (nm "aa") (.val (.word aaw))) (nm "al_addrs") = some (.val (.word wa)) := by
    rw [env_set_ne _ _ (by decide)]; exact K.A.hwa
  have e_nal : (En.set (nm "aa") (.val (.word aaw))) (nm "nal") = some (.val (.word nv)) := by
    rw [env_set_ne _ _ (by decide)]; exact K.A.hnal
  refine cw_seqN (pt_loopB (aaw := aaw) (wa := wa) (nv := nv) (nbl := nbl) (env_set_self _ _ _) e_wa e_nal
    (by omega) (Or.inl (Or.inl (Or.inr (by simp)))) (Or.inl (Or.inl (Or.inl K.A.harrf))) hGl2) ?_
  unfold ptS97
  refine cw_seqN hn_skip ?_
  unfold ptS99
  refine cw_decHtabNew (locIns_resIns hQT _) tab_htab_new_52_16 hGl2 ?_
  intro akw
  unfold ptS100
  refine cw_seqN (hassignS (w' := 0) (fun s hpa v hv => evI_cw s 0 v hv)) ?_
  unfold ptS101
  have e_al : ((((En.set (nm "aa") (.val (.word aaw))).set (nm "i")
      (.val (.word (BitVec.ofNat 64 (nv.toNat + 1))))).set (nm "ak") (.val (.word akw)))) (nm "al_keys")
      = some (.val (.word ak)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact K.A.hak
  have e_nk : ((((En.set (nm "aa") (.val (.word aaw))).set (nm "i")
      (.val (.word (BitVec.ofNat 64 (nv.toNat + 1))))).set (nm "ak") (.val (.word akw)))) (nm "nkeys")
      = some (.val (.word nkv)) := by
    rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact K.A.hnk
  refine cw_seqN (pt_loopC (akw := akw) (ak := ak) (nkv := nkv) (env_set_self _ _ _) e_al e_nk (by omega)
    (Or.inr (by simp)) (Or.inl (Or.inl (Or.inl (Or.inl K.A.hobj)))) (Or.inl (Or.inl (Or.inl (Or.inl K.A.hppk))))
    (hgl_addF hGl2 (by simp))) ?_
  unfold ptS102
  refine cw_seqN hn_skip ?_
  refine hk _ _ aaw akw (msk_gen K (Lf := [Fct.obj aaw tHTh20 0, Fct.obj pav tB360 360,
      Fct.prop (pav.toNat + 360 ≤ heapEnd), Fct.obj akw tHTh52 0]) ?_ ?_ ?_ ?_ ?_) ?_ ?_ ?_ ?_
  · intro y hy u h
    obtain ⟨h1, h2, h3⟩ := msv_ne3 hy
    rw [env_set_ne _ _ h2, env_set_ne _ _ h3, env_set_ne _ _ h2, env_set_ne _ _ h1]; exact h
  · intro f hf
    exact Or.inl (Or.inl (Or.inl (Or.inl hf)))
  · intro f hf
    rcases hf with (((hf | hf) | hf) | hf) | hf
    · exact Or.inl hf
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
    · exact Or.inr (by simp at hf ⊢; tauto)
  · intro X hX; simp at hX; rcases hX with rfl | rfl | rfl | rfl <;> simp [Fct.reads]
  · exact un_set (un_set (un_set (un_set K.A.C0.un (by decide) _) (by decide) _) (by decide) _) (by decide) _
  · rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]; exact env_set_self _ _ _
  · rw [env_set_ne _ _ (by decide)]; exact env_set_self _ _ _
  · exact Or.inl (Or.inl (Or.inl (Or.inr (by simp))))
  · exact Or.inr (by simp)

end InitECandidate.Solver.MemSafe.PtC
