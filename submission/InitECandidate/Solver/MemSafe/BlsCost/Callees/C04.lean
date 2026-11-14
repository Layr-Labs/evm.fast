import InitECandidate.Solver.MemSafe.BlsCost.Callees.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_add := (declPair Guest.Software.guestFn_g1_add).2.2
def b_g1_add : Nat := 274877908948
theorem cost_g1_add : Cost σ guestCtx body_g1_add b_g1_add := ConstCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_g1_add : CalleeCost σ guestCtx (nm "g1_add") b_g1_add := by
  have hc : ∃ rs, guestCode (nm "g1_add") = some ((declPair Guest.Software.guestFn_g1_add).2.1,body_g1_add,rs) :=
    declPair_valid (List.getElem_mem (n := 763) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_add
def table4 := ConstCost.Core.extend table3 (nm "g1_add") b_g1_add
theorem table4_sound : TblSound σ guestCtx table4 := ConstCost.Core.extend_sound table3_sound cc_g1_add
#print axioms cc_g1_add
end InitECandidate.Solver.MemSafe.BlsCost.Callees
