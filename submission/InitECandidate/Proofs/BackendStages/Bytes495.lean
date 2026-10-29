import InitECandidate.Proofs.BackendStages.Padded495
import InitECandidate.Proofs.BackendStages.BytesData495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes495_eq : (Padded495.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes495 := by
  with_unfolding_all rfl
#print axioms sectionBytes495_eq
end InitECandidate.Proofs.BackendStages
