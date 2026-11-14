import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def body__create_branch_from_two_leaves := (declPair Guest.Software.guestFn__create_branch_from_two_leaves).2.2
def b__create_branch_from_two_leaves : Nat := 137438953521
theorem cost__create_branch_from_two_leaves : Cost σ guestCtx body__create_branch_from_two_leaves b__create_branch_from_two_leaves :=
  ReaderCost.Analyzer.analyze_sound table3_sound (by cbv)
theorem cc__create_branch_from_two_leaves : CalleeCost σ guestCtx (nm "_create_branch_from_two_leaves") b__create_branch_from_two_leaves := by
  have hc : ∃ rs, guestCode (nm "_create_branch_from_two_leaves") = some ((declPair Guest.Software.guestFn__create_branch_from_two_leaves).2.1,body__create_branch_from_two_leaves,rs) :=
    declPair_valid (List.getElem_mem (n := 272) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost__create_branch_from_two_leaves
def table4 := ReaderCost.Analyzer.extend table3 (nm "_create_branch_from_two_leaves") b__create_branch_from_two_leaves
theorem table4_sound : TblSound σ guestCtx table4 := ReaderCost.Analyzer.extend_sound table3_sound cc__create_branch_from_two_leaves
#print axioms cc__create_branch_from_two_leaves
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
