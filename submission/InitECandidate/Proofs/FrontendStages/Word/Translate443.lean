import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data443
import InitECandidate.Proofs.WordStages.Source507
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate427
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate443_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output443 =
    InitECandidate.Proofs.WordStages.source507 := by
  kernel_rfl
#print axioms translate443_eq
end InitECandidate.Proofs.FrontendStages.Word
