import InitECandidate.Solver.MemSafe.Eb.Cost19

/-!
# `execute_block`: the cost walk, part 20 (`cw_walk`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

section walk
variable {E : EbE σ} {M : Nat}

theorem cw_walk {Bpuc BT Bwd Bgpr Bcsr Bbmi : Nat} (hPucC : HypPucCost σ Bpuc) (hPtC : HypPtCost σ M BT)
    (hWdC : HypWdCost σ Bwd) (hGprC : HypGprCost σ Bgpr) (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi)
    (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M) (hWd : HypWd σ)
    (hGpr : HypGpr σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    {S0 : FS} {Z : List MlS} {En : Env} {si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn : BitVec 64}
    (hsi : En (nm "si") = some (.val (.word si0))) (hEnTx : En (nm "tx") = none)
    (hF : EntryK S0 Z si0 pl0 ntx0 ptxs0 nwd0 be0 c0 wd0 T1 T2 z bh bn) :
    CW (PA E En S0) ebBody (bHeadAll ((1 + cBalInit + 0) + bMid Bpuc (bLoop BT (bTF Bwd Bgpr Bcsr Bbmi)))) (RetQ E) := by
  have hQ := retQ_locIns E
  have hz1 : ∀ g ∈ nmBo :: Z, ¬ (tabW.contains g = true) := by
    intro g hg
    rcases List.mem_cons.mp hg with rfl | hg
    · decide
    · exact (hF.zok g hg).1
  refine cw_head_all hQ hsi hF.spl hF.snt hF.bt hF.tidy (fun h => (hF.zok _ h).2.2.2.2.2 rfl) hF.zbo hz1 ?_
  intro w t r lg rq rl S' hout hsub
  refine cw_s15_balInit (Z := nmBo :: Z) hout.led.tidy ?_ ?_
  · intro g hg
    rcases List.mem_cons.mp hg with rfl | hg
    · decide
    · exact hF.zbal g hg
  intro w1 w2 w3 w4
  set En1 := EnH ((En.set (nm "pl") (.val (.word pl0))).set (nm "ntx") (.val (.word ntx0))) t r lg rq rl with hEn1
  refine cw_pre (P := PA E En1 (SPlus S' w1 w2 w3 w4 w t r be0 wd0)) ?_
    (fun s _ h => pa_derive h (fun Γ p hL => propsX_holds hout hF.obe hF.owd hL))
  have hled := led_of_head (w1 := w1) (w2 := w2) (w3 := w3) (w4 := w4) hout hsub hF.gbe hF.obe hF.cbe hF.ibe hF.owd hF.bew
    hF.gbs hF.gsk hF.bt hF.bt24 hF.bwd hF.rd0
  have hZ := zok_all hF.zok hF.zbo
  have hS'' := safeS_splus (safeS_head hout hF.safe) w1 w2 w3 w4 w t r be0 wd0
  have hT'' := tidy_splus hout.led.tidy w1 w2 w3 w4 w t r be0 wd0
  have up : ∀ f, S0 f → SPlus S' w1 w2 w3 w4 w t r be0 wd0 f := fun f hf => Or.inl (Or.inl (hsub _ hf))
  have hzt : ∀ g ∈ nmBA :: nmBIA :: nmBIS :: nmBK :: nmBo :: Z, ¬ (tabW.contains g = true) := fun g hg => (hZ g hg).1
  have hzp : ∀ g ∈ nmBA :: nmBIA :: nmBIS :: nmBK :: nmBo :: Z, ¬ (pucW.contains g = true) := fun g hg => (hZ g hg).2.1
  have hzs : ∀ g ∈ nmBA :: nmBIA :: nmBIS :: nmBK :: nmBo :: Z, ¬ (sftW.contains g = true) := fun g hg => (hZ g hg).2.2.1
  have hzpt : ∀ g ∈ nmBA :: nmBIA :: nmBIS :: nmBK :: nmBo :: Z, ¬ (ptW.contains g = true) := fun g hg => (hZ g hg).2.2.2.1
  have hEpl : En1 (nm "pl") = some (.val (.word pl0)) := by
    simp (config := { decide := true }) [hEn1, EnH, Env.set]
  have hEnt : En1 (nm "ntx") = some (.val (.word ntx0)) := by
    simp (config := { decide := true }) [hEn1, EnH, Env.set]
  have hEtx : En1 (nm "tx") = none := by
    simp (config := { decide := true }) [hEn1, EnH, Env.set, hEnTx]
  refine cw_mid_chain (hQ := hQ) hPuc hPucC hSft hK hE0 hS'' hT'' hzp hzs hzt hled.bal (up _ hF.g1) (up _ hF.g2) (up _ hF.gz)
    (up _ hF.gbh) (up _ hF.gbn) hEpl (up _ hF.s32) ?_
  intro X
  refine cw_pre (P := PA E (EnL En1 X ptxs0 0) (SLs (SPlus S' w1 w2 w3 w4 w t r be0 wd0) t r 0)) ?_
    (fun s _ h => pa_derive h (fun Γ p hL f hf => by
      rcases hf with hf | rfl | rfl
      · exact hL f hf
      · intro j hj; exact absurd hj (Nat.not_lt_zero _)
      · intro j hj; exact absurd hj (Nat.not_lt_zero _)))
  refine cw_loop_walk hPtC hK hE0 hPt hM hled hS'' hT'' hzt hzpt (up _ hF.opl) (up _ hF.s32) (up _ hF.snt) hEtx hEnt ?_
  have hT3 := tidy_sls hT'' t r ntx0.toNat
  have hS3 := safe_sls hS'' t r ntx0.toNat
  refine cw_tail_front (w := w) (t := t) (r := r) (lg := lg) (rl := rl) (be0 := be0) (c0 := c0) (wd0 := wd0) (ntx0 := ntx0)
    (nwd0 := nwd0) (rq := rq) (pl0 := pl0) hWdC hGprC hCsr hBmi hWd hGpr hK hE0 hS3 hT3 (fun g hg => (hZ g hg).2.1)
    hzt (fun h => (hZ _ h).2.2.2.2.1 rfl) (gprK_of_head hout hsub hled hF.obe hF.owd)
    (Or.inr (Or.inl rfl)) (Or.inr (Or.inr rfl)) (Or.inl (up _ hF.slw)) (Or.inl (up _ hF.gwd)) (Or.inl (up _ hF.s56))
    (Or.inl (up _ hF.opl)) ?_
  refine ⟨?_, ?_, ?_, ?_⟩ <;> simp (config := { decide := true }) [EnL, hEn1, EnH, Env.set]

end walk

end InitECandidate.Solver.MemSafe.Eb
