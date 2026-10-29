import InitECandidate.Proofs.BackendStages.Padded360
import InitECandidate.Proofs.BackendStages.BytesData360
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes360_eq : (Padded360.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes360 := by
  with_unfolding_all rfl
#print axioms sectionBytes360_eq
end InitECandidate.Proofs.BackendStages
