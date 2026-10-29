import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data333
import InitECandidate.Proofs.WordStages.Source397
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate333_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output333 =
    InitECandidate.Proofs.WordStages.source397 := by
  kernel_rfl
#print axioms translate333_eq
end InitECandidate.Proofs.FrontendStages.Word
