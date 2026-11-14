import InitECandidate.Solver.MemSafe.SlotCost.Seed
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SlotCost.Callees
variable {σ : Type}
def body_sort_elems := (declPair Guest.Software.guestFn_sort_elems).2.2
def b_sort_elems : Nat := 9119770220218350580359188843201403093683958691407424
theorem cost_sort_elems : Cost σ guestCtx body_sort_elems b_sort_elems := SlotCost.Core.analyze_sound table0_sound (by cbv)
theorem cc_sort_elems : CalleeCost σ guestCtx (nm "sort_elems") b_sort_elems := by
 have hc : ∃ rs, guestCode (nm "sort_elems") = some ((declPair Guest.Software.guestFn_sort_elems).2.1,body_sort_elems,rs) :=
  declPair_valid (List.getElem_mem (n := 430) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact SlotCost.Core.callee_of_body hc cost_sort_elems
def table1 := SlotCost.Core.extend table0 (nm "sort_elems") b_sort_elems
theorem table1_sound : TblSound σ guestCtx table1 := SlotCost.Core.extend_sound table0_sound cc_sort_elems
#print axioms cc_sort_elems
end InitECandidate.Solver.MemSafe.SlotCost.Callees
