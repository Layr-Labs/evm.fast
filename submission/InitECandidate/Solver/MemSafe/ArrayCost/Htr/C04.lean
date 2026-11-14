import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_u64_at := (declPair Guest.Software.guestFn_htr_u64_at).2.2
def b_htr_u64_at : Nat := 274877907018
theorem cost_htr_u64_at : Cost σ guestCtx body_htr_u64_at b_htr_u64_at := ArrayCost.Core.analyze_sound table3_sound (by cbv)
theorem cc_htr_u64_at : CalleeCost σ guestCtx (nm "htr_u64_at") b_htr_u64_at := by
  have hc : ∃ rs, guestCode (nm "htr_u64_at") = some ((declPair Guest.Software.guestFn_htr_u64_at).2.1,body_htr_u64_at,rs) :=
    declPair_valid (List.getElem_mem (n := 195) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_u64_at
def table4 := ArrayCost.Core.extend table3 (nm "htr_u64_at") b_htr_u64_at
theorem table4_sound : TblSound σ guestCtx table4 := ArrayCost.Core.extend_sound table3_sound cc_htr_u64_at
#print axioms cc_htr_u64_at
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
