import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data60
import InitECandidate.Proofs.WordStages.Source124
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate44
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate60_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output60 =
    InitECandidate.Proofs.WordStages.source124 := by
  kernel_rfl
#print axioms translate60_eq
end InitECandidate.Proofs.FrontendStages.Word
