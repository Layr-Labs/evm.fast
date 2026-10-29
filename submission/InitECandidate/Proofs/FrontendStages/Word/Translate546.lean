import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data546
import InitECandidate.Proofs.WordStages.Source610
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate546_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output546 =
    InitECandidate.Proofs.WordStages.source610 := by
  kernel_rfl
#print axioms translate546_eq
end InitECandidate.Proofs.FrontendStages.Word
