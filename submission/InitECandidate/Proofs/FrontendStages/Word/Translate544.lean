import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data544
import InitECandidate.Proofs.WordStages.Source608
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate544_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output544 =
    InitECandidate.Proofs.WordStages.source608 := by
  kernel_rfl
#print axioms translate544_eq
end InitECandidate.Proofs.FrontendStages.Word
