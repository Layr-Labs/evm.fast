import InitECandidate.Solver.MemSafe.ArrayCost.InitSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_ssz_check_offsets := (declPair Guest.Software.guestFn_ssz_check_offsets).2.2
def b_ssz_check_offsets : Nat := 103079215132
theorem cost_ssz_check_offsets : Cost σ guestCtx body_ssz_check_offsets b_ssz_check_offsets := ArrayCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_ssz_check_offsets : CalleeCost σ guestCtx (nm "ssz_check_offsets") b_ssz_check_offsets := by
  have hc : ∃ rs, guestCode (nm "ssz_check_offsets") = some ((declPair Guest.Software.guestFn_ssz_check_offsets).2.1,body_ssz_check_offsets,rs) :=
    declPair_valid (List.getElem_mem (n := 201) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_ssz_check_offsets
def table1 := ArrayCost.Core.extend table0 (nm "ssz_check_offsets") b_ssz_check_offsets
theorem table1_sound : TblSound σ guestCtx table1 := ArrayCost.Core.extend_sound table0_sound cc_ssz_check_offsets
#print axioms cc_ssz_check_offsets
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
