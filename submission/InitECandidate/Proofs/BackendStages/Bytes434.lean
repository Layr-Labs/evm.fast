import InitECandidate.Proofs.BackendStages.Padded434
import InitECandidate.Proofs.BackendStages.BytesData434
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes434_eq : (Padded434.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes434 := by
  with_unfolding_all rfl
#print axioms sectionBytes434_eq
end InitECandidate.Proofs.BackendStages
