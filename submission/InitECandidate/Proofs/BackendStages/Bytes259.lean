import InitECandidate.Proofs.BackendStages.Padded259
import InitECandidate.Proofs.BackendStages.BytesData259
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes259_eq : (Padded259.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes259 := by
  with_unfolding_all rfl
#print axioms sectionBytes259_eq
end InitECandidate.Proofs.BackendStages
