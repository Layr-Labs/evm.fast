import InitECandidate.Proofs.BackendStages.Padded551
import InitECandidate.Proofs.BackendStages.BytesData551
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes551_eq : (Padded551.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes551 := by
  with_unfolding_all rfl
#print axioms sectionBytes551_eq
end InitECandidate.Proofs.BackendStages
