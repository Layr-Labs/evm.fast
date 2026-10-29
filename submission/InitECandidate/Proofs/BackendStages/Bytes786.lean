import InitECandidate.Proofs.BackendStages.Padded786
import InitECandidate.Proofs.BackendStages.BytesData786
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes786_eq : (Padded786.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes786 := by
  with_unfolding_all rfl
#print axioms sectionBytes786_eq
end InitECandidate.Proofs.BackendStages
