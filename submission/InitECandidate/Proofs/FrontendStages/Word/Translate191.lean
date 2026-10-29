import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Loop.Data191
import InitECandidate.Proofs.WordStages.Source255
import InitECandidate.Proofs.WordFrontendComputation
import InitECandidate.Proofs.FrontendStages.Word.Translate175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.FrontendStages.Word
theorem translate191_eq : InitECandidate.Proofs.WordFrontendComputation.compileEntry Loop.output191 =
    InitECandidate.Proofs.WordStages.source255 := by
  kernel_rfl
#print axioms translate191_eq
end InitECandidate.Proofs.FrontendStages.Word
