import InitECandidate.Solver.MemSafe.Stor3.Ss

set_option autoImplicit false

/-!
# `op_sstore`'s step spec (sonnet-store3)
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem s3_oc : callCl s3E true (nm "u256_eq") [lv (nm "original"), lv (nm "current")] = some true := by
  decide +kernel
theorem s3_cn : callCl s3E true (nm "u256_eq") [lv (nm "current"), lv (nm "new_value")] = some true := by
  decide +kernel
theorem s3_on : callCl s3E true (nm "u256_eq") [lv (nm "original"), lv (nm "new_value")] = some true := by
  decide +kernel
theorem s3_oz : callCl s3E true (nm "u256_is_zero") [lv (nm "original")] = some true := by
  decide +kernel
theorem s3_cz : callCl s3E true (nm "u256_is_zero") [lv (nm "current")] = some true := by
  decide +kernel
theorem s3_nz : callCl s3E true (nm "u256_is_zero") [lv (nm "new_value")] = some true := by
  decide +kernel


/-- `if c { x = e }; q` -/
theorem hseq_asg {K : Nat → State σ → Prop} (hK : KOK K) {b : Bool} {u0 : State σ}
    (hu : K (bd b) u0) (c : ExpHOL 64) (x : MlS) (e : ExpHOL 64) {q : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hq : ∀ u : State σ, K (bd b) u → (∀ y, y ≠ x → u.locals.lookup y = u0.locals.lookup y) →
      HoareG σ guestCtx (fun t => t = u) q Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (.ite c (.assign .local x e) .skip) q) Q :=
  hoareG_seq (R := fun ro t => ro = none ∧ K (bd b) t ∧
      ∀ y, y ≠ x → t.locals.lookup y = u0.locals.lookup y) (hl_iteAsg hK hu c x e)
    (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pt fun u hu' => hq u hu'.2.1 hu'.2.2)

/-- The three refund stores (under `cn == 0`). -/
theorem hl_iteSt3 {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0) (cnd c1 c2 c3 : ExpHOL 64)
    (o1 o2 o3 : BinOp) (a1 b1 a2 b2 a3 b3 : ExpHOL 64) :
    HoareG σ guestCtx (fun t => t = u0)
      (.ite cnd (.seq (.ite c1 (stG "ev" 96 (.op o1 [a1, b1])) .skip)
        (.seq (.ite c2 (stG "ev" 96 (.op o2 [a2, b2])) .skip)
          (.ite c3 (stG "ev" 96 (.op o3 [a3, b3])) .skip))) .skip)
      (fun ro t => ro = none ∧ GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t ∧
        t.locals = u0.locals) := by
  refine hoareG_ite ?_ ?_
  · refine hoareG_pre ?_ (fun s _ h => h.1)
    refine hseq_loc (hl_iteSt hfs hu c1 o1 a1 b1) (fun u1 hu1 hl1 => ?_)
    refine hseq_loc (hl_iteSt hfs hu1 c2 o2 a2 b2) (fun u2 hu2 hl2 => ?_)
    exact hl_iteSt hfs hu2 c3 o3 a3 b3
  · refine hoareG_skip fun s _ hP => ?_
    obtain ⟨rfl, -⟩ := hP
    exact ⟨rfl, hu, rfl⟩

/-- **`op_sstore`'s step spec** at `guestHooksR`, from the storage summaries. -/
theorem j_op_sstore
    (hGSO : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage_original")
      Band3.gsoSig Band3.rpsrCaps)
    (hGS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage")
      Band3.gsSig gsCaps)
    (hSS : SetStorageSumm σ) :
    OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sstore") := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine gk_opStep guestCtx_code hF.hooks (gw := [Hooks.gJn]) Band3.code_oss (b := true) ?_
  intro Γ0 s0 p0 fs e c rest hfs hrdy hk0
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hC := callSem_s3E (σ := σ) (Γ0 := Γ0) (s0 := s0) (p0 := p0) hfs
  unfold Band3.ossBody
  refine hl_seq_last (b1 := false) (hl_call hK hC s3_rns hk0) ?_
  intro u1 hu1 _
  refine hl_decCall hK hC s3_pop hu1 ?_
  intro t ht hloc v hsh
  refine hl_decCall hK hC s3_pop (kok_loc hK ht _) ?_
  intro t' ht' hloc' nv hsh'
  refine hl_dec hK ?_
  intro v' hv' hsh''
  have hA1 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs (bd false)
      (setVarHOLFinite (nm "new_value") nv t') := kok_loc hK ht' _
  obtain ⟨w, hw⟩ := gk_keyWord hA1
  have hv'w : v' = .val (.word w) := by
    have h1 : (setVarHOLFinite (nm "new_value") nv t').globals.lookup (nm "evm_key_buf") = some v' :=
      hv'
    rw [gword_some hw] at h1
    exact (Option.some.inj h1).symm
  subst hv'w
  obtain ⟨Γk, pk, hk1, hGk, hBufK, hbackK⟩ := gk_rebase_key hA1 hw
  refine hoareG_conseq (P := fun s => s = setVarHOLFinite (nm "key") (.val (.word w))
      (setVarHOLFinite (nm "new_value") nv t'))
    (Q := GQ (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γk
      (setVarHOLFinite (nm "new_value") nv t') pk fs) true) ?_
    (fun _ _ h => h) (fun r t _ _ hq => gq_rebase hK (dd := bd false) hbackK hq)
  have hK1 := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γk)
    (s0 := setVarHOLFinite (nm "new_value") nv t') (p0 := pk) (fs := fs)
  have hC1 := callSem_s3E (σ := σ) (Γ0 := Γk) (s0 := setVarHOLFinite (nm "new_value") nv t')
    (p0 := pk) hfs
  have hS : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γk (setVarHOLFinite (nm "new_value") nv t')
      pk fs (bd false) (setVarHOLFinite (nm "key") (.val (.word w))
        (setVarHOLFinite (nm "new_value") nv t')) := kok_loc hK1 hk1 _
  refine hl_seq_last (b1 := false) (hl_callA tb_mem tb_fp hfs opsTbE_ok (fun g h => h)
    (u0 := setVarHOLFinite (nm "key") (.val (.word w)) (setVarHOLFinite (nm "new_value") nv t')) hS
    (fun vs hvs Γ1 p1 hrun hch _ => key_argsOK
      (u := setVarHOLFinite (nm "key") (.val (.word w)) (setVarHOLFinite (nm "new_value") nv t'))
      hw (lk_set_self _ _ _) hvs hrun)) ?_
  intro u2 hu2 hlu2
  refine hl_dec hK1 ?_
  intro v2 hv2 hsh2
  obtain ⟨Γd, pd, T, rfl, hk0', hGd, hBuf, hback, hrunD⟩ :=
    gk_rebase_tgt hF.hooks hfs hu2 hv2
  refine hoareG_conseq (P := fun s => s = setVarHOLFinite (nm "target") (.val (.word T)) u2)
    (Q := GQ (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs) true) ?_
    (fun _ _ h => h) (fun r t _ _ hq => gq_rebase hK1 (dd := bd false) hback hq)
  have hBufK2 : BufOK guestC Γd pd w.toNat 32 := bufOK_runT hGk hrunD hBufK
  have hK' := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γd)
    (s0 := u2) (p0 := pd) (fs := fs)
  have hC' := callSem_s3E (σ := σ) (Γ0 := Γd) (s0 := u2) (p0 := pd) hfs
  have hu3 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd false)
      (setVarHOLFinite (nm "target") (.val (.word T)) u2) := kok_loc hK' hk0' _
  have LK3 : LkTK T w (setVarHOLFinite (nm "target") (.val (.word T)) u2).locals := by
    refine ⟨lk_set_self _ _ _, ?_⟩
    rw [lk_set_ne _ _ (by decide), hlu2]
    exact lk_set_self _ _ _
  refine hl_decCall hK' hC' s3_iw hu3 ?_
  intro t4 ht4 hloc4 warmv hsh4
  have LK4 : LkTK T w (setVarHOLFinite (nm "warm") warmv t4).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc4 LK3)
  refine hl_dec hK' ?_
  intro g5 hg5 hsh5
  rw [ev_cw] at hg5
  simp only [Option.some.injEq] at hg5
  subst hg5
  have hw5 : GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd false)
      (setVarHOLFinite (nm "access_cost") (.val (.word (BitVec.ofNat 64 100)))
        (setVarHOLFinite (nm "warm") warmv t4)) := kok_loc hK' ht4 _
  have LK5 : LkTK T w (setVarHOLFinite (nm "access_cost") (.val (.word (BitVec.ofNat 64 100)))
      (setVarHOLFinite (nm "warm") warmv t4)).locals := lkTK_set (by decide) (by decide) _ _ LK4
  refine hoareG_seq (R := fun ro t => ro = none ∧
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd false) t ∧
      (∃ g, t.locals.lookup (nm "access_cost") = some (.val (.word g)) ∧ 1 ≤ g.toNat) ∧
      ∀ x, x ≠ nm "access_cost" → t.locals.lookup x =
        (setVarHOLFinite (nm "access_cost") (.val (.word (BitVec.ofNat 64 100)))
          (setVarHOLFinite (nm "warm") warmv t4)).locals.lookup x)
    (hl_iteAcc hK' hw5 (lk_set_self _ _ _)) (fun r t _ hr _ h => absurd h.1 hr)
    (hoareG_pt fun u hu => ?_)
  obtain ⟨hKu, ⟨ga, hgal, hga1⟩, hoth⟩ := hu.2
  have LKu : LkTK T w u.locals := lkTK_oth (by decide) (by decide) hoth LK5
  refine hl_decCall hK' hC' s3_max hKu ?_
  intro t6 ht6 hloc6 mxv hsh6
  have LK6 : LkTK T w (setVarHOLFinite (nm "mx") mxv t6).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc6 LKu)
  refine hl_seq_last (b1 := false) (hl_call hK' hC' s3_chk (kok_loc hK' ht6 _)) ?_
  intro u7 hu7 hlu7
  have LK7 : LkTK T w u7.locals := lkTK_loc hlu7 LK6
  have hga7 : u7.locals.lookup (nm "access_cost") = some (.val (.word ga)) := by
    rw [hlu7, lk_set_ne _ _ (by decide), hloc6]; exact hgal
  refine hl_seq_last (b1 := true) (hl_chargeDyn hF charge_fp hfs hu7 (fun a ha => ?_)) ?_
  · rw [ev_lv, hga7] at ha
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha
    subst ha; exact hga1
  intro u8 hu8 hlu8
  have LK8 : LkTK T w u8.locals := lkTK_loc hlu8 LK7
  refine hl_seq_last (b1 := true) (hl_ite' (hl_call hK' hC' s3_wsk hu8) (hl_skip hu8)) ?_
  intro u9 hu9 hlu9
  have LK9 : LkTK T w u9.locals := lkTK_loc hlu9 LK8
  refine hl_decCallS (E := gsoE) (args := [lv (nm "target"), lv (nm "key")]) hGSO gso_fp hfs
    gsoE_ok (fun g h => h) hu9
    (fun vs hvs Γ1 p1 hrun hch _ => argsOK_tk LK9.1 LK9.2 hvs (bufOK_runT hGd hrun hBuf)) ?_
  intro t10 ht10 hloc10 orig hsh10
  have LK10 : LkTK T w (setVarHOLFinite (nm "original") orig t10).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc10 LK9)
  refine hl_decCallS (E := gsE) (args := [lv (nm "target"), lv (nm "key")]) hGS gs_fp hfs
    gsE_ok (fun g h => h) (kok_loc hK' ht10 _)
    (fun vs hvs Γ1 p1 hrun hch _ => argsOK_tk LK10.1 LK10.2 hvs (bufOK_runT hGd hrun hBuf)) ?_
  intro t11 ht11 hloc11 cur hsh11
  have LK11 : LkTK T w (setVarHOLFinite (nm "current") cur t11).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc11 LK10)
  unfold Band3.ossSuf
  refine hl_decCall hK' hC' s3_oc (kok_loc hK' ht11 _) ?_
  intro t12 ht12 hloc12 oc hsh12
  have LK12 : LkTK T w (setVarHOLFinite (nm "oc") oc t12).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc12 LK11)
  refine hl_decCall hK' hC' s3_cn (kok_loc hK' ht12 _) ?_
  intro t13 ht13 hloc13 cn hsh13
  have LK13 : LkTK T w (setVarHOLFinite (nm "cn") cn t13).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc13 LK12)
  refine hl_decCall hK' hC' s3_on (kok_loc hK' ht13 _) ?_
  intro t14 ht14 hloc14 onv hsh14
  have LK14 : LkTK T w (setVarHOLFinite (nm "on") onv t14).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc14 LK13)
  refine hl_decCall hK' hC' s3_oz (kok_loc hK' ht14 _) ?_
  intro t15 ht15 hloc15 oz hsh15
  have LK15 : LkTK T w (setVarHOLFinite (nm "oz") oz t15).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc15 LK14)
  refine hl_decCall hK' hC' s3_cz (kok_loc hK' ht15 _) ?_
  intro t16 ht16 hloc16 cz hsh16
  have LK16 : LkTK T w (setVarHOLFinite (nm "cz") cz t16).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc16 LK15)
  refine hl_decCall hK' hC' s3_nz (kok_loc hK' ht16 _) ?_
  intro t17 ht17 hloc17 nz hsh17
  have LK17 : LkTK T w (setVarHOLFinite (nm "nz") nz t17).locals :=
    lkTK_set (by decide) (by decide) _ _ (lkTK_loc hloc17 LK16)
  refine hl_dec hK' ?_
  intro gc0 hgc0 hshgc
  have LK18 : LkTK T w (setVarHOLFinite (nm "gas_cost") gc0 (setVarHOLFinite (nm "nz") nz t17)).locals :=
    lkTK_set (by decide) (by decide) _ _ LK17
  refine hseq_asg hK' (kok_loc hK' ht17 _) _ (nm "gas_cost") _ (fun u1 hu1 ho1 => ?_)
  have LK1 : LkTK T w u1.locals := lkTK_oth (by decide) (by decide) ho1 LK18
  refine hoareG_seq (R := fun ro t => ro = none ∧
      GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γd u2 pd fs (bd true) t ∧ t.locals = u1.locals)
    (hl_iteSt3 hfs hu1 _ _ _ _ _ _ _ _ _ _ _ _ _)
    (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pt fun u3 hu3 => ?_)
  obtain ⟨-, hKu3, hlu3⟩ := hu3
  have LK3' : LkTK T w u3.locals := lkTK_loc hlu3 LK1
  refine hl_dec hK' ?_
  intro sg0 hsg0 hshsg
  refine hseq_asg hK' (kok_loc hK' hKu3 _) _ (nm "state_gas") _ (fun u4 hu4 ho4 => ?_)
  have LK4' : LkTK T w u4.locals :=
    lkTK_oth (by decide) (by decide) ho4 (lkTK_set (by decide) (by decide) _ _ LK3')
  refine hl_seq_last (b1 := true) (hl_ite' (hl_credit hfs hu4) (hl_skip hu4)) ?_
  intro u5 hu5 hlu5
  have LK5' : LkTK T w u5.locals := lkTK_loc hlu5 LK4'
  refine hl_seq_last (b1 := true) (hl_call hK' hC' s3_chgsub hu5) ?_
  intro u6 hu6 hlu6
  have LK6' : LkTK T w u6.locals := lkTK_loc hlu6 LK5'
  refine hl_seq_last (b1 := true) (hl_csg hfs hu6) ?_
  intro u7 hu7 hlu7
  have LK7' : LkTK T w u7.locals := lkTK_loc hlu7 LK6'
  refine hl_seq_last (b1 := true) (hl_callS hSS ss_fp hfs ssE_ok (fun g h => h) hu7
    (fun vs hvs Γ1 p1 hrun hch _ => ao_ss LK7'.1 LK7'.2 hvs (bufOK_runT hGd hrun hBuf)
      (bufOK_runT hGd hrun hBufK2))) ?_
  intro u8 hu8 _
  exact gc_sound hK' hC' _ true true s3_ssTail u8 hu8

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.j_op_sstore
