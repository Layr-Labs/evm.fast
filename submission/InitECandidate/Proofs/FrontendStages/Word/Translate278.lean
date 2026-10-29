import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data278
import InitECandidate.Proofs.WordStages.Source342
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate262
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate278_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output278 =
    InitECandidate.Proofs.WordStages.source342 := by
  kernel_rfl
#print axioms translate278_eq
end InitECandidate.Proofs.FrontendStages.Word
