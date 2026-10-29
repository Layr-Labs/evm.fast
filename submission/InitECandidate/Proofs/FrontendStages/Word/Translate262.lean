import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data262
import InitECandidate.Proofs.WordStages.Source326
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate246
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate262_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output262 =
    InitECandidate.Proofs.WordStages.source326 := by
  kernel_rfl
#print axioms translate262_eq
end InitECandidate.Proofs.FrontendStages.Word
