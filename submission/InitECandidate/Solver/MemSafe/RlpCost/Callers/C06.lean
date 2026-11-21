import InitECandidate.Solver.MemSafe.RlpCost.Callers.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_sort_elems := (declPair Guest.Software.guestFn_sort_elems).2.2
def b_sort_elems : Nat := 9879751071099579605510838242168286945901030494183464
theorem cost_sort_elems : Cost σ guestCtx body_sort_elems b_sort_elems :=
  ArenaCost.Analyzer.analyze_sound table5_sound (by cbv)
theorem cc_sort_elems : CalleeCost σ guestCtx (nm "sort_elems") b_sort_elems := by
  have hc : ∃ rs, guestCode (nm "sort_elems") =
      some ((declPair Guest.Software.guestFn_sort_elems).2.1,body_sort_elems,rs) :=
    declPair_valid (List.getElem_mem (n := 430) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_sort_elems
def table6 := ArenaCost.Analyzer.extend table5 (nm "sort_elems") b_sort_elems
theorem table6_sound : TblSound σ guestCtx table6 := ArenaCost.Analyzer.extend_sound table5_sound cc_sort_elems
#print axioms cc_sort_elems
end InitECandidate.Solver.MemSafe.RlpCost.Callers
