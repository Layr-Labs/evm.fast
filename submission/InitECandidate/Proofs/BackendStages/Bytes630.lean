import InitECandidate.Proofs.BackendStages.Padded630
import InitECandidate.Proofs.BackendStages.BytesData630
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes630_eq : (Padded630.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes630 := by
  with_unfolding_all rfl
#print axioms sectionBytes630_eq
end InitECandidate.Proofs.BackendStages
