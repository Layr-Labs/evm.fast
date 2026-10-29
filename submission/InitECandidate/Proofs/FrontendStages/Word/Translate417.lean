import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data417
import InitECandidate.Proofs.WordStages.Source481
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate401
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate417_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output417 =
    InitECandidate.Proofs.WordStages.source481 := by
  kernel_rfl
#print axioms translate417_eq
end InitECandidate.Proofs.FrontendStages.Word
