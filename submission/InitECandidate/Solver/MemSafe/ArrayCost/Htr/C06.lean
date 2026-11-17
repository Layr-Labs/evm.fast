import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C05
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_bexit := (declPair Guest.Software.guestFn_htr_bexit).2.2
def b_htr_bexit : Nat := 2041694201525630781278309737329546232615
theorem cost_htr_bexit : Cost σ guestCtx body_htr_bexit b_htr_bexit := ArrayCost.Core.analyze_sound table5_sound (by cbv)
theorem cc_htr_bexit : CalleeCost σ guestCtx (nm "htr_bexit") b_htr_bexit := by
  have hc : ∃ rs, guestCode (nm "htr_bexit") = some ((declPair Guest.Software.guestFn_htr_bexit).2.1,body_htr_bexit,rs) :=
    declPair_valid (List.getElem_mem (n := 215) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_bexit
def table6 := ArrayCost.Core.extend table5 (nm "htr_bexit") b_htr_bexit
theorem table6_sound : TblSound σ guestCtx table6 := ArrayCost.Core.extend_sound table5_sound cc_htr_bexit
#print axioms cc_htr_bexit
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
