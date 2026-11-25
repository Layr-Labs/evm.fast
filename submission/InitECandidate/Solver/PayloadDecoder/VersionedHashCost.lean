import InitECandidate.Solver.PayloadDecoder.TransactionCost
import InitECandidate.Solver.MemSafe.Exb.IvvhCode

/-! Reprice the exact transaction loop body of is_valid_versioned_hashes. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Exb (ivOuter)
open AcceptedCostOverrideRules

private def outerTable : TblState :=
  overrideCost (overrideCost (overrideCost ([],[],[]) (nm "tx_is_blob") 0)
    (nm "memeq") 73786976294838206468) (nm "decode_transaction") transactionPrice

private theorem outerSound {σ : Type} : StateSound σ guestCtx outerTable :=
  overrideCost_sound (overrideCost_sound (overrideCost_sound (stateSound_empty (σ := σ))
    (CompactCostReplay.accepted (f := nm "tx_is_blob") (B := 0) (by decide_cbv)))
    (CompactCostReplay.accepted (f := nm "memeq") (B := 73786976294838206468) (by decide_cbv)))
    transactionCost

def outerPrice : Nat := 1402046224446652152276666439342251952883

theorem outerCost {σ : Type} : Cost σ guestCtx ivOuter outerPrice :=
  CompactCostReplay.program_cost outerSound (by decide_cbv)

#print axioms outerCost
end PayloadDecoder
