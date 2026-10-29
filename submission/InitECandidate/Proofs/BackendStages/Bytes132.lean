import InitECandidate.Proofs.BackendStages.Padded132
import InitECandidate.Proofs.BackendStages.BytesData132
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes132_eq : (Padded132.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes132 := by
  with_unfolding_all rfl
#print axioms sectionBytes132_eq
end InitECandidate.Proofs.BackendStages
