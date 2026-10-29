import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data373
import InitECandidate.Proofs.WordStages.Source437
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate357
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate373_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output373 =
    InitECandidate.Proofs.WordStages.source437 := by
  kernel_rfl
#print axioms translate373_eq
end InitECandidate.Proofs.FrontendStages.Word
