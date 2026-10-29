import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data244
import InitECandidate.Proofs.WordStages.Source308
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate228
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate244_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output244 =
    InitECandidate.Proofs.WordStages.source308 := by
  kernel_rfl
#print axioms translate244_eq
end InitECandidate.Proofs.FrontendStages.Word
