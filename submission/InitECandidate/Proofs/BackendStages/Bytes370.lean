import InitECandidate.Proofs.BackendStages.Padded370
import InitECandidate.Proofs.BackendStages.BytesData370
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes370_eq : (Padded370.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes370 := by
  with_unfolding_all rfl
#print axioms sectionBytes370_eq
end InitECandidate.Proofs.BackendStages
