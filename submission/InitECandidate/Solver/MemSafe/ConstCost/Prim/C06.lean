import InitECandidate.Solver.MemSafe.ConstCost.Prim.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_mul := (declPair Guest.Software.guestFn_fe_mul).2.2
def b_fe_mul : Nat := 6125082604576892346786408255673268699451
theorem cost_fe_mul : Cost σ guestCtx body_fe_mul b_fe_mul :=
  ConstCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_fe_mul : CalleeCost σ guestCtx (nm "fe_mul") b_fe_mul := by
  have hc : ∃ rs, guestCode (nm "fe_mul") = some ((declPair Guest.Software.guestFn_fe_mul).2.1,body_fe_mul,rs) :=
    declPair_valid (List.getElem_mem (n := 661) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_mul
def table6 := ConstCost.Core.extend table5 (nm "fe_mul") b_fe_mul
theorem table6_sound : TblSound σ guestCtx table6 := ConstCost.Core.extend_sound table5_sound cc_fe_mul
#print axioms cc_fe_mul
end InitECandidate.Solver.MemSafe.ConstCost.Prim
