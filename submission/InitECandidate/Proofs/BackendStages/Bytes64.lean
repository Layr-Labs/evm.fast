import InitECandidate.Proofs.BackendStages.Padded64
import InitECandidate.Proofs.BackendStages.BytesData64
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes64_eq : (Padded64.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes64 := by
  with_unfolding_all rfl
#print axioms sectionBytes64_eq
end InitECandidate.Proofs.BackendStages
