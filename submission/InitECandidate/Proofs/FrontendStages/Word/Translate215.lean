import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data215
import InitECandidate.Proofs.WordStages.Source279
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate215_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output215 =
    InitECandidate.Proofs.WordStages.source279 := by
  kernel_rfl
#print axioms translate215_eq
end InitECandidate.Proofs.FrontendStages.Word
