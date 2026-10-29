import InitECandidate.Proofs.BackendStages.Padded632
import InitECandidate.Proofs.BackendStages.BytesData632
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes632_eq : (Padded632.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes632 := by
  with_unfolding_all rfl
#print axioms sectionBytes632_eq
end InitECandidate.Proofs.BackendStages
