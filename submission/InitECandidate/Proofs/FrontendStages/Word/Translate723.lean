import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data723
import InitECandidate.Proofs.WordStages.Source787
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate707
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate723_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output723 =
    InitECandidate.Proofs.WordStages.source787 := by
  kernel_rfl
#print axioms translate723_eq
end InitECandidate.Proofs.FrontendStages.Word
