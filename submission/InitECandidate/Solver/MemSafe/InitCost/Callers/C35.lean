import InitECandidate.Solver.MemSafe.InitCost.Callers.C34
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_validate_authorization_checks := (declPair Guest.Software.guestFn_validate_authorization_checks).2.2
def b_validate_authorization_checks : Nat := 174905136653138997609554285291256244411631
theorem cost_validate_authorization_checks : Cost σ guestCtx body_validate_authorization_checks b_validate_authorization_checks :=
  InitCost.Analyzer.analyze_sound table34_sound (by cbv)
theorem cc_validate_authorization_checks : CalleeCost σ guestCtx (nm "validate_authorization_checks") b_validate_authorization_checks := by
  have hc : ∃ rs, guestCode (nm "validate_authorization_checks") = some ((declPair Guest.Software.guestFn_validate_authorization_checks).2.1,body_validate_authorization_checks,rs) :=
    declPair_valid (List.getElem_mem (n := 574) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_validate_authorization_checks
def table35 := InitCost.Analyzer.extend table34 (nm "validate_authorization_checks") b_validate_authorization_checks
theorem table35_sound : TblSound σ guestCtx table35 := InitCost.Analyzer.extend_sound table34_sound cc_validate_authorization_checks
#print axioms cc_validate_authorization_checks
end InitECandidate.Solver.MemSafe.InitCost.Callers
