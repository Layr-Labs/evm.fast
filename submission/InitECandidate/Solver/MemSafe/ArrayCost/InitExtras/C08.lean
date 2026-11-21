import InitECandidate.Solver.MemSafe.ArrayCost.InitExtras.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
variable {σ : Type}
def body_evm_init := (declPair Guest.Software.guestFn_evm_init).2.2
def b_evm_init : Nat := 633825300796644232368958210388
theorem cost_evm_init : Cost σ guestCtx body_evm_init b_evm_init := ArrayCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_evm_init : CalleeCost σ guestCtx (nm "evm_init") b_evm_init := by
  have hc : ∃ rs, guestCode (nm "evm_init") = some ((declPair Guest.Software.guestFn_evm_init).2.1,body_evm_init,rs) :=
    declPair_valid (List.getElem_mem (n := 566) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_evm_init
def table8 := ArrayCost.Core.extend table7 (nm "evm_init") b_evm_init
theorem table8_sound : TblSound σ guestCtx table8 := ArrayCost.Core.extend_sound table7_sound cc_evm_init
#print axioms cc_evm_init
end InitECandidate.Solver.MemSafe.ArrayCost.InitExtras
