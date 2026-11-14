import InitECandidate.Solver.MemSafe.RlpCost.Callers.C17
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_decode_access_list := (declPair Guest.Software.guestFn_decode_access_list).2.2
def b_decode_access_list : Nat := 59469261873183065575365547309944498945446376930748617367556569
theorem cost_decode_access_list : Cost σ guestCtx body_decode_access_list b_decode_access_list :=
  ArenaCost.Analyzer.analyze_sound table17_sound (by cbv)
theorem cc_decode_access_list : CalleeCost σ guestCtx (nm "decode_access_list") b_decode_access_list := by
  have hc : ∃ rs, guestCode (nm "decode_access_list") =
      some ((declPair Guest.Software.guestFn_decode_access_list).2.1,body_decode_access_list,rs) :=
    declPair_valid (List.getElem_mem (n := 303) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_decode_access_list
def table18 := ArenaCost.Analyzer.extend table17 (nm "decode_access_list") b_decode_access_list
theorem table18_sound : TblSound σ guestCtx table18 := ArenaCost.Analyzer.extend_sound table17_sound cc_decode_access_list
#print axioms cc_decode_access_list
end InitECandidate.Solver.MemSafe.RlpCost.Callers
