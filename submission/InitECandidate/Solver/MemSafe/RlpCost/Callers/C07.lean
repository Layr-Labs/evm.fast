import InitECandidate.Solver.MemSafe.RlpCost.Callers.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_rlp_put_u256 := (declPair Guest.Software.guestFn_rlp_put_u256).2.2
def b_rlp_put_u256 : Nat := 73786976432277159993
theorem cost_rlp_put_u256 : Cost σ guestCtx body_rlp_put_u256 b_rlp_put_u256 :=
  ArenaCost.Analyzer.analyze_sound table6_sound (by cbv)
theorem cc_rlp_put_u256 : CalleeCost σ guestCtx (nm "rlp_put_u256") b_rlp_put_u256 := by
  have hc : ∃ rs, guestCode (nm "rlp_put_u256") =
      some ((declPair Guest.Software.guestFn_rlp_put_u256).2.1,body_rlp_put_u256,rs) :=
    declPair_valid (List.getElem_mem (n := 228) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_rlp_put_u256
def table7 := ArenaCost.Analyzer.extend table6 (nm "rlp_put_u256") b_rlp_put_u256
theorem table7_sound : TblSound σ guestCtx table7 := ArenaCost.Analyzer.extend_sound table6_sound cc_rlp_put_u256
#print axioms cc_rlp_put_u256
end InitECandidate.Solver.MemSafe.RlpCost.Callers
