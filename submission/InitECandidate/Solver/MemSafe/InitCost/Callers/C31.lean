import InitECandidate.Solver.MemSafe.InitCost.Callers.C30
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_is_account_alive := (declPair Guest.Software.guestFn_is_account_alive).2.2
def b_is_account_alive : Nat := 174905136653138997609240690639598000347680
theorem cost_is_account_alive : Cost σ guestCtx body_is_account_alive b_is_account_alive :=
  InitCost.Analyzer.analyze_sound table30_sound (by cbv)
theorem cc_is_account_alive : CalleeCost σ guestCtx (nm "is_account_alive") b_is_account_alive := by
  have hc : ∃ rs, guestCode (nm "is_account_alive") = some ((declPair Guest.Software.guestFn_is_account_alive).2.1,body_is_account_alive,rs) :=
    declPair_valid (List.getElem_mem (n := 386) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_is_account_alive
def table31 := InitCost.Analyzer.extend table30 (nm "is_account_alive") b_is_account_alive
theorem table31_sound : TblSound σ guestCtx table31 := InitCost.Analyzer.extend_sound table30_sound cc_is_account_alive
#print axioms cc_is_account_alive
end InitECandidate.Solver.MemSafe.InitCost.Callers
