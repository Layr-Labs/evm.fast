import InitECandidate.Proofs.BackendStages.Padded270
import InitECandidate.Proofs.BackendStages.BytesData270
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes270_eq : (Padded270.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes270 := by
  with_unfolding_all rfl
#print axioms sectionBytes270_eq
end InitECandidate.Proofs.BackendStages
