import InitECandidate.Proofs.BackendStages.Padded784
import InitECandidate.Proofs.BackendStages.BytesData784
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes784_eq : (Padded784.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes784 := by
  with_unfolding_all rfl
#print axioms sectionBytes784_eq
end InitECandidate.Proofs.BackendStages
