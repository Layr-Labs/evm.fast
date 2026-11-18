import InitECandidate.Solver.MemSafe.FqCost.Retable.S025
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_kzg_decompress_g1 := (declPair Guest.Software.guestFn_kzg_decompress_g1).2.2
def b_kzg_decompress_g1 : Nat := 2748564867120162144835
theorem cost_kzg_decompress_g1 : Cost σ guestCtx body_kzg_decompress_g1 b_kzg_decompress_g1 := FqCost.CombCore.analyze_sound table25_sound (by cbv)
theorem cc_kzg_decompress_g1 : CalleeCost σ guestCtx (nm "kzg_decompress_g1") b_kzg_decompress_g1 := by
 have hc : guestCode (nm "kzg_decompress_g1") = some ((declPair Guest.Software.guestFn_kzg_decompress_g1).2.1,body_kzg_decompress_g1,(fnEntry Guest.Software.guestFn_kzg_decompress_g1).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 797) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_kzg_decompress_g1
def table26 := FqCost.CombCore.extend table25 (nm "kzg_decompress_g1") b_kzg_decompress_g1
theorem table26_sound : TblSound σ guestCtx table26 := FqCost.CombCore.extend_sound table25_sound cc_kzg_decompress_g1
#print axioms cc_kzg_decompress_g1
end InitECandidate.Solver.MemSafe.FqCost.Retable
