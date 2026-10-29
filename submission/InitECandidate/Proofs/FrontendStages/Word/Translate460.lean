import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data460
import InitECandidate.Proofs.WordStages.Source524
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate460_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output460 =
    InitECandidate.Proofs.WordStages.source524 := by
  kernel_rfl
#print axioms translate460_eq
end InitECandidate.Proofs.FrontendStages.Word
