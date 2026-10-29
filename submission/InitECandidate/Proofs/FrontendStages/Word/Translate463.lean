import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data463
import InitECandidate.Proofs.WordStages.Source527
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate447
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate463_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output463 =
    InitECandidate.Proofs.WordStages.source527 := by
  kernel_rfl
#print axioms translate463_eq
end InitECandidate.Proofs.FrontendStages.Word
