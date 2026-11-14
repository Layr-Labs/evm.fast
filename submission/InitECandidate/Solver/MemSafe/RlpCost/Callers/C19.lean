import InitECandidate.Solver.MemSafe.RlpCost.Callers.C18
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Callers
variable {σ : Type}
def body_decode_blob_hashes := (declPair Guest.Software.guestFn_decode_blob_hashes).2.2
def b_decode_blob_hashes : Nat := 3223835145950722928063660318596762255248080
theorem cost_decode_blob_hashes : Cost σ guestCtx body_decode_blob_hashes b_decode_blob_hashes :=
  ArenaCost.Analyzer.analyze_sound table18_sound (by cbv)
theorem cc_decode_blob_hashes : CalleeCost σ guestCtx (nm "decode_blob_hashes") b_decode_blob_hashes := by
  have hc : ∃ rs, guestCode (nm "decode_blob_hashes") =
      some ((declPair Guest.Software.guestFn_decode_blob_hashes).2.1,body_decode_blob_hashes,rs) :=
    declPair_valid (List.getElem_mem (n := 304) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArenaCost.Analyzer.callee_of_body hc cost_decode_blob_hashes
def table19 := ArenaCost.Analyzer.extend table18 (nm "decode_blob_hashes") b_decode_blob_hashes
theorem table19_sound : TblSound σ guestCtx table19 := ArenaCost.Analyzer.extend_sound table18_sound cc_decode_blob_hashes
#print axioms cc_decode_blob_hashes
end InitECandidate.Solver.MemSafe.RlpCost.Callers
