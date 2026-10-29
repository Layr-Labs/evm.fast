import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data144
import InitECandidate.Proofs.WordStages.Source208
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate128
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate144_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output144 =
    InitECandidate.Proofs.WordStages.source208 := by
  kernel_rfl
#print axioms translate144_eq
end InitECandidate.Proofs.FrontendStages.Word
