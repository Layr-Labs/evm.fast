import InitECandidate.Proofs.BackendStages.Padded470
import InitECandidate.Proofs.BackendStages.BytesData470
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes470_eq : (Padded470.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes470 := by
  with_unfolding_all rfl
#print axioms sectionBytes470_eq
end InitECandidate.Proofs.BackendStages
