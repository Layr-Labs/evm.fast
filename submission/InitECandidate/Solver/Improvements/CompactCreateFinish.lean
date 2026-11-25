import InitECandidate.Solver.AuthorizationWork.CompactSetCode
import InitECandidate.Solver.Improvements.BoundedCopyCosts
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace CompactCreateFinish
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def rows : TblState :=
  ([(nm "set_code", 179669089823624876969428176797201843951269),
    (nm "memcpy", BoundedCopyCosts.copyPrice), (nm "alloc", 2),
    (nm "charge_state_gas", 1), (nm "charge_gas", 0), (nm "words_of", 2)], [], [])

private theorem rows_sound {σ : Type} : StateSound σ guestCtx rows := by
  have w := CompactCostReplay.accepted (σ := σ) (f := nm "words_of") (B := 2) (by decide_cbv)
  have g := CompactCostReplay.accepted (σ := σ) (f := nm "charge_gas") (B := 0) (by decide_cbv)
  have s := CompactCostReplay.accepted (σ := σ) (f := nm "charge_state_gas") (B := 1) (by decide_cbv)
  have a := CompactCostReplay.accepted (σ := σ) (f := nm "alloc") (B := 2) (by decide_cbv)
  exact overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound
    (overrideCost_sound (overrideCost_sound stateSound_empty w) g) s) a)
    BoundedCopyCosts.memcpy_cost) CompactSetCode.set_code_cost

private def row := declPair Guest.Software.guestFn_create_finish
#eval CompactCostReplay.price rows row.2.2
theorem cost {σ : Type} : CalleeCost σ guestCtx (nm "create_finish")
    (179669089823624876969428176797201843951269 + 137438953508 + 11) :=
  CompactCostReplay.callee_cost (p := row) rows_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 589) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms cost
end CompactCreateFinish
