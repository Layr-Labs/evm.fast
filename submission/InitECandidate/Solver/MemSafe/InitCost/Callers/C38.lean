import InitECandidate.Solver.MemSafe.InitCost.Callers.C37
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_depth0_prepare := (declPair Guest.Software.guestFn_depth0_prepare).2.2
def b_depth0_prepare : Nat := 16383235536047068378567543693732351069578021482395724950984932
theorem cost_depth0_prepare : Cost σ guestCtx body_depth0_prepare b_depth0_prepare :=
  InitCost.Analyzer.analyze_sound table37_sound (by cbv)
theorem cc_depth0_prepare : CalleeCost σ guestCtx (nm "depth0_prepare") b_depth0_prepare := by
  have hc : ∃ rs, guestCode (nm "depth0_prepare") = some ((declPair Guest.Software.guestFn_depth0_prepare).2.1,body_depth0_prepare,rs) :=
    declPair_valid (List.getElem_mem (n := 587) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_depth0_prepare
def table38 := InitCost.Analyzer.extend table37 (nm "depth0_prepare") b_depth0_prepare
theorem table38_sound : TblSound σ guestCtx table38 := InitCost.Analyzer.extend_sound table37_sound cc_depth0_prepare
#print axioms cc_depth0_prepare
end InitECandidate.Solver.MemSafe.InitCost.Callers
