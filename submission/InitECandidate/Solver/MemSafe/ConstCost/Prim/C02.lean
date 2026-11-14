import InitECandidate.Solver.MemSafe.ConstCost.Prim.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def body_fe_set_one := (declPair Guest.Software.guestFn_fe_set_one).2.2
def b_fe_set_one : Nat := 137438953509
theorem cost_fe_set_one : Cost σ guestCtx body_fe_set_one b_fe_set_one :=
  ConstCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_fe_set_one : CalleeCost σ guestCtx (nm "fe_set_one") b_fe_set_one := by
  have hc : ∃ rs, guestCode (nm "fe_set_one") = some ((declPair Guest.Software.guestFn_fe_set_one).2.1,body_fe_set_one,rs) :=
    declPair_valid (List.getElem_mem (n := 670) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fe_set_one
def table2 := ConstCost.Core.extend table1 (nm "fe_set_one") b_fe_set_one
theorem table2_sound : TblSound σ guestCtx table2 := ConstCost.Core.extend_sound table1_sound cc_fe_set_one
#print axioms cc_fe_set_one
end InitECandidate.Solver.MemSafe.ConstCost.Prim
