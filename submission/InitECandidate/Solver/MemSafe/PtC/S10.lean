import InitECandidate.Solver.MemSafe.PtC.T1

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

theorem ctl_p1 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hQT : LocIns QT)
    (hk : CW' (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS132 (cbd ptS132) QT) :
    CW' (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS114 (cbd ptS114) QT := by
  have hB := bloc_tl K.A K.ref0 (Za K) (O := O)
  unfold ptS114
  refine cw_decF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS115
  refine cw_decAnyT (locIns_resIns hQT _) tab_udiv_small5 (by simp) rfl udiv5_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS116
  refine cw_decAnyT (locIns_resIns hQT _) tab_min (by simp) rfl min_fin' rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS117
  refine cw_decF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS118
  refine cw_decAnyT (locIns_resIns hQT _) tab_max (by simp) rfl max_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS119
  refine cw_decF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS120
  refine cw_decAnyT (locIns_resIns hQT _) tab_fee_mul (by simp) rfl feemul_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS121
  refine cw_decAnyT (locIns_resIns hQT _) tab_u256_sub (by simp) rfl u256sub_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS122
  refine cw_decAnyT (locIns_resIns hQT _) tab_fee_mul (by simp) rfl feemul_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS123
  refine cw_seqN (hn_callT tab_create_ether csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) cether_fin
    (fun s hpa vs hvs Γ p hr => ?_)
    (fun s hpa vs hvs => by
      obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
      have hx' : x = .val (.word K.sender) := evI_lv (hpa.2 _ _ (enT0_sender K)) x hx
      subst hx'
      exact cether_argsY hP.sndY)) ?_
  · obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    exact cether_args_sender hP hpa hr hx
  unfold ptS124
  refine cw_seqN (hn_callT tab_create_ether csOK_tbl_jr_sk ⟨by decide, by decide⟩ (by decide) cether_fin
    (fun s hpa vs hvs Γ p hr => ?_)
    (fun s hpa vs hvs => by
      obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
      obtain ⟨Γ, p, hr⟩ := hpa.1
      have h1 : EvI s (.load .one (.op .add [gv (nm "be"), cw 32]))
          (.val (.word (rd s.memory (K.E.be + BitVec.ofNat 64 32)))) :=
        evI_ld (evI_add (evI_gv (tl_glob_be hr hP.B.hbe)) (evI_cw s 32))
      have hx' := h1 x hx
      subst hx'
      have hk32 := hr.keep _ (za_be hP (off := 32) (by norm_num) (by norm_num))
      rw [hk32]
      exact cether_argsY hP.coinY)) ?_
  · obtain ⟨x, y, rfl, hx, hy⟩ := evs2 hvs
    have h1 : EvI s (.load .one (.op .add [gv (nm "be"), cw 32]))
        (.val (.word (rd s.memory (K.E.be + BitVec.ofNat 64 32)))) :=
      evI_ld (evI_add (evI_gv (tl_glob_be hr hP.B.hbe)) (evI_cw s 32))
    have hx' := h1 x hx
    subst hx'
    have hk32 := hr.keep _ (za_be hP (off := 32) (by norm_num) (by norm_num))
    refine WaveHelpers.argsOK_2 ⟨_, rfl, ?_⟩ trivial
    rw [hk32]
    exact tl_bufOK hr hP.coin
  unfold ptS126
  refine cw_decF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS128
  refine cw_decF_g hB (locIns_resIns hQT _) (enT0_none K (by decide) (by decide) (by decide)) ?_
  unfold ptS129
  refine cw_seqN (hn_iteAssign hB (enT0_none K (by decide) (by decide) (by decide))) ?_
  unfold ptS130
  refine cw_decAnyT (locIns_resIns hQT _) tab_max (by simp) rfl max_fin rfl
    (enT0_none K (by decide) (by decide) (by decide)) ?_
  exact hk

theorem ctl_p2 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K)
    (hk : CW' (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS141 (cbd ptS141) QT) :
    CW' (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS132 (cbd ptS132) QT := by
  have hnz : ∀ c, K.Wt c → ¬ Za K c := fun c hc h => h.2 hc
  unfold ptS132
  refine cw_seqN (tl_st_bo hP (j := 0) (c := K.E.bo) (Or.inl rfl) (by simp) (hnz _ (Or.inl rfl))) ?_
  unfold ptS133
  refine cw_seqN (tl_st_bo hP (j := 8) (c := K.E.bo + 8) (Or.inr (Or.inl rfl)) rfl (hnz _ (Or.inr (Or.inl rfl)))) ?_
  unfold ptS135
  refine cw_seqN (tl_st_bo hP (j := 48) (c := K.E.bo + 48) (Or.inr (Or.inr (Or.inr (Or.inl rfl)))) rfl
    (hnz _ (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))) ?_
  unfold ptS137
  refine cw_seqN (tl_st_bo hP (j := 16) (c := K.E.bo + 16) (Or.inr (Or.inr (Or.inl rfl))) rfl
    (hnz _ (Or.inr (Or.inr (Or.inl rfl))))) ?_
  unfold ptS139
  refine cw_seqN hn_skip ?_
  exact hk

theorem ctl_p3 {K : TlCtx σ} {O : List Obj} {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hQT : LocIns QT)
    (hk : ∀ (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (lw : BitVec 64), LgOut K ref Z O lw →
      CW' (PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw)))) ptS143 (cbd ptS143) QT) :
    CW' (PAg (TL K.A K.ref0 (Za K) O) (EnT0 K)) ptS141 (cbd ptS141) QT := by
  have hB0 := bloc_tl K.A K.ref0 (Za K) (O := O)
  unfold ptS141
  refine cw_decT_g hB0 (locIns_resIns hQT _) (w := K.ref0 (K.out + BitVec.ofNat 64 16)) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ (enT0_out K))) (evI_cw s 16))
    have h2 := h1 v hv
    obtain ⟨o, ho, hb, ht, hs⟩ := hP.outO
    rw [hr.keep _ (za_out hP ho hb ht hs (off := 16) (by norm_num) (by norm_num))] at h2
    exact h2
  unfold ptS142
  have hlogs : (EnT0 K).set (nm "logs") (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) (nm "logs") =
      some (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) := env_set_self _ _ _
  let Qm : State σ → Prop := fun t => ∃ (ref : BitVec 64 → BitVec 64) (Z : BitVec 64 → Prop) (lw : BitVec 64),
    LgOut K ref Z O lw ∧ PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw))) t
  refine cw_seqN (P1 := Qm) ?_ ?_
  · refine hn_ite ?_ ?_
    · refine hn_post (hn_pre (hn_lstNew1 (K := K) (ref := K.ref0) (Z := Za K) hP.B
        (En := (EnT0 K).set (nm "logs") (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16))))) (nm "logs"))
        (fun s _ h => h.1)) ?_
      intro t _ ⟨l, ref', Z', hz, hsub, h0, h8, hN, hwt, hpa⟩
      refine ⟨ref', Z', l, ⟨fun a ha => hz a ha, hsub, fun s Γ p hr => logsK_fresh hr h0 h8 hN,
        fun ref'' Z'' s Γ p hr hpre => by rw [hr.keep _ (hpre _ h8).1, (hpre _ h8).2], hwt, by rw [hN]; simp⟩, ?_⟩
      exact pag_mono hpa (fun y v h => by rw [env_set_set_same]; exact h) (fun s h => h)
    · refine hoare_skip fun s _ ⟨hpa, hc⟩ => ⟨rfl, ?_⟩
      have hA : EvI s (lv (nm "logs")) (.val (.word (K.ref0 (K.out + BitVec.ofNat 64 16)))) :=
        evI_lv (hpa.2 _ _ hlogs)
      have hne := cond_eq_gen_false hA (evI_cw s 0) hc
      have hne' : K.ref0 (K.out + BitVec.ofNat 64 16) ≠ 0 := hne
      exact ⟨K.ref0, Za K, _, lgOut_old hP hne', hpa⟩
  · exact cw_pre_ex fun s hs ⟨ref, Z, lw, hLg, hp⟩ => ⟨_, hp, hk ref Z lw hLg⟩

theorem ctl_p4 {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {lw : BitVec 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} (hP : TlPre K) (hR : HypRcpt σ) (hLg : LgOut K ref Z O lw)
    (hQT : LocIns QT)
    (hk : ∀ (rp rl : BitVec 64) (buf n : Nat), 1 ≤ rl.toNat → buf ≤ rp.toNat → rp.toNat + rl.toNat ≤ buf + n →
      buf + n < 2 ^ 64 →
      CW' (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]))
        (((EnT0 K).set (nm "logs") (.val (.word lw))).set (nm "rc") (wv [rp, rl]))) ptS148 (cbd ptS148) QT) :
    CW' (PAg (TL K.A ref Z O) ((EnT0 K).set (nm "logs") (.val (.word lw)))) ptS143 (cbd ptS143) QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS143
  refine cw_decF_g hB (locIns_resIns hQT _)
    (enL_none K _ (by decide) (by decide) (by decide) (by decide)) ?_
  unfold ptS145
  refine cw_seqN (hn_iteAssign hB (enL_none K _ (by decide) (by decide) (by decide) (by decide))) ?_
  unfold ptS146
  exact cw_rcpt hP hR hLg (locIns_resIns hQT _) (env_set_self _ _ _) hk

end InitECandidate.Solver.MemSafe.PtC
