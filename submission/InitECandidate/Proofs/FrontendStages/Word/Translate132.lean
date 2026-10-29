import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data132
import InitECandidate.Proofs.WordStages.Source196
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate116
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate132_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output132 =
    InitECandidate.Proofs.WordStages.source196 := by
  kernel_rfl
#print axioms translate132_eq
end InitECandidate.Proofs.FrontendStages.Word
