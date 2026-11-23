import InitECandidate.Solver.AuthorizationWork.CompactAccountPricesFast
import InitECandidate.Solver.AuthorizationWork.CompactCostReplay
import InitECandidate.Solver.MemSafe.Ptx.PtCode

set_option autoImplicit false
set_option maxRecDepth 100000

namespace CompactDeletionBody
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Ptx
open AcceptedCostOverrideRules

private def clearPrice : Nat := 184433042994110756371157730629381081077022

private theorem clear_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "clear_account_preserving_balance") clearPrice :=
  calleeCost_of_tbl CompactAccountPrices.clearAndCreditTable_sound.1 (by rfl)

private def costs : TblState :=
  ([(nm "htab_item", 0), (nm "clear_account_preserving_balance", clearPrice)], [], [])

private theorem costs_sound {σ : Type} : StateSound σ guestCtx costs :=
  overrideCost_sound (overrideCost_sound stateSound_empty clear_cost)
    (CompactCostReplay.accepted (f := nm "htab_item") (B := 0) (by decide_cbv))

theorem body_cost {σ : Type} :
    Cost σ guestCtx ptS179 184433042994110756371157730629381081077024 :=
  CompactCostReplay.program_cost costs_sound (by decide_cbv)

#print axioms body_cost
end CompactDeletionBody
