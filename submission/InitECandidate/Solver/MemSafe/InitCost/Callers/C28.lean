import InitECandidate.Solver.MemSafe.InitCost.Callers.C27
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_get_pre_state_account := (declPair Guest.Software.guestFn_get_pre_state_account).2.2
def b_get_pre_state_account : Nat := 174905136653138997609037776452794330453974
theorem cost_get_pre_state_account : Cost σ guestCtx body_get_pre_state_account b_get_pre_state_account :=
  InitCost.Analyzer.analyze_sound table27_sound (by cbv)
theorem cc_get_pre_state_account : CalleeCost σ guestCtx (nm "get_pre_state_account") b_get_pre_state_account := by
  have hc : ∃ rs, guestCode (nm "get_pre_state_account") = some ((declPair Guest.Software.guestFn_get_pre_state_account).2.1,body_get_pre_state_account,rs) :=
    declPair_valid (List.getElem_mem (n := 373) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_get_pre_state_account
def table28 := InitCost.Analyzer.extend table27 (nm "get_pre_state_account") b_get_pre_state_account
theorem table28_sound : TblSound σ guestCtx table28 := InitCost.Analyzer.extend_sound table27_sound cc_get_pre_state_account
#print axioms cc_get_pre_state_account
end InitECandidate.Solver.MemSafe.InitCost.Callers
