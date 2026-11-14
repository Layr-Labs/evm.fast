import InitECandidate.Solver.MemSafe.InitCost.Callers.C33
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_set_code := (declPair Guest.Software.guestFn_set_code).2.2
def b_set_code : Nat := 176266266162655221283520033435859982296382
theorem cost_set_code : Cost σ guestCtx body_set_code b_set_code :=
  InitCost.Analyzer.analyze_sound table33_sound (by cbv)
theorem cc_set_code : CalleeCost σ guestCtx (nm "set_code") b_set_code := by
  have hc : ∃ rs, guestCode (nm "set_code") = some ((declPair Guest.Software.guestFn_set_code).2.1,body_set_code,rs) :=
    declPair_valid (List.getElem_mem (n := 399) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_set_code
def table34 := InitCost.Analyzer.extend table33 (nm "set_code") b_set_code
theorem table34_sound : TblSound σ guestCtx table34 := InitCost.Analyzer.extend_sound table33_sound cc_set_code
#print axioms cc_set_code
end InitECandidate.Solver.MemSafe.InitCost.Callers
