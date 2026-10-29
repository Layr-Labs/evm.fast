import InitECandidate.Proofs.BackendStages.Padded183
import InitECandidate.Proofs.BackendStages.BytesData183
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes183_eq : (Padded183.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes183 := by
  with_unfolding_all rfl
#print axioms sectionBytes183_eq
end InitECandidate.Proofs.BackendStages
