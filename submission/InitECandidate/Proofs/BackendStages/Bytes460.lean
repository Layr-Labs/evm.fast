import InitECandidate.Proofs.BackendStages.Padded460
import InitECandidate.Proofs.BackendStages.BytesData460
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes460_eq : (Padded460.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes460 := by
  with_unfolding_all rfl
#print axioms sectionBytes460_eq
end InitECandidate.Proofs.BackendStages
