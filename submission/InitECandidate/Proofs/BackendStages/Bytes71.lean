import InitECandidate.Proofs.BackendStages.Padded71
import InitECandidate.Proofs.BackendStages.BytesData71
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes71_eq : (Padded71.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes71 := by
  with_unfolding_all rfl
#print axioms sectionBytes71_eq
end InitECandidate.Proofs.BackendStages
