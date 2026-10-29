import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data809
import InitECandidate.Proofs.WordStages.Source873
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate809_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output809 =
    InitECandidate.Proofs.WordStages.source873 := by
  kernel_rfl
#print axioms translate809_eq
end InitECandidate.Proofs.FrontendStages.Word
