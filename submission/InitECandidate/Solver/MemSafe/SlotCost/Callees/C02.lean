import InitECandidate.Solver.MemSafe.SlotCost.Callees.C01
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SlotCost.Callees
variable {σ : Type}
def body_sorted_keys32 := (declPair Guest.Software.guestFn_sorted_keys32).2.2
def b_sorted_keys32 : Nat := 9119770220218350580361724144402560528761890499733099
theorem cost_sorted_keys32 : Cost σ guestCtx body_sorted_keys32 b_sorted_keys32 := SlotCost.Core.analyze_sound table1_sound (by cbv)
theorem cc_sorted_keys32 : CalleeCost σ guestCtx (nm "sorted_keys32") b_sorted_keys32 := by
 have hc : ∃ rs, guestCode (nm "sorted_keys32") = some ((declPair Guest.Software.guestFn_sorted_keys32).2.1,body_sorted_keys32,rs) :=
  declPair_valid (List.getElem_mem (n := 431) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact SlotCost.Core.callee_of_body hc cost_sorted_keys32
def table2 := SlotCost.Core.extend table1 (nm "sorted_keys32") b_sorted_keys32
theorem table2_sound : TblSound σ guestCtx table2 := SlotCost.Core.extend_sound table1_sound cc_sorted_keys32
#print axioms cc_sorted_keys32
end InitECandidate.Solver.MemSafe.SlotCost.Callees
