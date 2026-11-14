import InitECandidate.Solver.MemSafe.InitCost.Callers.C29
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_get_account := (declPair Guest.Software.guestFn_get_account).2.2
def b_get_account : Nat := 174905136653138997609166903663303162141214
theorem cost_get_account : Cost σ guestCtx body_get_account b_get_account :=
  InitCost.Analyzer.analyze_sound table29_sound (by cbv)
theorem cc_get_account : CalleeCost σ guestCtx (nm "get_account") b_get_account := by
  have hc : ∃ rs, guestCode (nm "get_account") = some ((declPair Guest.Software.guestFn_get_account).2.1,body_get_account,rs) :=
    declPair_valid (List.getElem_mem (n := 375) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_get_account
def table30 := InitCost.Analyzer.extend table29 (nm "get_account") b_get_account
theorem table30_sound : TblSound σ guestCtx table30 := InitCost.Analyzer.extend_sound table29_sound cc_get_account
#print axioms cc_get_account
end InitECandidate.Solver.MemSafe.InitCost.Callers
