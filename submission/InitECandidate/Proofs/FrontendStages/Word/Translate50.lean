import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data50
import InitECandidate.Proofs.WordStages.Source114
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate34
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate50_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output50 =
    InitECandidate.Proofs.WordStages.source114 := by
  kernel_rfl
#print axioms translate50_eq
end InitECandidate.Proofs.FrontendStages.Word
