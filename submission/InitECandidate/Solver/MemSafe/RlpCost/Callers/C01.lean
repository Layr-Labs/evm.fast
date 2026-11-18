import InitECandidate.Solver.MemSafe.RlpCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def table0 := InitECandidate.Solver.MemSafe.RlpCost.table
theorem table0_sound : TblSound σ guestCtx table0 := InitECandidate.Solver.MemSafe.RlpCost.table_sound
def body_bal_sort_gt := (declPair Guest.Software.guestFn_bal_sort_gt).2.2
def b_bal_sort_gt : Nat := 34359738377
theorem cost_bal_sort_gt : Cost σ guestCtx body_bal_sort_gt b_bal_sort_gt :=
  ArenaCost.Analyzer.analyze_sound table0_sound (by cbv)
theorem cc_bal_sort_gt : CalleeCost σ guestCtx (nm "bal_sort_gt") b_bal_sort_gt := by
  have hc : ∃ rs, guestCode (nm "bal_sort_gt") =
      some ((declPair Guest.Software.guestFn_bal_sort_gt).2.1,body_bal_sort_gt,rs) :=
    declPair_valid (List.getElem_mem (n := 429) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_bal_sort_gt
def table1 := ArenaCost.Analyzer.extend table0 (nm "bal_sort_gt") b_bal_sort_gt
theorem table1_sound : TblSound σ guestCtx table1 := ArenaCost.Analyzer.extend_sound table0_sound cc_bal_sort_gt
#print axioms cc_bal_sort_gt
end InitECandidate.Solver.MemSafe.RlpCost.Callers
