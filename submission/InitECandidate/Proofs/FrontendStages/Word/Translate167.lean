import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data167
import InitECandidate.Proofs.WordStages.Source231
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate151
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate167_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output167 =
    InitECandidate.Proofs.WordStages.source231 := by
  kernel_rfl
#print axioms translate167_eq
end InitECandidate.Proofs.FrontendStages.Word
