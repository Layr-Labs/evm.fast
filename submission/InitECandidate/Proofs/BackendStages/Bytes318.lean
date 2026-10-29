import InitECandidate.Proofs.BackendStages.Padded318
import InitECandidate.Proofs.BackendStages.BytesData318
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes318_eq : (Padded318.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes318 := by
  with_unfolding_all rfl
#print axioms sectionBytes318_eq
end InitECandidate.Proofs.BackendStages
