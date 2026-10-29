import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data722
import InitECandidate.Proofs.WordStages.Source786
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate706
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate722_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output722 =
    InitECandidate.Proofs.WordStages.source786 := by
  kernel_rfl
#print axioms translate722_eq
end InitECandidate.Proofs.FrontendStages.Word
