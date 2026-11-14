import InitECandidate.Solver.MemSafe.InitCost.Callers.C24
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_ws_get_account_optional := (declPair Guest.Software.guestFn_ws_get_account_optional).2.2
def b_ws_get_account_optional : Nat := 174905136653138997608871755752145214837576
theorem cost_ws_get_account_optional : Cost σ guestCtx body_ws_get_account_optional b_ws_get_account_optional :=
  InitCost.Analyzer.analyze_sound table24_sound (by cbv)
theorem cc_ws_get_account_optional : CalleeCost σ guestCtx (nm "ws_get_account_optional") b_ws_get_account_optional := by
  have hc : ∃ rs, guestCode (nm "ws_get_account_optional") = some ((declPair Guest.Software.guestFn_ws_get_account_optional).2.1,body_ws_get_account_optional,rs) :=
    declPair_valid (List.getElem_mem (n := 366) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_ws_get_account_optional
def table25 := InitCost.Analyzer.extend table24 (nm "ws_get_account_optional") b_ws_get_account_optional
theorem table25_sound : TblSound σ guestCtx table25 := InitCost.Analyzer.extend_sound table24_sound cc_ws_get_account_optional
#print axioms cc_ws_get_account_optional
end InitECandidate.Solver.MemSafe.InitCost.Callers
