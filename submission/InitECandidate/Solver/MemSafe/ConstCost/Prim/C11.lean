import InitECandidate.Solver.MemSafe.ConstCost.Prim.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_is_zero := (declPair Guest.Software.guestFn_fe_is_zero).2.2
def b_fe_is_zero : Nat := 34359738378
theorem cost_fe_is_zero : Cost σ guestCtx body_fe_is_zero b_fe_is_zero :=
  ConstCost.Core.analyze_sound table10_sound (by cbv)
theorem cc_fe_is_zero : CalleeCost σ guestCtx (nm "fe_is_zero") b_fe_is_zero := by
  have hc : ∃ rs, guestCode (nm "fe_is_zero") = some ((declPair Guest.Software.guestFn_fe_is_zero).2.1,body_fe_is_zero,rs) :=
    declPair_valid (List.getElem_mem (n := 667) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_is_zero
def table11 := ConstCost.Core.extend table10 (nm "fe_is_zero") b_fe_is_zero
theorem table11_sound : TblSound σ guestCtx table11 := ConstCost.Core.extend_sound table10_sound cc_fe_is_zero
#print axioms cc_fe_is_zero
end InitECandidate.Solver.MemSafe.ConstCost.Prim
