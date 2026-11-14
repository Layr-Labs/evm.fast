import InitECandidate.Solver.MemSafe.ConstCost.Callers.C21
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_op_create2 := (declPair Guest.Software.guestFn_op_create2).2.2
def b_op_create2 : Nat := 4109135169324035124708544713417285003913283709695792841656289465
theorem cost_op_create2 : Cost σ guestCtx body_op_create2 b_op_create2 :=
  ConstCost.Core.analyze_sound table21_sound (by cbv)
theorem cc_op_create2 : CalleeCost σ guestCtx (nm "op_create2") b_op_create2 := by
  have hc : ∃ rs, guestCode (nm "op_create2") = some ((declPair Guest.Software.guestFn_op_create2).2.1,body_op_create2,rs) :=
    declPair_valid (List.getElem_mem (n := 600) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_op_create2
def table22 := ConstCost.Core.extend table21 (nm "op_create2") b_op_create2
theorem table22_sound : TblSound σ guestCtx table22 := ConstCost.Core.extend_sound table21_sound cc_op_create2
#print axioms cc_op_create2
end InitECandidate.Solver.MemSafe.ConstCost.Callers
