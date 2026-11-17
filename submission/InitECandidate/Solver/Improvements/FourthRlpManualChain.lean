import InitECandidate.Solver.Improvements.FourthRlpHeaderCallee
import InitECandidate.Solver.Spec.WalkGuest

/-! The accepted domain-based manual RLP formulas, parameterized by actual
callee facts. The 2^35 list-count bound is preserved, not replaced by a
2^64 generic-loop allowance. Only the header leaf changes. -/
set_option autoImplicit false
set_option maxHeartbeats 0
namespace FourthRlpManualChain
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {σ : Type} {X : Ctx 64}

def validatorBodyCost (header alloc : Nat) : Nat := (2^36+18)*(header+alloc+3)
def validatorCost (header alloc mark release : Nat) : Nat :=
  mark + validatorBodyCost header alloc + 2*release + 4
def totalCost (header alloc mark release : Nat) : Nat :=
  header + validatorCost header alloc mark release + 2
def countCost (header alloc mark release : Nat) : Nat :=
  (2^35+9)*(totalCost header alloc mark release+2)

theorem chain {Bh Ba Bm Br : Nat}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hm : CalleeCost σ X (nm "scratch_mark") Bm)
    (hr : CalleeCost σ X (nm "scratch_release") Br) :
    CalleeCost σ X (nm "_rlp_validate_items_body") (validatorBodyCost Bh Ba) ∧
    CalleeCost σ X (nm "rlp_validate_items") (validatorCost Bh Ba Bm Br) ∧
    CalleeCost σ X (nm "rlp_item_total") (totalCost Bh Ba Bm Br) ∧
    CalleeCost σ X (nm "rlp_list_count") (countCost Bh Ba Bm Br) := by
  have hb := rlp_validate_items_body_cost_dom hC hX hh ha
  have hv := rlp_validate_items_cost hC hm hb hr
  have ht := rlp_item_total_cost hC hh hv
  exact ⟨hb, hv, ht, rlp_list_count_cost_domB hC hX ht⟩

theorem accepted_old_prices :
    validatorBodyCost 36893488147419103248 2 = 2535301201120541591090059280762 ∧
    validatorCost 36893488147419103248 2 0 0 = 2535301201120541591090059280766 ∧
    totalCost 36893488147419103248 2 0 0 = 2535301201157435079237478384016 ∧
    countCost 36893488147419103248 2 0 0 = 87112285978663318910962021928051218058786 := by
  decide

theorem new_prices :
    validatorBodyCost 30 2 = 2405181686390 ∧
    validatorCost 30 2 0 0 = 2405181686394 ∧
    totalCost 30 2 0 0 = 2405181686426 ∧
    countCost 30 2 0 0 = 82641413494817731647356 := by
  decide

#print axioms chain
#print axioms accepted_old_prices
#print axioms new_prices
end FourthRlpManualChain
