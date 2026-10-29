import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data301
import InitECandidate.Proofs.WordStages.Source365
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate285
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate301_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output301 =
    InitECandidate.Proofs.WordStages.source365 := by
  kernel_rfl
#print axioms translate301_eq
end InitECandidate.Proofs.FrontendStages.Word
