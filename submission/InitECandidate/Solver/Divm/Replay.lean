import InitECandidate.Solver.Divm.Cost
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.All

/-! The accepted analyzer table with the new `divmnu` price, replayed through the division
helpers, the blob-fee exponential and its callers (transaction check, header validation). -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.Divm
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def replayNames : List String :=
  ["digits_divmod", "u256_divmod", "u256_div", "taylor_exponential", "calculate_blob_gas_price",
   "check_transaction", "calculate_excess_blob_gas", "validate_header", "validate_headers"]

def state : TblState :=
  ThirdNamedCostReplay.replayNamed replayNames (overrideCost Shards.finalState (nm "divmnu") dmPrice)

theorem state_sound {σ : Type} : StateSound σ guestCtx state :=
  ThirdNamedCostReplay.replayNamed_sound replayNames
    (overrideCost_sound Shards.finalState_sound_guest dm_cost)

abbrev blobPrice5 : Nat := 187072209629057646236785706460502983180348263760385
abbrev checkPrice5 : Nat := 187072210764239622856746841914642481925968340492567

theorem blob_cost {σ : Type} : CalleeCost σ guestCtx (nm "calculate_blob_gas_price") blobPrice5 :=
  calleeCost_of_tbl (state_sound (σ := σ)).1 (by decide_cbv)

theorem check_cost {σ : Type} : CalleeCost σ guestCtx (nm "check_transaction") checkPrice5 :=
  calleeCost_of_tbl (state_sound (σ := σ)).1 (by decide_cbv)

#print axioms blob_cost
#print axioms check_cost

end InitECandidate.Solver.Divm
