import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data91
import InitECandidate.Proofs.WordStages.Source155
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate75
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate91_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output91 =
    InitECandidate.Proofs.WordStages.source155 := by
  kernel_rfl
#print axioms translate91_eq
end InitECandidate.Proofs.FrontendStages.Word
