import InitECandidate.Proofs.BackendStages.Padded223
import InitECandidate.Proofs.BackendStages.BytesData223
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes223_eq : (Padded223.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes223 := by
  with_unfolding_all rfl
#print axioms sectionBytes223_eq
end InitECandidate.Proofs.BackendStages
