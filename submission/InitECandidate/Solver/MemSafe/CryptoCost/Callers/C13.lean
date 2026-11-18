import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_callcode := (declPair Guest.Software.guestFn_op_callcode).2.2
def b_op_callcode : Nat := 5725005529352480645265788077892117760176552978919556328415538552
theorem cost_op_callcode : Cost σ guestCtx body_op_callcode b_op_callcode :=
  Analyzer.analyze_sound table12_sound (by cbv)
theorem cc_op_callcode : CalleeCost σ guestCtx (nm "op_callcode") b_op_callcode := by
  have hc : ∃ rs, guestCode (nm "op_callcode") =
      some ((declPair Guest.Software.guestFn_op_callcode).2.1,body_op_callcode,rs) :=
    declPair_valid (List.getElem_mem (n := 604) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_callcode
def table13 := Analyzer.extend table12 (nm "op_callcode") b_op_callcode
theorem table13_sound : TblSound σ guestCtx table13 := Analyzer.extend_sound table12_sound cc_op_callcode
#print axioms cc_op_callcode
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
