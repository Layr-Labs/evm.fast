import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data375
import InitECandidate.Proofs.WordStages.Source439
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate375_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output375 =
    InitECandidate.Proofs.WordStages.source439 := by
  kernel_rfl
#print axioms translate375_eq
end InitECandidate.Proofs.FrontendStages.Word
