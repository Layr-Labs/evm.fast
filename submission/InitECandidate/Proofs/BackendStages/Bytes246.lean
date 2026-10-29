import InitECandidate.Proofs.BackendStages.Padded246
import InitECandidate.Proofs.BackendStages.BytesData246
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes246_eq : (Padded246.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes246 := by
  with_unfolding_all rfl
#print axioms sectionBytes246_eq
end InitECandidate.Proofs.BackendStages
