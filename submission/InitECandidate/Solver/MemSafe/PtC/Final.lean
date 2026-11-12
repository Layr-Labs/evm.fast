import InitECandidate.Solver.MemSafe.PtC.S15

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


/-- **The cost of `process_transaction`**: the structural bound of its body. -/
def bPt : Nat := cbd ptBody

theorem hypPtCost : Eb.HypPtCost σ (2 ^ 24 + 2) bPt := by
  have hpm : HypPmM σ (2 ^ 24 + 2) := hypPmM_closed (by norm_num)
  have hcf : HypCfL σ := hypCfL_closed
  have hpcm := pcm_funSpec hpm hcf
  intro vs body callee rs hl s hs hpre0 hgood
  obtain ⟨hloc, Γ, p, hG, hp, -, hJ, hE, p', hp', hC, tx, idx, bo, be, txs, rcs, hvs, hD, hcoin, hbufG, hbeG⟩ := hpre0
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_pt (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain rfl : p = p' := Option.some.inj (hp.symm.trans hp')
  have hpre : Ptx.PtPreD2 (2 ^ 24 + 2) Γ s p tx idx bo be txs rcs :=
    { hp := hD.hp, hJ := hD.hJ, hev := hD.hev, hcc := hD.hcc, hM := le_refl _, txObj := hD.txObj, txbuf := hD.txbuf,
      hbo := hD.hbo, boObj := hD.boObj, htxs := hD.htxs, txsObj := hD.txsObj, hrcs := hD.hrcs, rcsObj := hD.rcsObj,
      logsObj := hD.logsObj, rlogsObj := hD.rlogsObj, hbe := hD.hbe, beObj := hD.beObj, beCoin := hD.beCoin,
      dis1 := hD.dis1, dis2 := hD.dis2, dis3 := hD.dis3, gbs := hD.bal.gbs, gba := hD.bal.gba, gbk := hD.bal.gbk,
      gbi := hD.bal.gbi, gbs2 := hD.bal.gbs2, gsk := hD.bal.gsk, own := hC.2, coinR := hcoin, txbufG := hbufG,
      beCoinG := hbeG }
  have hPX := ptPreX_of hG hpre
  have hlt : s.locals.lookup (nm "tx") = some (.val (.word tx)) := by rw [hloc]; exact hA
  have hli : s.locals.lookup (nm "index") = some (.val (.word idx)) := by rw [hloc]; exact hB
  have hcw : CW' (fun t => t = s) ptBody (cbd ptBody)
      (fun r t => r = some (.returned (.val (.word 0))) ∧ PtEnd (entryE Γ s p tx idx bo be txs rcs) t) := by
    unfold ptBody
    refine cw_seqN (pt_enter hPX.toPtPre ⟨hlt, hli⟩) ?_
    exact cchain1 hPX.toPtPre hypEncTx_closed (locIns_ptEnd _) (cx0_enter _)
      (fun En' S' rp rl buf n CV w a b c pr mg rs C3 =>
        cchain2 hPX hpre.own hpre.coinR hpm hpcm hypRcpt_closed Band6.hgs_R C3.2.2.2.1 C3)
  exact hcw.1 s hs rfl hgood

end InitECandidate.Solver.MemSafe.PtC

#print axioms InitECandidate.Solver.MemSafe.PtC.hypPtCost
