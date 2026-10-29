import InitECandidate.Proofs.BackendStages.Padded782
import InitECandidate.Proofs.BackendStages.BytesData782
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes782_eq : (Padded782.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes782 := by
  with_unfolding_all rfl
#print axioms sectionBytes782_eq
end InitECandidate.Proofs.BackendStages
