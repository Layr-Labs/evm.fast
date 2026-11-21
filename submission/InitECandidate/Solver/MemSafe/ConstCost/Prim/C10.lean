import InitECandidate.Solver.MemSafe.ConstCost.Prim.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_eq := (declPair Guest.Software.guestFn_fe_eq).2.2
def b_fe_eq : Nat := 137438953509
theorem cost_fe_eq : Cost σ guestCtx body_fe_eq b_fe_eq :=
  ConstCost.Core.analyze_sound table9_sound (by cbv)
theorem cc_fe_eq : CalleeCost σ guestCtx (nm "fe_eq") b_fe_eq := by
  have hc : ∃ rs, guestCode (nm "fe_eq") = some ((declPair Guest.Software.guestFn_fe_eq).2.1,body_fe_eq,rs) :=
    declPair_valid (List.getElem_mem (n := 668) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_eq
def table10 := ConstCost.Core.extend table9 (nm "fe_eq") b_fe_eq
theorem table10_sound : TblSound σ guestCtx table10 := ConstCost.Core.extend_sound table9_sound cc_fe_eq
#print axioms cc_fe_eq
end InitECandidate.Solver.MemSafe.ConstCost.Prim
