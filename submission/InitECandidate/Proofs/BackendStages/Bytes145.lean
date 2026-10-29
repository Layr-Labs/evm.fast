import InitECandidate.Proofs.BackendStages.Padded145
import InitECandidate.Proofs.BackendStages.BytesData145
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes145_eq : (Padded145.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes145 := by
  with_unfolding_all rfl
#print axioms sectionBytes145_eq
end InitECandidate.Proofs.BackendStages
