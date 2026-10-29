import InitECandidate.Proofs.BackendStages.Padded253
import InitECandidate.Proofs.BackendStages.BytesData253
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes253_eq : (Padded253.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes253 := by
  with_unfolding_all rfl
#print axioms sectionBytes253_eq
end InitECandidate.Proofs.BackendStages
