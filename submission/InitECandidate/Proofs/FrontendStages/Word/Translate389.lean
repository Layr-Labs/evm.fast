import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data389
import InitECandidate.Proofs.WordStages.Source453
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate389_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output389 =
    InitECandidate.Proofs.WordStages.source453 := by
  kernel_rfl
#print axioms translate389_eq
end InitECandidate.Proofs.FrontendStages.Word
