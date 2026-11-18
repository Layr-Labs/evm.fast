import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_fork_init := (declPair Guest.Software.guestFn_fork_init).2.2
def b_fork_init : Nat := 274877907152
theorem cost_fork_init : Cost σ guestCtx body_fork_init b_fork_init := ArrayCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_fork_init : CalleeCost σ guestCtx (nm "fork_init") b_fork_init := by
  have hc : ∃ rs, guestCode (nm "fork_init") = some ((declPair Guest.Software.guestFn_fork_init).2.1,body_fork_init,rs) :=
    declPair_valid (List.getElem_mem (n := 861) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_fork_init
def table9 := ArrayCost.Core.extend table8 (nm "fork_init") b_fork_init
theorem table9_sound : TblSound σ guestCtx table9 := ArrayCost.Core.extend_sound table8_sound cc_fork_init
#print axioms cc_fork_init
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
