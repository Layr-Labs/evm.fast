import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data281
import InitECandidate.Proofs.WordStages.Source345
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate265
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate281_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output281 =
    InitECandidate.Proofs.WordStages.source345 := by
  kernel_rfl
#print axioms translate281_eq
end InitECandidate.Proofs.FrontendStages.Word
