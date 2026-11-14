import InitECandidate.Solver.MemSafe.InitCost.Callers.C19
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_warm_address := (declPair Guest.Software.guestFn_warm_address).2.2
def b_warm_address : Nat := 36893490140283929151
theorem cost_warm_address : Cost σ guestCtx body_warm_address b_warm_address :=
  InitCost.Analyzer.analyze_sound table19_sound (by cbv)
theorem cc_warm_address : CalleeCost σ guestCtx (nm "warm_address") b_warm_address := by
  have hc : ∃ rs, guestCode (nm "warm_address") = some ((declPair Guest.Software.guestFn_warm_address).2.1,body_warm_address,rs) :=
    declPair_valid (List.getElem_mem (n := 472) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_warm_address
def table20 := InitCost.Analyzer.extend table19 (nm "warm_address") b_warm_address
theorem table20_sound : TblSound σ guestCtx table20 := InitCost.Analyzer.extend_sound table19_sound cc_warm_address
#print axioms cc_warm_address
end InitECandidate.Solver.MemSafe.InitCost.Callers
