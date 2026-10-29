import InitECandidate.Proofs.BackendStages.Padded304
import InitECandidate.Proofs.BackendStages.BytesData304
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes304_eq : (Padded304.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes304 := by
  with_unfolding_all rfl
#print axioms sectionBytes304_eq
end InitECandidate.Proofs.BackendStages
