import InitECandidate.Proofs.BackendStages.Padded356
import InitECandidate.Proofs.BackendStages.BytesData356
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes356_eq : (Padded356.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes356 := by
  with_unfolding_all rfl
#print axioms sectionBytes356_eq
end InitECandidate.Proofs.BackendStages
