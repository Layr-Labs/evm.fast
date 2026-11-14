import InitECandidate.Solver.MemSafe.InitCost.Callers.C31
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_ext_code_of := (declPair Guest.Software.guestFn_ext_code_of).2.2
def b_ext_code_of : Nat := 174905136653138997609554285291256244411630
theorem cost_ext_code_of : Cost σ guestCtx body_ext_code_of b_ext_code_of :=
  InitCost.Analyzer.analyze_sound table31_sound (by cbv)
theorem cc_ext_code_of : CalleeCost σ guestCtx (nm "ext_code_of") b_ext_code_of := by
  have hc : ∃ rs, guestCode (nm "ext_code_of") = some ((declPair Guest.Software.guestFn_ext_code_of).2.1,body_ext_code_of,rs) :=
    declPair_valid (List.getElem_mem (n := 543) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_ext_code_of
def table32 := InitCost.Analyzer.extend table31 (nm "ext_code_of") b_ext_code_of
theorem table32_sound : TblSound σ guestCtx table32 := InitCost.Analyzer.extend_sound table31_sound cc_ext_code_of
#print axioms cc_ext_code_of
end InitECandidate.Solver.MemSafe.InitCost.Callers
