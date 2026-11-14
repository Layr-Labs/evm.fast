import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_call := (declPair Guest.Software.guestFn_op_call).2.2
def b_op_call : Nat := 5725005529352480645266922919586370800373542087070448251412171715
theorem cost_op_call : Cost σ guestCtx body_op_call b_op_call :=
  Analyzer.analyze_sound table11_sound (by cbv)
theorem cc_op_call : CalleeCost σ guestCtx (nm "op_call") b_op_call := by
  have hc : ∃ rs, guestCode (nm "op_call") =
      some ((declPair Guest.Software.guestFn_op_call).2.1,body_op_call,rs) :=
    declPair_valid (List.getElem_mem (n := 603) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_call
def table12 := Analyzer.extend table11 (nm "op_call") b_op_call
theorem table12_sound : TblSound σ guestCtx table12 := Analyzer.extend_sound table11_sound cc_op_call
#print axioms cc_op_call
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
