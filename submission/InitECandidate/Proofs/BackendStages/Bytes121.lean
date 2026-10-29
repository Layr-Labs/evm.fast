import InitECandidate.Proofs.BackendStages.Padded121
import InitECandidate.Proofs.BackendStages.BytesData121
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes121_eq : (Padded121.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes121 := by
  with_unfolding_all rfl
#print axioms sectionBytes121_eq
end InitECandidate.Proofs.BackendStages
