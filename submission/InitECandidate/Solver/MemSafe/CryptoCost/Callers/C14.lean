import InitECandidate.Solver.MemSafe.CryptoCost.Callers.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def body_op_create := (declPair Guest.Software.guestFn_op_create).2.2
def b_op_create : Nat := 5725018083555951418631897651543841453605281086654088086388352895
theorem cost_op_create : Cost σ guestCtx body_op_create b_op_create :=
  Analyzer.analyze_sound table13_sound (by cbv)
theorem cc_op_create : CalleeCost σ guestCtx (nm "op_create") b_op_create := by
  have hc : ∃ rs, guestCode (nm "op_create") =
      some ((declPair Guest.Software.guestFn_op_create).2.1,body_op_create,rs) :=
    declPair_valid (List.getElem_mem (n := 599) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact Analyzer.callee_of_body hc cost_op_create
def table14 := Analyzer.extend table13 (nm "op_create") b_op_create
theorem table14_sound : TblSound σ guestCtx table14 := Analyzer.extend_sound table13_sound cc_op_create
#print axioms cc_op_create
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
