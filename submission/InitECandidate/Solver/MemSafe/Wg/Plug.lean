import InitECandidate.Solver.MemSafe.Eb.Final3
import InitECandidate.Solver.MemSafe.Wg.Bridge

/-!
# `execute_block`: the final statements without `HypWd` / `HypGpr` (package Wg plugged in)
(In `Wg/`, not `Eb/`: `Wg` imports `Eb.Cost2`, which imports `Eb.Final2`.)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- **`execute_block` is memory-safe**, with `HypWd` / `HypGpr` discharged by package Wg. -/
theorem funSpec_execute_block_wg {M : Nat} (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    (hK : HypKeepG σ) (hgs : Bal.HGS σ) :
    FunSpec σ guestCtx (nm "execute_block") (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (p : Ptrs),
      G guestC (HR σ) Γ s → ptrsOf s = some p → JrNZ s → EvCc s → EbPre vs s Γ p →
      ∃ (Γ' : Gam) (p' : Ptrs), G guestC (HR σ) Γ' t ∧ KeepH guestC Γ Γ' s t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧
        NewFresh Γ Γ' (Exb.gp0 p) p' ∧ (Exb.gp0 p).Mono p' ∧ JrNZ t ∧ EvCc t) :=
  funSpec_execute_block hPuc hSft hPt hM (hypWd hSft hK hgs) (hypGpr_of_4 (hypGpr4 hSft hPuc hK)) hK

/-- **`execute_block`'s conditional cost**, with `process_withdrawals` / `process_general_purpose_requests` discharged by package Wg. -/
theorem condCost_execute_block_wg {M Bpuc BT Bcsr Bbmi : Nat} (hPucC : HypPucCost σ Bpuc) (hPtC : HypPtCost σ M BT)
    (hCsr : HypCsrCost σ Bcsr) (hBmi : HypBmiCost σ Bbmi)
    (hPuc : HypPuc σ) (hSft : HypSft σ) (hPt : HypPt σ M) (hM : 2 ^ 24 + 2 ≤ M)
    (hK : HypKeepG σ) (hgs : Bal.HGS σ) :
    CondCost σ guestCtx guestC (HR σ) (nm "execute_block") ⟨[.any, .any], [], [nm "journal_n"], true⟩
      (CcPre EbPre) (bExecBlock Bpuc BT bWd (bGpr (bCsr Bpuc)) Bcsr Bbmi) :=
  condCost_execute_block hPucC hPtC (hypWdCost hSft hK hgs) (hypGprCost_of_4 (hypGprCost hPucC hSft hPuc hK)) hCsr hBmi
    hPuc hSft hPt hM (hypWd hSft hK hgs) (hypGpr_of_4 (hypGpr4 hSft hPuc hK)) hK

end InitECandidate.Solver.MemSafe.Wg

#print axioms InitECandidate.Solver.MemSafe.Wg.funSpec_execute_block_wg
#print axioms InitECandidate.Solver.MemSafe.Wg.condCost_execute_block_wg
