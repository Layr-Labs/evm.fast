import InitECandidate.Solver.MemSafe.SeqCost.Callers.C08
import InitECandidate.Solver.MemSafe.ConstCost.Core
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Prim
variable {σ : Type}
def table0 := SeqCost.Callers.table8
theorem table0_sound : TblSound σ guestCtx table0 := SeqCost.Callers.table8_sound
def body_is_zero_bytes := (declPair Guest.Software.guestFn_is_zero_bytes).2.2
def b_is_zero_bytes : Nat := 34359738377
theorem cost_is_zero_bytes : Cost σ guestCtx body_is_zero_bytes b_is_zero_bytes :=
  ConstCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_is_zero_bytes : CalleeCost σ guestCtx (nm "is_zero_bytes") b_is_zero_bytes := by
  have hc : ∃ rs, guestCode (nm "is_zero_bytes") = some ((declPair Guest.Software.guestFn_is_zero_bytes).2.1,body_is_zero_bytes,rs) :=
    declPair_valid (List.getElem_mem (n := 19) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_is_zero_bytes
def table1 := ConstCost.Core.extend table0 (nm "is_zero_bytes") b_is_zero_bytes
theorem table1_sound : TblSound σ guestCtx table1 := ConstCost.Core.extend_sound table0_sound cc_is_zero_bytes
#print axioms cc_is_zero_bytes
end InitECandidate.Solver.MemSafe.ConstCost.Prim
