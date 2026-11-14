import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_merkleize_progressive := (declPair Guest.Software.guestFn_merkleize_progressive).2.2
def b_merkleize_progressive : Nat := 12554203470773361531414684892686860735374293740448659800313
theorem cost_merkleize_progressive : Cost σ guestCtx body_merkleize_progressive b_merkleize_progressive := ArrayCost.Core.analyze_sound table10_sound (by cbv)
theorem cc_merkleize_progressive : CalleeCost σ guestCtx (nm "merkleize_progressive") b_merkleize_progressive := by
  have hc : ∃ rs, guestCode (nm "merkleize_progressive") = some ((declPair Guest.Software.guestFn_merkleize_progressive).2.1,body_merkleize_progressive,rs) :=
    declPair_valid (List.getElem_mem (n := 188) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_merkleize_progressive
def table11 := ArrayCost.Core.extend table10 (nm "merkleize_progressive") b_merkleize_progressive
theorem table11_sound : TblSound σ guestCtx table11 := ArrayCost.Core.extend_sound table10_sound cc_merkleize_progressive
#print axioms cc_merkleize_progressive
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
