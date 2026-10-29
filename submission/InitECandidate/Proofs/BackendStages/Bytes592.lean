import InitECandidate.Proofs.BackendStages.Padded592
import InitECandidate.Proofs.BackendStages.BytesData592
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes592_eq : (Padded592.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes592 := by
  with_unfolding_all rfl
#print axioms sectionBytes592_eq
end InitECandidate.Proofs.BackendStages
