import InitECandidate.Solver.MemSafe.InitCost.Callers.C32
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_increment_nonce := (declPair Guest.Software.guestFn_increment_nonce).2.2
def b_increment_nonce : Nat := 175585701428813344356298136312999594500612
theorem cost_increment_nonce : Cost σ guestCtx body_increment_nonce b_increment_nonce :=
  InitCost.Analyzer.analyze_sound table32_sound (by cbv)
theorem cc_increment_nonce : CalleeCost σ guestCtx (nm "increment_nonce") b_increment_nonce := by
  have hc : ∃ rs, guestCode (nm "increment_nonce") = some ((declPair Guest.Software.guestFn_increment_nonce).2.1,body_increment_nonce,rs) :=
    declPair_valid (List.getElem_mem (n := 398) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_increment_nonce
def table33 := InitCost.Analyzer.extend table32 (nm "increment_nonce") b_increment_nonce
theorem table33_sound : TblSound σ guestCtx table33 := InitCost.Analyzer.extend_sound table32_sound cc_increment_nonce
#print axioms cc_increment_nonce
end InitECandidate.Solver.MemSafe.InitCost.Callers
