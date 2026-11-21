import InitECandidate.Solver.MemSafe.PtC.T2

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

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

theorem ctl_end (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → BlkC K a)
    (hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a)
    (hrc : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), TlS K.A ref Z O u Γ p →
      Z (K.E.rcs + K.E.idx * 16) ∧ Z (K.E.rcs + K.E.idx * 16 + 8) ∧
        Hooks.VInR tVAL Γ (ref (K.E.rcs + K.E.idx * 16)) (ref (K.E.rcs + K.E.idx * 16 + 8)))
    (h80 : Z (K.out + BitVec.ofNat 64 80) ∧ ref (K.out + BitVec.ofNat 64 80) = K.ref0 (K.out + BitVec.ofNat 64 80))
    (h88 : Z (K.out + BitVec.ofNat 64 88) ∧ ref (K.out + BitVec.ofNat 64 88) = K.ref0 (K.out + BitVec.ofNat 64 88))
    (hmv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
      MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88)))
    (hout : En (nm "out") = some (.val (.word K.out))) (hmkv : En (nm "tx_frame_mark") = none) :
    CW' (PAg (TL K.A ref Z O) En) ptS170 (cbd ptS170) (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hB := bloc_tl K.A ref Z (O := O)
  have hQT := locIns_tail K
  unfold ptS170
  refine cw_seqC (cw_incorp hP hgs (fun a ha => blkC_inl (hBC a ha))) ?_
  unfold ptS172
  set mk := K.ref0 (K.out + BitVec.ofNat 64 80) with hmkdef
  set mm := K.ref0 (K.out + BitVec.ofNat 64 88) with hmmdef
  refine cw_decT_g hB (locIns_resIns hQT _) (w := mk) ?_ ?_
  · intro s hpa v hv
    obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
    have h1 := evI_ld (evI_add (evI_lv (hlk _ _ hout)) (evI_cw s 80))
    have h2 := h1 v hv
    rw [h2]
    show ValueHOL.val (HolWordLab.word (rd s.memory (K.out + BitVec.ofNat 64 80))) = _
    rw [hr.keep _ h80.1, h80.2]
  unfold ptS173
  have hoL : ∀ x : ValueHOL 64, (En.set (nm "tx_frame_mark") x) (nm "out") = some (.val (.word K.out)) := fun x => by
    rw [env_set_ne _ _ (by decide)]; exact hout
  refine cw_seqN (P1 := fun t => TailPost K t) ?_ ?_
  · unfold ptS174
    refine hn_ite ?_ ?_
    · -- release
      refine hoare_of_eq' fun s hs ⟨hpa, hc⟩ => ?_
      obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
      have hmid := tailMid_of_tl hP hr hblk (hrc Γ p s hr)
      have hmk0 : s.locals.lookup (nm "tx_frame_mark") = some (.val (.word mk)) := hlk _ _ (env_set_self _ _ _)
      have hout0 : s.locals.lookup (nm "out") = some (.val (.word K.out)) := hlk _ _ (hoL _)
      have hm80 : rd s.memory (K.out + BitVec.ofNat 64 80) = mk := by rw [hr.keep _ h80.1, h80.2]
      have hm88 : rd s.memory (K.out + BitVec.ofNat 64 88) = mm := by rw [hr.keep _ h88.1, h88.2]
      have hmkne : mk ≠ 0 := cond_ne_gen (evI_lv hmk0) (evI_cw s 0) hc
      have hrel := hoare_rel (Γ := keepG Γ) (u0 := s) hmid.hG hmid.heap hout0 hmk0 hm80 hm88 (hmv hmkne)
      exact hoare_post hrel fun r t _ _ h => ⟨h.1, tailPost_rel hmid h.2⟩
    · refine hoare_skip fun s hs ⟨hpa, hc⟩ => ⟨rfl, ?_⟩
      obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
      exact tailPost_of_mid (tailMid_of_tl hP hr hblk (hrc Γ p s hr))
  · refine cw_leafN (hoare_return fun s hs hp v hv => ?_)
    have hv0 : v = .val (.word 0) := (evI_cw s 0) v hv
    subst hv0
    exact ⟨rfl, tailPost_loc hp s.locals s.clock⟩

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

theorem ctl_g1 {RLv l : BitVec 64} (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → BlkC K a)
    (hblk : ∀ a, BlkC K a → ¬ K.Wt a → Z a ∧ ref a = K.ref0 a)
    (hrc : ∀ (Γ : Gam) (p : Ptrs) (u : State σ), TlS K.A ref Z O u Γ p →
      Z (K.E.rcs + K.E.idx * 16) ∧ Z (K.E.rcs + K.E.idx * 16 + 8) ∧
        Hooks.VInR tVAL Γ (ref (K.E.rcs + K.E.idx * 16)) (ref (K.E.rcs + K.E.idx * 16 + 8)))
    (h80 : Z (K.out + BitVec.ofNat 64 80) ∧ ref (K.out + BitVec.ofNat 64 80) = K.ref0 (K.out + BitVec.ofNat 64 80))
    (h88 : Z (K.out + BitVec.ofNat 64 88) ∧ ref (K.out + BitVec.ofNat 64 88) = K.ref0 (K.out + BitVec.ofNat 64 88))
    (hmv : K.ref0 (K.out + BitVec.ofNat 64 80) ≠ 0 →
      MarkVals (K.ref0 (K.out + BitVec.ofNat 64 80)) (K.ref0 (K.out + BitVec.ofNat 64 88)))
    (h24 : Z (K.out + BitVec.ofNat 64 24) ∧ ref (K.out + BitVec.ofNat 64 24) = K.ref0 (K.out + BitVec.ofNat 64 24))
    (hz72 : Z (K.E.bo + BitVec.ofNat 64 72) ∧ ref (K.E.bo + BitVec.ofNat 64 72) = RLv)
    (hRL : ∃ o ∈ K.E.Γ0, o.base = RLv ∧ o.ty = tLSTh)
    (hout : En (nm "out") = some (.val (.word K.out))) (hrl : En (nm "rl") = none)
    (hsl : En (nm "stable_logs") = some (.val (.word l)))
    (hdel : En (nm "del") = none) (hdcap : En (nm "dcap") = none) (hs : En (nm "s") = none)
    (hmkv : En (nm "tx_frame_mark") = none) :
    CW' (PAg (TL K.A ref Z O) En) ptS165 (cbd ptS165) (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hQT := locIns_tail K
  refine ctb5 hP hQT hz72 hRL (fun a ha => blkC_inl (hBC a ha)) hrl hsl ?_
  refine Eb.cw_pre (P := PAg (TL K.A ref Z O) (En.drop (nm "i"))) ?_ (fun s _ h => pag_drop h _)
  have hne : ∀ y : MlS, y ≠ nm "i" → En.drop (nm "i") y = En y := fun y h => env_drop_ne _ h
  refine ctb6 hP hQT h24 (by rw [hne _ (by decide)]; exact hout) (by rw [hne _ (by decide)]; exact hdel)
    (by rw [hne _ (by decide)]; exact hdcap) (by rw [hne _ (by decide)]; exact hs) (env_drop_none _ _) ?_
  exact ctl_end hP hgs hBC hblk hrc h80 h88 hmv (by rw [hne _ (by decide)]; exact hout)
    (by rw [hne _ (by decide)]; exact hmkv)

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}
  {rp rl : BitVec 64} {buf n : Nat}

theorem ctl_g2 {nlw : BitVec 64} (hP : TlPre K) (hgs : Bal.HGS σ) (F : BackF K ref Z rp rl buf n)
    (hx : (⟨BitVec.ofNat 64 buf, tVAL, n⟩ : Obj) ∈ O)
    (hnl : En (nm "nl") = some (.val (.word nlw))) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hslot : En (nm "slot") = none) (hi : En (nm "i") = none) (hcap : En (nm "stable_log_cap") = none)
    (hsl : En (nm "stable_logs") = none) (hlp : En (nm "stable_lp") = none) (hrl : En (nm "rl") = none)
    (hout : En (nm "out") = some (.val (.word K.out)))
    (hdel : En (nm "del") = none) (hdcap : En (nm "dcap") = none) (hs : En (nm "s") = none)
    (hmkv : En (nm "tx_frame_mark") = none) :
    CW' (PAg (TL K.A ref Z O) En) ptS155 (cbd ptS155) (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hQT := locIns_tail K
  have hLL : ∃ o ∈ K.E.Γ0, o.base = K.ref0 (K.E.bo + BitVec.ofNat 64 40) ∧ o.ty = tLSTh := hP.B.logsObj
  have hRL : ∃ o ∈ K.E.Γ0, o.base = K.ref0 (K.E.bo + BitVec.ofNat 64 72) ∧ o.ty = tLSTh := hP.B.rlogsObj
  refine ctb2 hP F.h40 hLL (fun a ha => blkC_inl (F.hBC a ha)) hslot hi ?_
  refine ctb3a hQT hnl hcap ?_
  set En1 := En.set (nm "stable_log_cap") (.val (.word (capOf nlw))) with hEn1
  have hnl1 : En1 (nm "nl") = some (.val (.word nlw)) := by rw [hEn1]; envne; exact hnl
  have hcap1 : En1 (nm "stable_log_cap") = some (.val (.word (capOf nlw))) := env_set_self _ _ _
  have hsl1 : En1 (nm "stable_logs") = none := by rw [hEn1]; envne; exact hsl
  have hlp1 : En1 (nm "stable_lp") = none := by rw [hEn1]; envne; exact hlp
  have hi1 : En1 (nm "i") = none := by rw [hEn1]; envne; exact hi
  refine ctb3b hP hQT (fun a ha => blkC_inl (F.hBC a ha)) hnl1 hnlb hcap1 hsl1 hlp1 hi1 ?_
  intro l q
  set c := (capOf nlw).toNat with hcdef
  have hxO : (⟨BitVec.ofNat 64 buf, tVAL, n⟩ : Obj) ∈ O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩] := by
    simp [hx]
  have harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ O ++ [⟨q, tLSTAh, 8 * c⟩] ++ [⟨l, tLSTh, 24⟩] := by simp
  have hspE : ((En1.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q)))
      (nm "stable_lp") = some (.val (.word q)) := env_set_self _ _ _
  have hnlE : ((En1.set (nm "stable_logs") (.val (.word l))).set (nm "stable_lp") (.val (.word q)))
      (nm "nl") = some (.val (.word nlw)) := by envne; exact hnl1
  refine ctb4 (nlw := nlw) (fun a ha => blkC_inl (F.hBC a ha)) harr capOf_ge hnlb hspE hnlE ?_
  refine ctl_g1 (l := l) hP hgs F.hBC F.hblk ?_ F.h80 F.h88 F.hmv F.h24 F.h72 hRL ?_ ?_ ?_ ?_ ?_ ?_ ?_
  · intro Γ p u h
    exact ⟨F.c1.1, F.c2.1, by
      rw [F.c1.2, F.c2.2]
      exact rc_fact h hxO F.rcb.1 F.rcb.2.1 F.rcb.2.2.1 F.rcb.2.2.2⟩
  · envne; exact hout
  · envne; exact hrl
  · envne; exact env_set_self _ _ _
  · envne; exact hdel
  · envne; exact hdcap
  · envne; exact hs
  · envne; exact hmkv

end

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {lw rp rl : BitVec 64}
  {buf n : Nat}

theorem ctl_g3 (hP : TlPre K) (hgs : Bal.HGS σ) (hL : LgOut K ref Z O lw)
    (hrl : 1 ≤ rl.toNat) (hb1 : buf ≤ rp.toNat) (hb2 : rp.toNat + rl.toNat ≤ buf + n) (hb3 : buf + n < 2 ^ 64) :
    CW' (PAg (TL K.A ref Z (O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩])) (En3 K lw rp rl)) ptS148 (cbd ptS148) (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) := by
  have hL' := lgOut_O (O' := O ++ [⟨BitVec.ofNat 64 buf, tVAL, n⟩]) (fun o ho => List.mem_append_left _ ho) hL
  have hb32 : Z (K.E.bo + BitVec.ofNat 64 32) ∧ ref (K.E.bo + BitVec.ofNat 64 32) = K.E.rcs := by
    have hk := bo_kc hP (j := 4) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    have := hL.hz _ hk.2
    refine ⟨this.1, ?_⟩
    rw [this.2]
    exact hP.B.hrcs
  refine ctb1 hP (locIns_tail K) hL' hb32 ?_
  intro ref2 Z2 nlw hz21 hz2s hc1 hc2 hnl
  let Z3 : BitVec 64 → Prop := fun a => Z2 a ∧ BlkC K a
  have key : ∀ a, BlkC K a → Za K a → Z3 a ∧ ref2 a = K.ref0 a := fun a hb hza => by
    obtain ⟨hZ, hr⟩ := hL.hz a hza
    obtain ⟨hZ2, hr2⟩ := hz21 a hZ
    exact ⟨⟨hZ2, hb⟩, by rw [hr2, hr]⟩
  have hbc1 := blk_wt hP (wt_c1 K)
  have hbc2 := blk_wt hP (wt_c2 K)
  have hnb : nlw.toNat ≤ 2 ^ 25 := by rw [hnl]; exact hL.nb
  have F : BackF K ref2 Z3 rp rl buf n :=
    { hBC := fun a ha => ha.2
      hblk := fun a hb hw => key a hb (za_of_blk hb hw)
      c1 := ⟨⟨hc1.1, hbc1⟩, hc1.2⟩
      c2 := ⟨⟨hc2.1, hbc2⟩, hc2.2⟩
      h80 := key _ (out_kc hP (off := 80) (by norm_num) (by norm_num)).1 (out_kc hP (off := 80) (by norm_num) (by norm_num)).2
      h88 := key _ (out_kc hP (off := 88) (by norm_num) (by norm_num)).1 (out_kc hP (off := 88) (by norm_num) (by norm_num)).2
      hmv := hP.mv
      h24 := key _ (out_kc hP (off := 24) (by norm_num) (by norm_num)).1 (out_kc hP (off := 24) (by norm_num) (by norm_num)).2
      h40 := key _ (bo_kc hP (j := 5) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).1
        (bo_kc hP (j := 5) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).2
      h72 := key _ (bo_kc hP (j := 9) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).1
        (bo_kc hP (j := 9) (by norm_num) (by norm_num) (by norm_num) (by norm_num) (by norm_num)).2
      rcb := ⟨hrl, hb1, hb2, hb3⟩ }
  refine Eb.cw_pre (ctl_g2 (Z := Z3) (En := (En3 K lw rp rl).set (nm "nl") (.val (.word nlw))) hP hgs F
    (List.mem_append_right _ (List.mem_singleton.mpr rfl)) (env_set_self _ _ _) hnb ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_ ?_)
    (fun s _ h => pag_restrict h (fun a ha => ha.1))
  all_goals first
    | (rw [env_set_ne _ _ (by decide)]
       exact en3_none K lw rp rl (by decide) (by decide) (by decide) (by decide) (by decide))
    | (rw [env_set_ne _ _ (by decide)]; unfold En3; rw [env_set_ne _ _ (by decide), env_set_ne _ _ (by decide)]
       exact enT0_out K)

end

theorem ctl_tail {K : TlCtx σ} (hP : TlPre K) (hR : HypRcpt σ) (hgs : Bal.HGS σ) :
    CW' (PAg (TL K.A K.ref0 (Za K) ([] : List Obj)) (EnT0 K)) ptS114 (cbd ptS114) (fun r t => r = some (.returned (.val (.word 0))) ∧ TailPost K t) :=
  ctl_p1 hP (locIns_tail K) (ctl_p2 hP (ctl_p3 hP (locIns_tail K) (fun ref Z lw hL =>
    ctl_p4 hP hR hL (locIns_tail K) (fun rp rl buf n h1 h2 h3 h4 => ctl_g3 hP hgs hL h1 h2 h3 h4))))

end InitECandidate.Solver.MemSafe.PtC
