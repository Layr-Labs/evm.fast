import InitECandidate.Solver.MemSafe.InitCost.Callers.C26
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_get_account_optional := (declPair Guest.Software.guestFn_get_account_optional).2.2
def b_get_account_optional : Nat := 174905136653138997609166903663303162141208
theorem cost_get_account_optional : Cost σ guestCtx body_get_account_optional b_get_account_optional :=
  InitCost.Analyzer.analyze_sound table26_sound (by cbv)
theorem cc_get_account_optional : CalleeCost σ guestCtx (nm "get_account_optional") b_get_account_optional := by
  have hc : ∃ rs, guestCode (nm "get_account_optional") = some ((declPair Guest.Software.guestFn_get_account_optional).2.1,body_get_account_optional,rs) :=
    declPair_valid (List.getElem_mem (n := 374) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_get_account_optional
def table27 := InitCost.Analyzer.extend table26 (nm "get_account_optional") b_get_account_optional
theorem table27_sound : TblSound σ guestCtx table27 := InitCost.Analyzer.extend_sound table26_sound cc_get_account_optional
#print axioms cc_get_account_optional
end InitECandidate.Solver.MemSafe.InitCost.Callers
