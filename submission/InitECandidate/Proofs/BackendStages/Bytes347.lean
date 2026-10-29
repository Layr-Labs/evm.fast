import InitECandidate.Proofs.BackendStages.Padded347
import InitECandidate.Proofs.BackendStages.BytesData347
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes347_eq : (Padded347.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes347 := by
  with_unfolding_all rfl
#print axioms sectionBytes347_eq
end InitECandidate.Proofs.BackendStages
