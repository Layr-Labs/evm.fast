import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data421
import InitECandidate.Proofs.WordStages.Source485
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate421_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output421 =
    InitECandidate.Proofs.WordStages.source485 := by
  kernel_rfl
#print axioms translate421_eq
end InitECandidate.Proofs.FrontendStages.Word
