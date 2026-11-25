import InitECandidate.Solver.AuthorizationWork.CompactAccountPricesFast
import InitECandidate.Solver.Improvements.CompactCostReplay
import InitECandidate.Solver.MemSafe.Wg.Code

set_option autoImplicit false
set_option maxRecDepth 100000

namespace CompactWithdrawalBody
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Wg
open AcceptedCostOverrideRules

private def creditPrice : Nat := 179669089823624876965997082397258484355769

private theorem credit_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "create_ether") creditPrice :=
  calleeCost_of_tbl CompactAccountPrices.clearAndCreditTable_sound.1 (by rfl)

private def costs : TblState :=
  ([(nm "u256_mul", 7), (nm "create_ether", creditPrice)], [], [])

private theorem costs_sound {σ : Type} : StateSound σ guestCtx costs :=
  overrideCost_sound (overrideCost_sound stateSound_empty credit_cost)
    (CompactCostReplay.accepted (f := nm "u256_mul") (B := 7) (by decide_cbv))

theorem body_cost {σ : Type} :
    Cost σ guestCtx wdS6 179669089823624876965997082397258484355778 :=
  CompactCostReplay.program_cost costs_sound (by decide_cbv)

#print axioms body_cost
end CompactWithdrawalBody
