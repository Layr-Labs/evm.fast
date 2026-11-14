import InitECandidate.Solver.MemSafe.InitCost.Callers.C20
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_set_account := (declPair Guest.Software.guestFn_set_account).2.2
def b_set_account : Nat := 129127210646270640753
theorem cost_set_account : Cost σ guestCtx body_set_account b_set_account :=
  InitCost.Analyzer.analyze_sound table20_sound (by cbv)
theorem cc_set_account : CalleeCost σ guestCtx (nm "set_account") b_set_account := by
  have hc : ∃ rs, guestCode (nm "set_account") = some ((declPair Guest.Software.guestFn_set_account).2.1,body_set_account,rs) :=
    declPair_valid (List.getElem_mem (n := 387) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_set_account
def table21 := InitCost.Analyzer.extend table20 (nm "set_account") b_set_account
theorem table21_sound : TblSound σ guestCtx table21 := InitCost.Analyzer.extend_sound table20_sound cc_set_account
#print axioms cc_set_account
end InitECandidate.Solver.MemSafe.InitCost.Callers
