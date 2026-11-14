import InitECandidate.Solver.MemSafe.ConstCost.Callers.C17
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_generic_create := (declPair Guest.Software.guestFn_generic_create).2.2
def b_generic_create : Nat := 4109135169324035124708543352287817320159428564925277954914830361
theorem cost_generic_create : Cost σ guestCtx body_generic_create b_generic_create :=
  ConstCost.Core.analyze_sound table17_sound (by cbv)
theorem cc_generic_create : CalleeCost σ guestCtx (nm "generic_create") b_generic_create := by
  have hc : ∃ rs, guestCode (nm "generic_create") = some ((declPair Guest.Software.guestFn_generic_create).2.1,body_generic_create,rs) :=
    declPair_valid (List.getElem_mem (n := 598) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_generic_create
def table18 := ConstCost.Core.extend table17 (nm "generic_create") b_generic_create
theorem table18_sound : TblSound σ guestCtx table18 := ConstCost.Core.extend_sound table17_sound cc_generic_create
#print axioms cc_generic_create
end InitECandidate.Solver.MemSafe.ConstCost.Callers
