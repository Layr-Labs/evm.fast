import InitECandidate.Proofs.BackendStages.Padded406
import InitECandidate.Proofs.BackendStages.BytesData406
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes406_eq : (Padded406.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes406 := by
  with_unfolding_all rfl
#print axioms sectionBytes406_eq
end InitECandidate.Proofs.BackendStages
