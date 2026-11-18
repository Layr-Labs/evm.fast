import InitECandidate.Solver.MemSafe.InitCost.Callers.C22
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_destroy_account := (declPair Guest.Software.guestFn_destroy_account).2.2
def b_destroy_account : Nat := 680564775674346746928318462617884558657
theorem cost_destroy_account : Cost σ guestCtx body_destroy_account b_destroy_account :=
  InitCost.Analyzer.analyze_sound table22_sound (by cbv)
theorem cc_destroy_account : CalleeCost σ guestCtx (nm "destroy_account") b_destroy_account := by
  have hc : ∃ rs, guestCode (nm "destroy_account") = some ((declPair Guest.Software.guestFn_destroy_account).2.1,body_destroy_account,rs) :=
    declPair_valid (List.getElem_mem (n := 390) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_destroy_account
def table23 := InitCost.Analyzer.extend table22 (nm "destroy_account") b_destroy_account
theorem table23_sound : TblSound σ guestCtx table23 := InitCost.Analyzer.extend_sound table22_sound cc_destroy_account
#print axioms cc_destroy_account
end InitECandidate.Solver.MemSafe.InitCost.Callers
