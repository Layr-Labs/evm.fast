import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data227
import InitECandidate.Proofs.WordStages.Source291
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate211
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate227_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output227 =
    InitECandidate.Proofs.WordStages.source291 := by
  kernel_rfl
#print axioms translate227_eq
end InitECandidate.Proofs.FrontendStages.Word
