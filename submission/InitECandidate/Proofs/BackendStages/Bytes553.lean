import InitECandidate.Proofs.BackendStages.Padded553
import InitECandidate.Proofs.BackendStages.BytesData553
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes553_eq : (Padded553.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes553 := by
  with_unfolding_all rfl
#print axioms sectionBytes553_eq
end InitECandidate.Proofs.BackendStages
