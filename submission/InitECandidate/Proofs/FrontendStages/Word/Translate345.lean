import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data345
import InitECandidate.Proofs.WordStages.Source409
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate345_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output345 =
    InitECandidate.Proofs.WordStages.source409 := by
  kernel_rfl
#print axioms translate345_eq
end InitECandidate.Proofs.FrontendStages.Word
