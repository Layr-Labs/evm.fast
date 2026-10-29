import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data568
import InitECandidate.Proofs.WordStages.Source632
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate568_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output568 =
    InitECandidate.Proofs.WordStages.source632 := by
  kernel_rfl
#print axioms translate568_eq
end InitECandidate.Proofs.FrontendStages.Word
