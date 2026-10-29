import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data407
import InitECandidate.Proofs.WordStages.Source471
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate407_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output407 =
    InitECandidate.Proofs.WordStages.source471 := by
  kernel_rfl
#print axioms translate407_eq
end InitECandidate.Proofs.FrontendStages.Word
