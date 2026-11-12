import InitECandidate.Solver.MemSafe.Wg.CostWd

/-!
# Wg: the cost of `process_checked_system_transaction`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def cExt : Nat := 326409290240107399935880635368515516424157074687146470671208

theorem cc_cExt : CalleeCost σ guestCtx (nm "ext_code_of") cExt := Wire.calleeCost_guest (by rfl)

/-- The conditional cost of `process_checked_system_transaction` (precondition `CsrPreW`). -/
def HypCsrCostW (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "process_checked_system_transaction") 1 CsrPreW B

/-- The bound, in the bound `Bpuc` of `process_unchecked_system_transaction`. -/
def bCsr (Bpuc : Nat) : Nat := (1 + cSft + 0) + ((1 + cExt + 0) + (0 + ((1 + cAlloc + 0) + ((1 + Bpuc + 0) + (0 + 0)))))

section cc
variable {E : EbE σ} {En : Env}

theorem csr_puc_obl {Sx : FS} {T w : BitVec 64} (hT' : Tidy zBal Sx) (hbal : BalS Sx) (hobj : Sx (Fct.obj T tB24 24))
    (hEt : En (nm "target") = some (.val (.word T))) (hEe : En (nm "empty") = some (.val (.word w))) :
    CallOblK E En Sx [lv (nm "target"), lv (nm "empty"), cw 0] PucPre (fun _ _ _ _ => False)
      (fun g' => pucW.contains g' = true) := by
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT' (by decide)).1, (tidy_gmiss hT' (by decide)).2⟩
  intro s hpa vs hvs callee Γ p hr hL hC
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  obtain ⟨v3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
  rw [evs_nil] at hr3
  cases hr3
  have hpa' : PA E En Sx s := ⟨⟨Γ, p, hr, hL⟩, hpa.2⟩
  have e1 := evI_lv_pa hpa' hEt v1 h1
  have e2 := evI_lv_pa hpa' hEe v2 h2
  rw [ev_cw] at h3
  cases h3
  subst e1; subst e2
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨⟨w1, h1⟩, ⟨w2, h2⟩, ⟨w3, h3⟩, ⟨w4, h4⟩, ⟨w5, h5⟩, ⟨w6, h6⟩⟩ := hbal
  have hbalG : BalG Γ (callEntryStateHOLFinite s callee) := by
    refine ⟨⟨w1, (hLe _ h1).1, (hLe _ h1).2⟩, ⟨w2, (hLe _ h2).1, (hLe _ h2).2⟩,
      ⟨w3, (hLe _ h3).1, (hLe _ h3).2⟩, ⟨w4, (hLe _ h4).1, (hLe _ h4).2⟩,
      ⟨w5, (hLe _ h5).1, (hLe _ h5).2⟩, ⟨w6, (hLe _ h6).1, (hLe _ h6).2⟩⟩
  obtain ⟨o, ho, hob, hot, -⟩ := hL _ hobj
  obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
  obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
  have hb := bufOK_tB24 hord hL0 ho hot
  rw [hob] at hb
  exact ⟨hC, hbalG, T, w, BitVec.ofNat 64 0, rfl, hb, by decide⟩

theorem cw_csr_walk {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ)
    {T bs ba bk bi bs2 sk : BitVec 64} (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hEn : En (nm "target") = some (.val (.word T)))
    (hn1 : En (nm "code") = none) (hn2 : En (nm "empty") = none) (hn3 : En (nm "out") = none) :
    CW (PA E En (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) csrBody (bCsr Bpuc) (RetV E (fun _ => False) CsR) := by
  have hLI := retV_locIns E (fun _ => False) CsR
  unfold csrBody
  refine cw_seq (cw_hn (hn_sftW hSft hK hE0 csS_safe csS_tidy (by decide))
    (Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_cSft) (fun _ _ _ _ _ _ => trivial)
      (by intro _ _ _ _ h; cases h))) ?_
  refine cw_exists fun w => ?_
  refine cw_pre (P := PA E En (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) ?_
    (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold csrS1
  refine cw_decCallR (PreC := fun _ _ => True) (locIns_resIns hLI _) cr_ext_code_of (gwk_tab (by decide)) (fun _ => fun _ => False)
    (Inv.calleeCostP_of_calleeCost cc_cExt) (fun _ _ _ _ _ _ => trivial)
    (callObl_plain (ps := [(.buf 20)]) ?_ csS_tidy (by decide)) ?_ ?_
  · intro s hs vs hvs Γ p hr hL
    obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    rw [evs_nil] at hr1
    cases hr1
    have e1 := evI_lv_pa hs hEn v1 h1
    subst e1
    obtain ⟨o, ho, hob, hot, -⟩ := hL _ (Or.inr (Or.inl rfl) : CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk (Fct.obj T tB24 24))
    obtain ⟨q, hq, hord, hL0, -⟩ := ebRun_G hr
    obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
    have := bufOK_tB24 hord hL0 ho hot
    rw [hob] at this
    exact argsOK_buf20 this
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh f hf
    exact hf.elim
  intro v hsh
  refine cw_pre (P := PA E (En.set (nm "code") v) (CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk)) ?_
    (fun t _ ht => pa_mono ht (fun _ _ h => h) (fun f hf => Or.inl hf))
  unfold csrS2
  refine cw_guard_then ?_
  unfold csrS4
  have hEn1 : ∀ v' : ValueHOL 64, ((En.set (nm "code") v).set (nm "empty") v') (nm "target") = some (.val (.word T)) := fun v' => by
    simp (config := { decide := true }) [Env.set, hEn]
  refine cw_allocFresh (Z := zBal) (locIns_resIns hLI _) (n := BitVec.ofNat 64 8) (fun s hs => evI_cw s 8) csS_tidy
    (by decide) ?_
  intro w
  unfold csrS5
  have hT' := tidy_add_fbuf (csS_tidy (Γ0 := E.Γ0) (s0 := E.s0) (T := T) (bs := bs) (ba := ba) (bk := bk) (bi := bi)
    (bs2 := bs2) (sk := sk)) w (BitVec.ofNat 64 8).toNat
  have hS' := safe_add_fbuf (csS_safe (Γ0 := E.Γ0) (s0 := E.s0) (T := T) (bs := bs) (ba := ba) (bk := bk) (bi := bi)
    (bs2 := bs2) (sk := sk)) w (BitVec.ofNat 64 8).toNat
  have hobl : CallOblK E ((En.set (nm "code") v).set (nm "empty") (.val (.word w)))
      (fun f => CsS E.Γ0 E.s0 T bs ba bk bi bs2 sk f ∨ f = Fct.fbuf w (BitVec.ofNat 64 8).toNat)
      [lv (nm "target"), lv (nm "empty"), cw 0] PucPre (fun _ _ _ _ => False) (fun g' => pucW.contains g' = true) :=
    csr_puc_obl hT' ⟨⟨bs, Or.inl (Or.inr (Or.inr (Or.inl rfl)))⟩, ⟨ba, Or.inl (Or.inr (Or.inr (Or.inr (Or.inl rfl))))⟩,
      ⟨bk, Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))⟩,
      ⟨bi, Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))))⟩,
      ⟨bs2, Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))))⟩,
      ⟨sk, Or.inl (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl)))))))⟩⟩
      (Or.inl (Or.inr (Or.inl rfl))) (hEn1 _) (env_set_self _ _ _)
  refine cw_decCallRkE (α := BitVec 64) hK hE0 hS' (locIns_resIns hLI _) hPuc (gwk_puc (by decide)) PucNF hPucC ?_ hobl ?_ ?_
  · intro s hs hpk vs hvs callee
    obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpk
    have hre := ebRun_loc hr callee (s.clock - 1)
    exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, argsOK_cc (by rw [evs_length hvs]; rfl), ebRun_jr hre,
      ⟨ebRun_ev hre, ebRun_cc hre⟩, p, ebRun_ptrs hre, hobl.pre s ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ vs hvs callee Γ p hr hL hC⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
    exact puc_new hstp.1.hG' hq
  intro v hsh c
  obtain ⟨out, rfl⟩ := val_of_shapeEq_one' hsh
  unfold csrS6
  refine cw_guard_then ?_
  refine cw_leaf (cost_return _) (hn_retV (fun f hf => Or.inl (Or.inl (Or.inl hf))) ?_)
  intro s hs v' hv' Γ p hr hL
  have e := evI_lv_pa hs (env_set_self _ _ _) v' hv'
  subst e
  have hobj := hL (Fct.obj out tMCO 0) (Or.inr (Or.inl ⟨out, rfl, rfl⟩))
  have hcell := hL (Fct.cellv (out + BitVec.ofNat 64 48) c) (Or.inr (Or.inr (Or.inl ⟨out, rfl, rfl⟩)))
  have hlt := hL (Fct.prop (c.toNat < 2 ^ 32)) (Or.inr (Or.inr (Or.inr rfl)))
  obtain ⟨o, ho, hob, hot, -⟩ := hobj
  refine ⟨out, rfl, ⟨o, ho, hob, hot⟩, ?_⟩
  have := hcell.1
  rw [this]
  exact hlt

end cc

theorem hypCsrCostW {Bpuc : Nat} (hPucC : HypPucCost σ Bpuc) (hSft : HypSft σ) (hPuc : HypPuc σ) (hK : HypKeepG σ) :
    HypCsrCostW σ (bCsr Bpuc) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hC, hbal, T, hvs, o, ho, hob, hot⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_csr hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero] at hb0
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (fun _ => none) (nm "target") (.val (.word T))
  have hEn : En (nm "target") = some (.val (.word T)) := by simp [En, Env.set]
  have hnone : ∀ n : MlS, n ≠ nm "target" → En n = none := fun n hn => by simp [En, Env.set, hn]
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  obtain ⟨q, hq, hord, hL0, -⟩ := id hG
  have hmin := (hL0.1 o ho).2.2.2.1
  rw [hot] at hmin
  have hpa : PA E En (CsS Γ s T bs ba bk bi bs2 sk) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, ?_⟩
    · intro f hf
      rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨o, ho, hob, hot, by have : (guestC.ty tB24).minSz = 24 := rfl; omega⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · intro y w hy
      by_cases hyt : y = nm "target"
      · subst hyt
        rw [hEn] at hy; cases hy
        rw [hloc]; exact hb0.1
      · rw [hnone y hyt] at hy; cases hy
  have hw := cw_csr_walk (E := E) (En := En) hPucC hSft hPuc hK (bs := bs) (ba := ba) (bk := bk) (bi := bi) (bs2 := bs2)
    (sk := sk) hE0 hEn (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide))
  exact hw.1 s hs hpa hgood

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypCsrCostW
