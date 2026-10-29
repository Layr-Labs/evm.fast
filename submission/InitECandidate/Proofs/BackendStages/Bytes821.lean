import InitECandidate.Proofs.BackendStages.Padded821
import InitECandidate.Proofs.BackendStages.BytesData821
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes821_eq : (Padded821.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes821 := by
  with_unfolding_all rfl
#print axioms sectionBytes821_eq
end InitECandidate.Proofs.BackendStages
