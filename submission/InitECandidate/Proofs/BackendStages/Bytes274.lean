import InitECandidate.Proofs.BackendStages.Padded274
import InitECandidate.Proofs.BackendStages.BytesData274
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes274_eq : (Padded274.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes274 := by
  with_unfolding_all rfl
#print axioms sectionBytes274_eq
end InitECandidate.Proofs.BackendStages
