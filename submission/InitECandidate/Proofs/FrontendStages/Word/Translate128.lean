import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data128
import InitECandidate.Proofs.WordStages.Source192
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate128_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output128 =
    InitECandidate.Proofs.WordStages.source192 := by
  kernel_rfl
#print axioms translate128_eq
end InitECandidate.Proofs.FrontendStages.Word
