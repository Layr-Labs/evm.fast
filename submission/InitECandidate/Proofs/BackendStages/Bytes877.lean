import InitECandidate.Proofs.BackendStages.Padded877
import InitECandidate.Proofs.BackendStages.BytesData877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes877_eq : (Padded877.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes877 := by
  with_unfolding_all rfl
#print axioms sectionBytes877_eq
end InitECandidate.Proofs.BackendStages
