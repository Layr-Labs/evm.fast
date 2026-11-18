import InitECandidate.Solver.MemSafe.InitCost.Callers.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_get_code := (declPair Guest.Software.guestFn_get_code).2.2
def b_get_code : Nat := 387381627953082270414
theorem cost_get_code : Cost σ guestCtx body_get_code b_get_code :=
  InitCost.Analyzer.analyze_sound table16_sound (by cbv)
theorem cc_get_code : CalleeCost σ guestCtx (nm "get_code") b_get_code := by
  have hc : ∃ rs, guestCode (nm "get_code") = some ((declPair Guest.Software.guestFn_get_code).2.1,body_get_code,rs) :=
    declPair_valid (List.getElem_mem (n := 376) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_get_code
def table17 := InitCost.Analyzer.extend table16 (nm "get_code") b_get_code
theorem table17_sound : TblSound σ guestCtx table17 := InitCost.Analyzer.extend_sound table16_sound cc_get_code
#print axioms cc_get_code
end InitECandidate.Solver.MemSafe.InitCost.Callers
