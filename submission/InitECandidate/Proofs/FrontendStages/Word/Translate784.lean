import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data784
import InitECandidate.Proofs.WordStages.Source848
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate768
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate784_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output784 =
    InitECandidate.Proofs.WordStages.source848 := by
  kernel_rfl
#print axioms translate784_eq
end InitECandidate.Proofs.FrontendStages.Word
