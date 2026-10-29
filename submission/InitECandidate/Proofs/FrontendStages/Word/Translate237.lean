import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data237
import InitECandidate.Proofs.WordStages.Source301
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate237_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output237 =
    InitECandidate.Proofs.WordStages.source301 := by
  kernel_rfl
#print axioms translate237_eq
end InitECandidate.Proofs.FrontendStages.Word
