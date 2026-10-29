import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data562
import InitECandidate.Proofs.WordStages.Source626
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate562_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output562 =
    InitECandidate.Proofs.WordStages.source626 := by
  kernel_rfl
#print axioms translate562_eq
end InitECandidate.Proofs.FrontendStages.Word
