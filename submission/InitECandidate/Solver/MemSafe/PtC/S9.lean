import InitECandidate.Solver.MemSafe.PtC.S8

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

theorem cw_ex2 {E : PtE σ} {En : Env} {S : FS} {wm : BitVec 64} {c : ProgHOL 64} {B : Nat}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} {t0 : BitVec 64}
    (h : ∀ v32 v96 v120 : BitVec 64, CW' (PA E En (Sb S wm v32 v96 v120 t0)) c B Q) :
    CW' (fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 t0) t) c B Q :=
  cw_pre_ex fun s _ ⟨a, d, b, hp⟩ => ⟨_, hp, h a d b⟩

theorem cpt_branch {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm we : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0) (hemp : En (nm "empty") = some (.val (.word we)))
    (hsa : En (nm "sa") = none) (hct : En (nm "ct") = none)
    (hk : ∀ v32 v96 v120 : BitVec 64,
      MsK E En (Sc S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) rp rl buf n CV w wt wa ak nv nkv wm nbl
        ((120, v120) :: (96, v96) :: (32, v32) :: L) →
      CW' (PA E En (Sc S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)))) ptS108 (cbd ptS108) QT) :
    CW' (PA E En S) ptS105 (cbd ptS105) QT := by
  have htx := K.A.C0.tx
  unfold ptS105
  refine cw_seqN (P1 := fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) t)
    (hn_ite (P := PA E En S) (c := .cmp .equal (.load .one (.op .add [lv (nm "tx"), cw 152])) (cw 0)) ?_ ?_) ?_
  · by_cases hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0
    · exact hn_pre (pt_then hP K hL hemp hsa hct hTO) (fun s _ h => h.1)
    · intro s hs ⟨hpa, w', hw, hw0⟩
      exfalso
      exact hTO (cond_eq_gen (evI_ldtx hP htx (by norm_num) (by norm_num) s hpa) (evI_cw s 0)
        (condTrue_iff.mpr ⟨w', hw, hw0⟩))
  · by_cases hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0
    · intro s hs ⟨hpa, hw⟩
      exfalso
      exact cond_eq_gen_false (evI_ldtx hP htx (by norm_num) (by norm_num) s hpa) (evI_cw s 0) hw hTO
    · exact hn_pre (pt_else hP K hL hemp hTO) (fun s _ h => h.1)
  · refine cw_ex2 (fun v32 v96 v120 => ?_)
    unfold ptS106
    refine cw_seqN hn_skip ?_
    have K5a := msk_addF K [Fct.bufok0 v32 20]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_bufok0 _ _)
    have K5b := msk_addF K5a [Fct.prop (v120.toNat + 63 < 2 ^ 64)]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
    have K5b2 := msk_addF K5b [Fct.prop (v96.toNat < 2 ^ 32)]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
    have K5c := msk_addM K5b2 (off := 32) (x := v32) (by norm_num) (by norm_num)
    have K5c2 := msk_addM K5c (off := 96) (x := v96) (by norm_num) (by norm_num)
    have K5d := msk_addM K5c2 (off := 120) (x := v120) (by norm_num) (by norm_num)
    have K5e := msk_addF K5d [tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_tgtF _ _)
    exact Eb.cw_pre (hk v32 v96 v120 K5e) (fun t _ ht => pa_mono ht (fun x v h => h) (sc_sub_sb S wm v32 v96 v120 _))

theorem cpt_c11 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm aaw akw : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (hQT : LocIns QT) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0)
    (haa : En (nm "aa") = some (.val (.word aaw))) (hak' : En (nm "ak") = some (.val (.word akw)))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0))
    (hk : ∀ (En' : Env) (S' : FS) (v32 v96 v120 : BitVec 64),
      MsK E En' S' rp rl buf n CV w wt wa ak nv nkv wm nbl ((120, v120) :: (96, v96) :: (32, v32) :: L) →
      En' (nm "aa") = some (.val (.word aaw)) → En' (nm "ak") = some (.val (.word akw)) →
      S' (Fct.obj aaw tHTh20 0) → S' (Fct.obj akw tHTh52 0) →
      S' (Fct.bufok0 v32 20) → S' (Fct.prop (v120.toNat + 63 < 2 ^ 64)) →
      S' (Fct.prop (v96.toNat < 2 ^ 32)) →
      S' (tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32) →
      CW' (PA E En' S') ptS108 (cbd ptS108) QT) :
    CW' (PA E En S) ptS104 (cbd ptS104) QT := by
  unfold ptS104
  refine cw_decAllocF (locIns_resIns hQT _) (e := cw 8) (n := BitVec.ofNat 64 8) (fun s _ => evI_cw s 8)
    (fun g ty h => (K.A.C0.gl g ty h).1) ?_
  intro we
  have K4 := msk_setF K (x := nm "empty") (by decide) (by unfold AdV; decide) (by decide)
    (.val (.word we)) [Fct.fbuf we (BitVec.ofNat 64 8).toNat,
      Fct.prop (we.toNat % 8 = 0 ∧ heapBase ≤ we.toNat ∧ we.toNat + (BitVec.ofNat 64 8).toNat ≤ heapEnd)]
    (by intro X hX; simp at hX; rcases hX with rfl | rfl
        · exact benign_fbuf _ _
        · exact benign_prop _)
  have Kp := msk_gen K4 (En' := ((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct"))
    (Lf := []) (S' := addF S [Fct.fbuf we (BitVec.ofNat 64 8).toNat,
      Fct.prop (we.toNat % 8 = 0 ∧ heapBase ≤ we.toNat ∧ we.toNat + (BitVec.ofNat 64 8).toNat ≤ heapEnd)])
    (by intro y hy u h
        obtain ⟨h1, h2⟩ := msv_ne_sact hy
        rw [env_del_ne _ h2, env_del_ne _ h1]; exact h)
    (fun f h => h) (fun f h => Or.inl h) (by intro X hX; simp at hX)
    (by intro y hy
        simp only [Env.del]
        split_ifs <;> first | rfl | exact un_set K.A.C0.un (by decide) _ y hy)
  have hemp : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "empty")
      = some (.val (.word we)) := by
    rw [env_del_ne _ (by decide), env_del_ne _ (by decide)]; exact env_set_self _ _ _
  have hsa : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "sa") = none := by
    rw [env_del_ne _ (by decide)]; exact env_del_self _ _
  have hct : (((En.set (nm "empty") (.val (.word we))).del (nm "sa")).del (nm "ct")) (nm "ct") = none :=
    env_del_self _ _
  refine Eb.cw_pre (cpt_branch hP Kp hL hemp hsa hct ?_) (fun t _ ht => pa_del (pa_del ht _) _)
  intro v32 v96 v120 Kc
  refine hk _ _ v32 v96 v120 Kc ?_ ?_ ?_ ?_ (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp))))))))
    (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp)))))))
    (Or.inl (Or.inl (Or.inl (Or.inl (Or.inr (by simp)))))) (Or.inr (by simp))
  · rw [env_del_ne _ (by decide), env_del_ne _ (by decide), env_set_ne _ _ (by decide)]; exact haa
  · rw [env_del_ne _ (by decide), env_del_ne _ (by decide), env_set_ne _ _ (by decide)]; exact hak'
  · exact sc_ofS _ _ _ _ _ _ _ (Or.inl hoa)
  · exact sc_ofS _ _ _ _ _ _ _ (Or.inl hoak)

theorem cpt_c12 {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm aaw akw v32 v96 v120 : BitVec 64}
    {nbl : Nat} {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl ((120, v120) :: (96, v96) :: (32, v32) :: L))
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0)
    (haa : En (nm "aa") = some (.val (.word aaw))) (hak' : En (nm "ak") = some (.val (.word akw)))
    (hoa : S (Fct.obj aaw tHTh20 0)) (hoak : S (Fct.obj akw tHTh52 0)) (hb32 : S (Fct.bufok0 v32 20))
    (hd96 : S (Fct.prop (v96.toNat < 2 ^ 32)))
    (hk : ∀ (S' : FS), MsK E En S' rp rl buf n CV w wt wa ak nv nkv wm nbl (MsL L v32 v96 v120 aaw akw) →
      (∀ f, S f → S' f) → CW' (PA E En S') ptS113 (cbd ptS113) QT) :
    CW' (PA E En S) ptS108 (cbd ptS108) QT := by
  have hL' : ∀ p ∈ (120, v120) :: (96, v96) :: (32, v32) :: L, p.1 ≤ 120 := by
    intro p hp
    simp only [List.mem_cons] at hp
    rcases hp with rfl | rfl | rfl | hp
    · norm_num
    · norm_num
    · norm_num
    · have := (hL p hp).1; omega
  unfold ptS108
  refine cw_seqN (hn_stMs K (off := 136) (k := 1) (hlen_cw 1) (by norm_num) (by norm_num)
    (fun p hp => by have := hL' p hp; omega)) ?_
  unfold ptS109
  have hm32 : S (Fct.memw (wm + BitVec.ofNat 64 32) v32) :=
    (K.hL (32, v32) (by simp)).2.2
  refine cw_seqN (hn_hset (th := tHTh20) (n := 20) (m := 20) (kw := v32) (csOK_htab_set tHTh20 (by decide))
    tab_htab_set_20 (aaE := nm "aa") (kE := .load .one (.op .add [lv (nm "m"), cw 32])) haa hoa ?_ hb32 le_rfl
    (fun g ty h => (K.A.C0.gl g ty h).1)) ?_
  · intro s hpa
    have hm := pa_memw hpa hm32
    have := evI_ld (evI_add (evI_lv (hpa.2 _ _ K.hm)) (evI_cw s 32))
    rw [hm] at this
    exact this
  unfold ptS110
  refine cw_seqN hn_skip ?_
  unfold ptS111
  refine cw_seqN (hn_c9_one K (off := 152) (x := aaw) (e := lv (nm "aa")) (fun s hpa => evI_lv (hpa.2 _ _ haa))
    (by norm_num) (by norm_num) (fun p hp => by have := hL' p hp; omega)) ?_
  have K1 := msk_addM K (off := 152) (x := aaw) (by norm_num) (by norm_num)
  unfold ptS112
  refine cw_seqN (hn_c9_one K1 (off := 160) (x := akw) (e := lv (nm "ak")) (fun s hpa => evI_lv (hpa.2 _ _ hak'))
    (by norm_num) (by norm_num) (fun p hp => by
      rcases List.mem_cons.mp hp with rfl | hp
      · norm_num
      · have := hL' p hp; omega)) ?_
  have K2 := msk_addM K1 (off := 160) (x := akw) (by norm_num) (by norm_num)
  exact hk _ K2 (fun f hf => Or.inl (Or.inl hf))

end InitECandidate.Solver.MemSafe.PtC
