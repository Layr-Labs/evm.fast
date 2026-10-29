import InitECandidate.Proofs.BackendStages.Padded752
import InitECandidate.Proofs.BackendStages.BytesData752
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes752_eq : (Padded752.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes752 := by
  with_unfolding_all rfl
#print axioms sectionBytes752_eq
end InitECandidate.Proofs.BackendStages
