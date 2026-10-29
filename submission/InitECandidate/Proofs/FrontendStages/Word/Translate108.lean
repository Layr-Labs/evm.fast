import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data108
import InitECandidate.Proofs.WordStages.Source172
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate92
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate108_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output108 =
    InitECandidate.Proofs.WordStages.source172 := by
  kernel_rfl
#print axioms translate108_eq
end InitECandidate.Proofs.FrontendStages.Word
