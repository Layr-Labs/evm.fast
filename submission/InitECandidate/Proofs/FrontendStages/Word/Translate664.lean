import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data664
import InitECandidate.Proofs.WordStages.Source728
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate664_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output664 =
    InitECandidate.Proofs.WordStages.source728 := by
  kernel_rfl
#print axioms translate664_eq
end InitECandidate.Proofs.FrontendStages.Word
