import InitECandidate.Solver.TxAl.Cost
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.All

/-!
# Replaying the signing-hash and sender-recovery prices

The accepted analyzer table with the new `tx_put_access_list` price, replayed (minimum-preserving)
through the encoder, the six signing-hash variants, `signature_recovery_parameters`,
`recover_transaction_public_key` and `recover_sender_with_chain_id`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.TxAl
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def replayNames : List String :=
  ["tx_encode_generic", "encode_transaction", "tx_signing_hash_mode", "signing_hash_pre155", "signing_hash_155",
   "signing_hash_2930", "signing_hash_1559", "signing_hash_4844", "signing_hash_7702",
   "signature_recovery_parameters", "recover_transaction_public_key", "recover_sender_with_chain_id"]

def state : TblState :=
  ThirdNamedCostReplay.replayNamed replayNames
    (overrideCost Shards.finalState (nm "tx_put_access_list") apPrice)

theorem state_sound {σ : Type} : StateSound σ guestCtx state :=
  ThirdNamedCostReplay.replayNamed_sound replayNames
    (overrideCost_sound Shards.finalState_sound_guest ap_cost)

abbrev recoverPrice : Nat := 420912471786775438462236250840612005909053556971858

theorem recover_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "recover_sender_with_chain_id") recoverPrice :=
  calleeCost_of_tbl (state_sound (σ := σ)).1 (by decide_cbv)

#print axioms recover_cost

abbrev encodePrice : Nat := 70152078628633835719619159739467498100071589741420

theorem encode_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "encode_transaction") encodePrice :=
  calleeCost_of_tbl (state_sound (σ := σ)).1 (by decide_cbv)

#print axioms encode_cost

end InitECandidate.Solver.TxAl
