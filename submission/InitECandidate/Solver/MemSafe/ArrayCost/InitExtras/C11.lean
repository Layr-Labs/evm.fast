import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_mpt_init := (declPair Guest.Software.guestFn_mpt_init).2.2
def b_mpt_init : Nat := 1267650601593288464188160606667
theorem cost_mpt_init : Cost σ guestCtx body_mpt_init b_mpt_init := ArrayCost.Core.analyze_sound table10_sound (by cbv)
theorem cc_mpt_init : CalleeCost σ guestCtx (nm "mpt_init") b_mpt_init := by
  have hc : ∃ rs, guestCode (nm "mpt_init") = some ((declPair Guest.Software.guestFn_mpt_init).2.1,body_mpt_init,rs) :=
    declPair_valid (List.getElem_mem (n := 247) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_mpt_init
def table11 := ArrayCost.Core.extend table10 (nm "mpt_init") b_mpt_init
theorem table11_sound : TblSound σ guestCtx table11 := ArrayCost.Core.extend_sound table10_sound cc_mpt_init
#print axioms cc_mpt_init
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
