import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_input_blob := (declPair Guest.Software.guestFn_input_blob).2.2
def b_input_blob : Nat := 34359738381
theorem cost_input_blob : Cost σ guestCtx body_input_blob b_input_blob := ArrayCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_input_blob : CalleeCost σ guestCtx (nm "input_blob") b_input_blob := by
  have hc : ∃ rs, guestCode (nm "input_blob") = some ((declPair Guest.Software.guestFn_input_blob).2.1,body_input_blob,rs) :=
    declPair_valid (List.getElem_mem (n := 29) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_input_blob
def table5 := ArrayCost.Core.extend table4 (nm "input_blob") b_input_blob
theorem table5_sound : TblSound σ guestCtx table5 := ArrayCost.Core.extend_sound table4_sound cc_input_blob
#print axioms cc_input_blob
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
