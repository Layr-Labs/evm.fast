import InitECandidate.Proofs.BackendStages.Padded616
import InitECandidate.Proofs.BackendStages.BytesData616
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes616_eq : (Padded616.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes616 := by
  with_unfolding_all rfl
#print axioms sectionBytes616_eq
end InitECandidate.Proofs.BackendStages
