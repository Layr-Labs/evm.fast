import InitECandidate.Proofs.BackendStages.Padded723
import InitECandidate.Proofs.BackendStages.BytesData723
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes723_eq : (Padded723.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes723 := by
  with_unfolding_all rfl
#print axioms sectionBytes723_eq
end InitECandidate.Proofs.BackendStages
