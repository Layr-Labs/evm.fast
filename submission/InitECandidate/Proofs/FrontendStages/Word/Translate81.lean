import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data81
import InitECandidate.Proofs.WordStages.Source145
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate81_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output81 =
    InitECandidate.Proofs.WordStages.source145 := by
  kernel_rfl
#print axioms translate81_eq
end InitECandidate.Proofs.FrontendStages.Word
