import InitECandidate.Proofs.BackendStages.Padded237
import InitECandidate.Proofs.BackendStages.BytesData237
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes237_eq : (Padded237.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes237 := by
  with_unfolding_all rfl
#print axioms sectionBytes237_eq
end InitECandidate.Proofs.BackendStages
