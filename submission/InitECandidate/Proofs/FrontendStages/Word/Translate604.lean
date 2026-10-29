import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data604
import InitECandidate.Proofs.WordStages.Source668
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate588
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate604_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output604 =
    InitECandidate.Proofs.WordStages.source668 := by
  kernel_rfl
#print axioms translate604_eq
end InitECandidate.Proofs.FrontendStages.Word
