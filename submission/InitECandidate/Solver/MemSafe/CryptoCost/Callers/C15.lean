import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_create2 := (declPair Guest.Software.guestFn_op_create2).2.2
def b_op_create2 : Nat := 5725018083555951418630763490414322255285219384867756943376484703
theorem cost_op_create2 : Cost σ guestCtx body_op_create2 b_op_create2 :=
  Analyzer.analyze_sound table14_sound (by cbv)
theorem cc_op_create2 : CalleeCost σ guestCtx (nm "op_create2") b_op_create2 := by
  have hc : ∃ rs, guestCode (nm "op_create2") =
      some ((declPair Guest.Software.guestFn_op_create2).2.1,body_op_create2,rs) :=
    declPair_valid (List.getElem_mem (n := 600) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_create2
def table15 := Analyzer.extend table14 (nm "op_create2") b_op_create2
theorem table15_sound : TblSound σ guestCtx table15 := Analyzer.extend_sound table14_sound cc_op_create2
#print axioms cc_op_create2
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
