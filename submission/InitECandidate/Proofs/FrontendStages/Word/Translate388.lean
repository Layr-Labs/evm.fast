import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data388
import InitECandidate.Proofs.WordStages.Source452
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate372
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate388_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output388 =
    InitECandidate.Proofs.WordStages.source452 := by
  kernel_rfl
#print axioms translate388_eq
end InitECandidate.Proofs.FrontendStages.Word
