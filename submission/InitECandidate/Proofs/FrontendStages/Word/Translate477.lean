import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data477
import InitECandidate.Proofs.WordStages.Source541
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate477_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output477 =
    InitECandidate.Proofs.WordStages.source541 := by
  kernel_rfl
#print axioms translate477_eq
end InitECandidate.Proofs.FrontendStages.Word
