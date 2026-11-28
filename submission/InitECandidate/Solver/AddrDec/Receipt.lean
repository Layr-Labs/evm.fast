import InitECandidate.Solver.AddrDec.Logs
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.All

/-! `encode_receipt` re-analyzed with the new `logs_bloom` and `encode_logs` prices. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.AddrDec
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

def receiptEntry := declPair Guest.Software.guestFn_encode_receipt
def receiptState2 : TblState :=
  replayStep (overrideCost (overrideCost Shards.finalState (nm "logs_bloom") bloomPrice2)
    (nm "encode_logs") elPrice) receiptEntry

theorem receiptState2_sound {σ : Type} : StateSound σ guestCtx receiptState2 := by
  have hm : Guest.Software.guestFn_encode_receipt ∈ Guest.Software.guestAst :=
    List.getElem_mem (l := Guest.Software.guestAst) (n := 836) (by decide +kernel)
  exact replayStep_sound guestCtx_code guestCtx_bounded (declPair_valid hm ⟨_, rfl⟩)
    (overrideCost_sound (overrideCost_sound Shards.finalState_sound_guest bloom_cost2) el_cost)

abbrev receiptPrice2 : Nat := 181226203076501352093116946282728678361726569153475

theorem receipt_cost2 {σ : Type} : CalleeCost σ guestCtx (nm "encode_receipt") receiptPrice2 :=
  calleeCost_of_tbl (receiptState2_sound (σ := σ)).1 (by decide_cbv)

#print axioms receipt_cost2

end InitECandidate.Solver.AddrDec
