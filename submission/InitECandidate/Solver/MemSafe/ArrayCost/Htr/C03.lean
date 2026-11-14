import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C02
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_bytes_vector := (declPair Guest.Software.guestFn_htr_bytes_vector).2.2
def b_htr_bytes_vector : Nat := 680564733841876927092769912626434015550
theorem cost_htr_bytes_vector : Cost σ guestCtx body_htr_bytes_vector b_htr_bytes_vector := ArrayCost.Core.analyze_sound table2_sound (by cbv)
theorem cc_htr_bytes_vector : CalleeCost σ guestCtx (nm "htr_bytes_vector") b_htr_bytes_vector := by
  have hc : ∃ rs, guestCode (nm "htr_bytes_vector") = some ((declPair Guest.Software.guestFn_htr_bytes_vector).2.1,body_htr_bytes_vector,rs) :=
    declPair_valid (List.getElem_mem (n := 193) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_bytes_vector
def table3 := ArrayCost.Core.extend table2 (nm "htr_bytes_vector") b_htr_bytes_vector
theorem table3_sound : TblSound σ guestCtx table3 := ArrayCost.Core.extend_sound table2_sound cc_htr_bytes_vector
#print axioms cc_htr_bytes_vector
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
