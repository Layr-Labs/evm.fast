import InitECandidate.Solver.MemSafe.ConstCost.Prim.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_sqr := (declPair Guest.Software.guestFn_fe_sqr).2.2
def b_fe_sqr : Nat := 12250165209153784693572816511346537399143
theorem cost_fe_sqr : Cost σ guestCtx body_fe_sqr b_fe_sqr :=
  ConstCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_fe_sqr : CalleeCost σ guestCtx (nm "fe_sqr") b_fe_sqr := by
  have hc : ∃ rs, guestCode (nm "fe_sqr") = some ((declPair Guest.Software.guestFn_fe_sqr).2.1,body_fe_sqr,rs) :=
    declPair_valid (List.getElem_mem (n := 662) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_sqr
def table8 := ConstCost.Core.extend table7 (nm "fe_sqr") b_fe_sqr
theorem table8_sound : TblSound σ guestCtx table8 := ConstCost.Core.extend_sound table7_sound cc_fe_sqr
#print axioms cc_fe_sqr
end InitECandidate.Solver.MemSafe.ConstCost.Prim
