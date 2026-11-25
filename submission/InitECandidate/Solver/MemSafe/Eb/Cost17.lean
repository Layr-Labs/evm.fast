import InitECandidate.Solver.Improvements.HeapCharge.TransactionHeapCharge
import InitECandidate.Solver.Improvements.HeapCharge.BlockBodyHeapCharge
import InitECandidate.Solver.MemSafe.Ptx.F3mClose
import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.Improvements.AcceptedTransactionCountFacts
import InitECandidate.Solver.MemSafe.TxnCost.Bounds
import InitECandidate.Solver.MemSafe.Eb.Cost16
import InitECandidate.Solver.MemSafe.Eb.Loop14

/-!
# `execute_block`: the cost walk, part 17 (the loop)
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

section lw17
variable {E : EbE σ} {En : Env} {M : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- The cost of the loop and what follows it. -/
def bLoop (BT Bn : Nat) : Nat := 11440 * (bLB BT + 1) + Bn

theorem cw_loop_walk {BT Bn : Nat} (hPtC : HypPtCost σ M BT) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    {S : FS} {Z : List MlS} {w t r lg rl be0 c0 wd0 ntx0 nwd0 pl0 ptxs0 X : BitVec 64}
    (hled : Led S w t r lg rl be0 c0 wd0 ntx0 nwd0 0) (hS : SafeS S) (hT : Tidy Z S)
    (hzt : ∀ g ∈ Z, ¬ (tabW.contains g = true)) (hzp : ∀ g ∈ Z, ¬ (ptW.contains g = true))
    (hpl : S (Fct.obj pl0 tPL 136)) (h32 : S (Fct.pcv (pl0 + BitVec.ofNat 64 32) ptxs0))
    (h40 : S (Fct.pcv (pl0 + BitVec.ofNat 64 40) ntx0)) (hEn : En (nm "tx") = none)
    (hntx : En (nm "ntx") = some (.val (.word ntx0)))
    (hnext : CW (PA E (EnL En X ptxs0 ntx0) (SLs S t r ntx0.toNat)) ebS33 Bn QT) :
    CW (PA E (EnL En X ptxs0 0) (SLs S t r 0)) ebS27 (bLoop BT Bn) QT := by
  have raw := TransactionHeapCharge.process_heap (Ptx.hypPmM_closed (M := 2 ^ 24 + 2) (by norm_num))
    (σ := σ) Ptx.hypCfL_closed Ptx.hypRcpt_closed Band6.hgs_R Ptx.hypEncTx_closed
  have growth : FunSpec σ guestCtx (nm "process_transaction") (BlockBodyHeapCharge.Growth (2^24+2)) := by
    refine FunSpec.mono raw ?_
    rintro vs s r t spec Γ p hg ⟨hc, T, iv, w, be0, tA, rc, vals, hd, coin, buf, beG⟩ v hv
    have hPre : Ptx.PtPreD2 (2^24+2) Γ s p T iv w be0 tA rc :=
      { hp := hd.hp, hJ := hd.hJ, hev := hd.hev, hcc := hd.hcc, hM := le_rfl, txObj := hd.txObj, txbuf := hd.txbuf,
        hbo := hd.hbo, boObj := hd.boObj, htxs := hd.htxs, txsObj := hd.txsObj, hrcs := hd.hrcs, rcsObj := hd.rcsObj,
        logsObj := hd.logsObj, rlogsObj := hd.rlogsObj, hbe := hd.hbe, beObj := hd.beObj, beCoin := hd.beCoin,
        dis1 := hd.dis1, dis2 := hd.dis2, dis3 := hd.dis3, gbs := hd.bal.gbs, gba := hd.bal.gba, gbk := hd.bal.gbk,
        gbi := hd.bal.gbi, gbs2 := hd.bal.gbs2, gsk := hd.bal.gsk, own := hc.2, coinR := coin, txbufG := buf,
        beCoinG := beG }
    exact spec Γ hg hc T iv vals p w be0 tA rc hPre v hv
  exact HeapRankedLoop.cw_heap_loop_walk hPtC hK hE0 hPt hM hled hS hT hzt hzp hpl h32 h40 hEn hntx
    (fun iv lo hlt => BlockBodyHeapCharge.body_growth (M := 2 ^ 24 + 2) hK hE0 growth le_rfl
      hled hS hT hzt hzp hpl h32 h40 hEn lo hlt) hnext

end lw17
end InitECandidate.Solver.MemSafe.Eb

#print axioms InitECandidate.Solver.MemSafe.Eb.cw_loop_walk
