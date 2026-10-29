import InitECandidate.Proofs.BackendStages.Padded468
import InitECandidate.Proofs.BackendStages.BytesData468
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes468_eq : (Padded468.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes468 := by
  with_unfolding_all rfl
#print axioms sectionBytes468_eq
end InitECandidate.Proofs.BackendStages
