import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_staticcall := (declPair Guest.Software.guestFn_op_staticcall).2.2
def b_op_staticcall : Nat := 5725005529352480645264653236197864719979563944555640700257111854
theorem cost_op_staticcall : Cost σ guestCtx body_op_staticcall b_op_staticcall :=
  Analyzer.analyze_sound table16_sound (by cbv)
theorem cc_op_staticcall : CalleeCost σ guestCtx (nm "op_staticcall") b_op_staticcall := by
  have hc : ∃ rs, guestCode (nm "op_staticcall") =
      some ((declPair Guest.Software.guestFn_op_staticcall).2.1,body_op_staticcall,rs) :=
    declPair_valid (List.getElem_mem (n := 606) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_staticcall
def table17 := Analyzer.extend table16 (nm "op_staticcall") b_op_staticcall
theorem table17_sound : TblSound σ guestCtx table17 := Analyzer.extend_sound table16_sound cc_op_staticcall
#print axioms cc_op_staticcall
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
