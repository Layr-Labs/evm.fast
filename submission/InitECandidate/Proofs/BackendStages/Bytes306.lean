import InitECandidate.Proofs.BackendStages.Padded306
import InitECandidate.Proofs.BackendStages.BytesData306
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes306_eq : (Padded306.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes306 := by
  with_unfolding_all rfl
#print axioms sectionBytes306_eq
end InitECandidate.Proofs.BackendStages
