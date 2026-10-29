import InitECandidate.Proofs.BackendStages.Padded710
import InitECandidate.Proofs.BackendStages.BytesData710
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes710_eq : (Padded710.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes710 := by
  with_unfolding_all rfl
#print axioms sectionBytes710_eq
end InitECandidate.Proofs.BackendStages
