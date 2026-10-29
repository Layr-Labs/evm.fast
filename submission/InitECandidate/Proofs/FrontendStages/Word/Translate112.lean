import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data112
import InitECandidate.Proofs.WordStages.Source176
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate96
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate112_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output112 =
    InitECandidate.Proofs.WordStages.source176 := by
  kernel_rfl
#print axioms translate112_eq
end InitECandidate.Proofs.FrontendStages.Word
