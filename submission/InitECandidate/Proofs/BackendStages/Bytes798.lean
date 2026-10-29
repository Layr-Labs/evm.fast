import InitECandidate.Proofs.BackendStages.Padded798
import InitECandidate.Proofs.BackendStages.BytesData798
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes798_eq : (Padded798.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes798 := by
  with_unfolding_all rfl
#print axioms sectionBytes798_eq
end InitECandidate.Proofs.BackendStages
