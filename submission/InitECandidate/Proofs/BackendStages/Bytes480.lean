import InitECandidate.Proofs.BackendStages.Padded480
import InitECandidate.Proofs.BackendStages.BytesData480
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes480_eq : (Padded480.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes480 := by
  with_unfolding_all rfl
#print axioms sectionBytes480_eq
end InitECandidate.Proofs.BackendStages
