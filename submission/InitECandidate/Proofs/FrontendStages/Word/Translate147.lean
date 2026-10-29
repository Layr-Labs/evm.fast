import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data147
import InitECandidate.Proofs.WordStages.Source211
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate147_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output147 =
    InitECandidate.Proofs.WordStages.source211 := by
  kernel_rfl
#print axioms translate147_eq
end InitECandidate.Proofs.FrontendStages.Word
