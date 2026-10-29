import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data644
import InitECandidate.Proofs.WordStages.Source708
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate628
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate644_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output644 =
    InitECandidate.Proofs.WordStages.source708 := by
  kernel_rfl
#print axioms translate644_eq
end InitECandidate.Proofs.FrontendStages.Word
