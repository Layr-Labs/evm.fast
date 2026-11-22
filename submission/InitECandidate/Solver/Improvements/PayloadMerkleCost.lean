import InitECandidate.Solver.Improvements.MerkleShiftBound
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay

/-! Replay only the SSZ callees on the path from merkleize to the entry point.
Each replay step checks the installed function and preserves the sound table. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace PayloadMerkleCost
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def callers : List String :=
  ["merkleize_progressive", "htr_plist_chunks", "htr_pbytes", "htr_pcontainer",
   "htr_bytes_vector", "htr_bytes_list", "htr_withdrawal", "htr_deposit", "htr_wdreq",
   "htr_cons", "htr_bdep", "htr_bexit", "htr_request_list", "htr_requests",
   "htr_payload", "htr_new_payload_request"]

private def state : TblState :=
  ThirdNamedCostReplay.replayNamed callers
    (overrideCost Shards.finalState (nm "merkleize") MerkleShiftBound.price)

abbrev price : Nat := 941565260308002119890919267153129700911535662793402687185325

theorem callee_cost {σ : Type} : CalleeCost σ guestCtx (nm "htr_new_payload_request") price := by
  have hs : StateSound σ guestCtx state := ThirdNamedCostReplay.replayNamed_sound callers
    (overrideCost_sound Shards.finalState_sound_guest MerkleShiftBound.callee_cost)
  exact calleeCost_of_tbl hs.1 (by decide_cbv)

#print axioms callee_cost
end PayloadMerkleCost
