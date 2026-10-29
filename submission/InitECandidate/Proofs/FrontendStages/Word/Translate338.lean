import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data338
import InitECandidate.Proofs.WordStages.Source402
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate338_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output338 =
    InitECandidate.Proofs.WordStages.source402 := by
  kernel_rfl
#print axioms translate338_eq
end InitECandidate.Proofs.FrontendStages.Word
