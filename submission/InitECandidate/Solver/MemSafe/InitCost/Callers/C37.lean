import InitECandidate.Solver.MemSafe.InitCost.Callers.C36
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_set_delegation := (declPair Guest.Software.guestFn_set_delegation).2.2
def b_set_delegation : Nat := 16383235536047068377867923147119795079140431530533707223820889
theorem cost_set_delegation : Cost σ guestCtx body_set_delegation b_set_delegation :=
  InitCost.Analyzer.analyze_sound table36_sound (by cbv)
theorem cc_set_delegation : CalleeCost σ guestCtx (nm "set_delegation") b_set_delegation := by
  have hc : ∃ rs, guestCode (nm "set_delegation") = some ((declPair Guest.Software.guestFn_set_delegation).2.1,body_set_delegation,rs) :=
    declPair_valid (List.getElem_mem (n := 575) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_set_delegation
def table37 := InitCost.Analyzer.extend table36 (nm "set_delegation") b_set_delegation
theorem table37_sound : TblSound σ guestCtx table37 := InitCost.Analyzer.extend_sound table36_sound cc_set_delegation
#print axioms cc_set_delegation
end InitECandidate.Solver.MemSafe.InitCost.Callers
