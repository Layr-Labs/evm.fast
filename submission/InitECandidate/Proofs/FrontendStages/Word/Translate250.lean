import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data250
import InitECandidate.Proofs.WordStages.Source314
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate234
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate250_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output250 =
    InitECandidate.Proofs.WordStages.source314 := by
  kernel_rfl
#print axioms translate250_eq
end InitECandidate.Proofs.FrontendStages.Word
