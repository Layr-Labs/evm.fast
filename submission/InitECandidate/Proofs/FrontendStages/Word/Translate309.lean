import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data309
import InitECandidate.Proofs.WordStages.Source373
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate309_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output309 =
    InitECandidate.Proofs.WordStages.source373 := by
  kernel_rfl
#print axioms translate309_eq
end InitECandidate.Proofs.FrontendStages.Word
