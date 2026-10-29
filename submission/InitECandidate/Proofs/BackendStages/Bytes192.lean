import InitECandidate.Proofs.BackendStages.Padded192
import InitECandidate.Proofs.BackendStages.BytesData192
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes192_eq : (Padded192.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes192 := by
  with_unfolding_all rfl
#print axioms sectionBytes192_eq
end InitECandidate.Proofs.BackendStages
