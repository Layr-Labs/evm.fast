import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_generic_call := (declPair Guest.Software.guestFn_generic_call).2.2
def b_generic_call : Nat := 5725005529352480645262382191679890955831726562093133898840133675
theorem cost_generic_call : Cost σ guestCtx body_generic_call b_generic_call :=
  Analyzer.analyze_sound table9_sound (by cbv)
theorem cc_generic_call : CalleeCost σ guestCtx (nm "generic_call") b_generic_call := by
  have hc : ∃ rs, guestCode (nm "generic_call") =
      some ((declPair Guest.Software.guestFn_generic_call).2.1,body_generic_call,rs) :=
    declPair_valid (List.getElem_mem (n := 601) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_generic_call
def table10 := Analyzer.extend table9 (nm "generic_call") b_generic_call
theorem table10_sound : TblSound σ guestCtx table10 := Analyzer.extend_sound table9_sound cc_generic_call
#print axioms cc_generic_call
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
