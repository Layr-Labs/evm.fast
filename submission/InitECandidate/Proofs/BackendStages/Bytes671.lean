import InitECandidate.Proofs.BackendStages.Padded671
import InitECandidate.Proofs.BackendStages.BytesData671
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes671_eq : (Padded671.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes671 := by
  with_unfolding_all rfl
#print axioms sectionBytes671_eq
end InitECandidate.Proofs.BackendStages
