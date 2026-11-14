import InitECandidate.Solver.MemSafe.ArrayCost.HtrSeed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_merkleize := (declPair Guest.Software.guestFn_merkleize).2.2
def b_merkleize : Nat := 680564733841876927092769912076678201507
theorem cost_merkleize : Cost σ guestCtx body_merkleize b_merkleize := ArrayCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_merkleize : CalleeCost σ guestCtx (nm "merkleize") b_merkleize := by
  have hc : ∃ rs, guestCode (nm "merkleize") = some ((declPair Guest.Software.guestFn_merkleize).2.1,body_merkleize,rs) :=
    declPair_valid (List.getElem_mem (n := 186) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_merkleize
def table1 := ArrayCost.Core.extend table0 (nm "merkleize") b_merkleize
theorem table1_sound : TblSound σ guestCtx table1 := ArrayCost.Core.extend_sound table0_sound cc_merkleize
#print axioms cc_merkleize
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
