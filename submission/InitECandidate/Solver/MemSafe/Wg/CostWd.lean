import InitECandidate.Solver.MemSafe.Wg.Cost1

/-!
# Wg: the cost of `process_withdrawals` (`HypWdCost`)
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

/-- The cost of the withdrawal loop (the analyzer's bound for `wdS5`). -/
def bWdLoop : Nat := 115792089237316216765716895869598332870473362500653426492066893165886707900399

theorem costFin_wdS5 : costFin wdS5 = some bWdLoop := by decide_cbv

/-- The conditional bound of `incorporate_tx_into_block` (`Band2.incorporate_condCost` over `Band6.ub_condCost_lit`). -/
def bInc : Nat :=
  1 + 4081774914776526801994342856258335214786233812941513267855060749915296337060237131737786 + 0 +
    ((1 + 115792089237316195806474190867275434631345899985535924178223997904058262225658 + 0) + 0)

theorem incCost : CondCost σ guestCtx guestC (HR σ) (nm "incorporate_tx_into_block") Bal.biSig Bal.UbPre bInc := by
  refine Band2.incorporate_condCost (Hooks.guestHooksR_lawful (σ := σ)) ?_ (Band6.ub_condCost_lit (σ := σ))
  intro vs s t Γ hm hg hd hb h
  obtain ⟨rfl, hbs, hts, hba, hkb, hia, his, hsk⟩ := h
  have e : ∀ g, gword t g = gword s g := fun g => by unfold gword; rw [hg]
  refine ⟨rfl, ?_⟩
  simp only [Bal.GF] at hbs hts hba hkb hia his hsk ⊢
  rw [e, e, e, e, e, e, e]
  exact ⟨hbs, hts, hba, hkb, hia, his, hsk⟩

section cwd
variable {E : EbE σ} {En : Env} {Z : List MlS}

/-- The cost of `incorporate_tx_into_block();` from a walk state with the block-state globals and `ts`. -/
theorem cp_inc {Sk : FS} {w : BitVec 64} (hbal : BalS Sk) :
    Inv.CostP σ guestCtx (PA E En (WdS1 Sk w)) (callD (nm "incorporate_tx_into_block") []) (1 + bInc + 0) := by
  refine Inv.costP_callD (incCost (σ := σ)) ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  rw [evs_nil] at hvs
  obtain rfl : vs = [] := (Option.some.inj hvs).symm
  have hre := ebRun_loc hr callee (s.clock - 1)
  have hLe := holdsAll_loc hL callee (s.clock - 1)
  obtain ⟨⟨w1, h1⟩, ⟨w2, h2⟩, ⟨w3, h3⟩, ⟨w4, h4⟩, ⟨w5, h5⟩, ⟨w6, h6⟩⟩ := hbal
  have g1 := hLe _ (Or.inl h1)
  have g2 := hLe _ (Or.inl h2)
  have g3 := hLe _ (Or.inl h3)
  have g4 := hLe _ (Or.inl h4)
  have g5 := hLe _ (Or.inl h5)
  have g6 := hLe _ (Or.inl h6)
  have gt := hLe _ (Or.inr (rfl : Fct.gobj (nm "ts") w tTS = Fct.gobj (nm "ts") w tTS))
  exact ⟨Γ, p, ebRun_G hre, ebRun_ptrs hre, ⟨rfl, fun i pt v hpt => by simp [Bal.biSig] at hpt⟩, rfl,
    ⟨w1, g1.1, g1.2⟩, ⟨w, gt.1, gt.2⟩, ⟨w2, g2.1, g2.2⟩, ⟨w3, g3.1, g3.2⟩, ⟨w4, g4.1, g4.2⟩, ⟨w5, g5.1, g5.2⟩,
    ⟨w6, g6.1, g6.2⟩⟩

/-- The cost bound of the walk of `process_withdrawals`. -/
def bWd : Nat := (1 + cSft + 0) + (bWdLoop + ((1 + bInc + 0) + 0))

theorem cw_wd_walk (hSft : HypSft σ) (hK : HypKeepG σ) (hgs : Bal.HGS σ) {pl nwd wd bs ba bk bi bs2 sk : BitVec 64}
    (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hnw : nwd.toNat < 2 ^ 32)
    (hEnpl : En (nm "pl") = some (.val (.word pl))) (hn1 : En (nm "nwd") = none) (hn2 : En (nm "wd") = none)
    (hn3 : En (nm "i") = none) (hn4 : En (nm "w") = none) (hn5 : En (nm "amt") = none) (hn6 : En (nm "wei") = none) :
    CW (PA E En (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk)) wdBody bWd (RetW E (fun _ => False)) := by
  have hLI := retW_locIns E (fun _ => False)
  unfold wdBody
  refine cw_seq (cw_hn (hn_sftW hSft hK hE0 wdS_safe wdS_tidy (by decide))
    (Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_cSft) (fun _ _ _ _ _ _ => trivial)
      (by intro _ _ _ _ h; cases h))) ?_
  refine cw_exists fun w => ?_
  have hm56 : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.pcv (pl + BitVec.ofNat 64 56) nwd) := by
    simp [WdS1, WdS]
  have hm48 : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.pcv (pl + BitVec.ofNat 64 48) wd) := by
    simp [WdS1, WdS]
  have hmin : WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w (Fct.inval wd (44 * nwd.toNat)) := by
    simp [WdS1, WdS]
  unfold wdS1
  refine cw_decT (locIns_resIns hLI _) (w := nwd) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs hEnpl 56) hm56 v hv) ?_
  unfold wdS2
  refine cw_decT (locIns_resIns hLI _) (w := wd) (fun s hs v hv =>
    evI_ld_pcv hs (evI_lvoff hs (by simp (config := { decide := true }) [Env.set, hEnpl]) 48) hm48 v hv) ?_
  unfold wdS3
  refine cw_decT (locIns_resIns hLI _) (w := BitVec.ofNat 64 0) (fun s hs v hv => evI_cw s 0 v hv) ?_
  unfold wdS4
  refine cw_seq (P := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) (BitVec.ofNat 64 0))
      (WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w))
    (R := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) nwd)
      (WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w))
    (cw_leaf (cost_guest_costA costFin_wdS5)
      (wd_loop (Z := nm "ts" :: zBal) hnw hmin wdS1_tidy (by decide) (by decide)
        (by simp (config := { decide := true }) [Env.set]) (by simp (config := { decide := true }) [Env.set])
        (by simp (config := { decide := true }) [Env.set, hn4]) (by simp (config := { decide := true }) [Env.set, hn5])
        (by simp (config := { decide := true }) [Env.set, hn6]))) ?_
  unfold wdS11
  refine cw_seq (P := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) nwd)
      (WdS1 (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk) w))
    (R := PA E (EnI ((En.set (nm "nwd") (.val (.word nwd))).set (nm "wd") (.val (.word wd))) nwd)
      (WdS E.Γ0 E.s0 pl nwd wd bs ba bk bi bs2 sk))
    (cw_hn (hn_incorpW hgs wdS_tidy (by decide) wdS_bal) (cp_inc wdS_bal)) ?_
  exact cw_leaf (cost_return _) (hn_ret0W (fun f hf => Or.inl hf))

end cwd

theorem hypWdCost (hSft : HypSft σ) (hK : HypKeepG σ) (hgs : Bal.HGS σ) : HypWdCost σ bWd := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hC, hbal, pl, hvs, o, ho, hob, hot⟩ := hpre0
  obtain rfl : p = p' := (Option.some.inj (hp'.symm.trans hp)).symm
  rw [hX] at hl
  obtain ⟨rfl, -, hlen, hbind⟩ := lookupCode_gen code_wd hl
  have hb0 := hbind 0 (by simp) (by rw [hvs]; simp)
  subst hvs
  simp only [List.getElem_cons_zero] at hb0
  obtain ⟨hsz, hnw, x, hx, hxt, h1, h2⟩ := plFacts hG ho hot
  obtain ⟨bs, hbs1, hbs2⟩ := hbal.gbs
  obtain ⟨ba, hba1, hba2⟩ := hbal.gba
  obtain ⟨bk, hbk1, hbk2⟩ := hbal.gbk
  obtain ⟨bi, hbi1, hbi2⟩ := hbal.gbi
  obtain ⟨bs2, hbs21, hbs22⟩ := hbal.gbs2
  obtain ⟨sk, hsk1, hsk2⟩ := hbal.gsk
  let E : EbE σ := ⟨Γ, s, p⟩
  let En : Env := Env.set (fun _ => none) (nm "pl") (.val (.word pl))
  have hEnpl : En (nm "pl") = some (.val (.word pl)) := by simp [En, Env.set]
  have hnone : ∀ n : MlS, n ≠ nm "pl" → En n = none := fun n hn => by simp [En, Env.set, hn]
  have hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty := fun o ho => keepTy_of_cpre hC ho
  rw [hob] at hnw h1 h2
  have hpa : PA E En (WdS Γ s pl (rd s.memory (pl + BitVec.ofNat 64 56)) (rd s.memory (pl + BitVec.ofNat 64 48))
      bs ba bk bi bs2 sk) s := by
    refine ⟨⟨Γ, p, ebRun_refl hG hp hJ hE.1 hE.2, ?_⟩, ?_⟩
    · intro f hf
      rcases hf with hf | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
      · exact frS_entry f hf
      · exact ⟨o, ho, hob, hot, hsz⟩
      · refine ⟨rfl, o, ho, by rw [hot]; decide, 7, by unfold Obj.HasSlot; omega, by rw [hot]; exact tPL_prot7, ?_⟩
        unfold Obj.cell; rw [hob]
      · refine ⟨rfl, o, ho, by rw [hot]; decide, 6, by unfold Obj.HasSlot; omega, by rw [hot]; exact tPL_prot6, ?_⟩
        unfold Obj.cell; rw [hob]
      · exact ⟨x, hx, hxt, h1, h2⟩
      · exact ⟨hbs1, hbs2⟩
      · exact ⟨hba1, hba2⟩
      · exact ⟨hbk1, hbk2⟩
      · exact ⟨hbi1, hbi2⟩
      · exact ⟨hbs21, hbs22⟩
      · exact ⟨hsk1, hsk2⟩
    · intro y w hy
      by_cases hyp : y = nm "pl"
      · subst hyp
        rw [hEnpl] at hy; cases hy
        rw [hloc]; exact hb0.1
      · rw [hnone y hyp] at hy; cases hy
  have hw := cw_wd_walk (E := E) (En := En) hSft hK hgs (wd := rd s.memory (pl + BitVec.ofNat 64 48)) (bs := bs) (ba := ba)
    (bk := bk) (bi := bi) (bs2 := bs2) (sk := sk) hE0 hnw hEnpl (hnone _ (by decide)) (hnone _ (by decide))
    (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide)) (hnone _ (by decide))
  exact hw.1 s hs hpa hgood

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.hypWdCost
