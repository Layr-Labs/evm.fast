import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data755
import InitECandidate.Proofs.WordStages.Source819
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate739
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate755_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output755 =
    InitECandidate.Proofs.WordStages.source819 := by
  kernel_rfl
#print axioms translate755_eq
end InitECandidate.Proofs.FrontendStages.Word
