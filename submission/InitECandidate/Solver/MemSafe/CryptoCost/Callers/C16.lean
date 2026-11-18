import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C15
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_delegatecall := (declPair Guest.Software.guestFn_op_delegatecall).2.2
def b_op_delegatecall : Nat := 5725005529352480645264653236197864719979563944555640700257111854
theorem cost_op_delegatecall : Cost σ guestCtx body_op_delegatecall b_op_delegatecall :=
  Analyzer.analyze_sound table15_sound (by cbv)
theorem cc_op_delegatecall : CalleeCost σ guestCtx (nm "op_delegatecall") b_op_delegatecall := by
  have hc : ∃ rs, guestCode (nm "op_delegatecall") =
      some ((declPair Guest.Software.guestFn_op_delegatecall).2.1,body_op_delegatecall,rs) :=
    declPair_valid (List.getElem_mem (n := 605) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_delegatecall
def table16 := Analyzer.extend table15 (nm "op_delegatecall") b_op_delegatecall
theorem table16_sound : TblSound σ guestCtx table16 := Analyzer.extend_sound table15_sound cc_op_delegatecall
#print axioms cc_op_delegatecall
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
