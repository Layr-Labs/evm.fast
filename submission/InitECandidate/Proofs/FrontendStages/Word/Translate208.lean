import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data208
import InitECandidate.Proofs.WordStages.Source272
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate192
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate208_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output208 =
    InitECandidate.Proofs.WordStages.source272 := by
  kernel_rfl
#print axioms translate208_eq
end InitECandidate.Proofs.FrontendStages.Word
