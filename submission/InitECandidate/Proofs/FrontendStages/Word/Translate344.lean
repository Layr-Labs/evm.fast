import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data344
import InitECandidate.Proofs.WordStages.Source408
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate344_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output344 =
    InitECandidate.Proofs.WordStages.source408 := by
  kernel_rfl
#print axioms translate344_eq
end InitECandidate.Proofs.FrontendStages.Word
