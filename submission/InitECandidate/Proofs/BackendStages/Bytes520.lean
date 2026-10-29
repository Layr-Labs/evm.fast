import InitECandidate.Proofs.BackendStages.Padded520
import InitECandidate.Proofs.BackendStages.BytesData520
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes520_eq : (Padded520.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes520 := by
  with_unfolding_all rfl
#print axioms sectionBytes520_eq
end InitECandidate.Proofs.BackendStages
