import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data307
import InitECandidate.Proofs.WordStages.Source371
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate307_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output307 =
    InitECandidate.Proofs.WordStages.source371 := by
  kernel_rfl
#print axioms translate307_eq
end InitECandidate.Proofs.FrontendStages.Word
