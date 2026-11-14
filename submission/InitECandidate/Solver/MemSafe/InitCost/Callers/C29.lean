import InitECandidate.Solver.MemSafe.InitCost.Callers.C28
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_account_exists := (declPair Guest.Software.guestFn_account_exists).2.2
def b_account_exists : Nat := 174905136653138997609166903663303162141209
theorem cost_account_exists : Cost σ guestCtx body_account_exists b_account_exists :=
  InitCost.Analyzer.analyze_sound table28_sound (by cbv)
theorem cc_account_exists : CalleeCost σ guestCtx (nm "account_exists") b_account_exists := by
  have hc : ∃ rs, guestCode (nm "account_exists") = some ((declPair Guest.Software.guestFn_account_exists).2.1,body_account_exists,rs) :=
    declPair_valid (List.getElem_mem (n := 381) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_account_exists
def table29 := InitCost.Analyzer.extend table28 (nm "account_exists") b_account_exists
theorem table29_sound : TblSound σ guestCtx table29 := InitCost.Analyzer.extend_sound table28_sound cc_account_exists
#print axioms cc_account_exists
end InitECandidate.Solver.MemSafe.InitCost.Callers
