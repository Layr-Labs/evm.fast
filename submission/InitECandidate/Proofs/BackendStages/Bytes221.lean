import InitECandidate.Proofs.BackendStages.Padded221
import InitECandidate.Proofs.BackendStages.BytesData221
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes221_eq : (Padded221.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes221 := by
  with_unfolding_all rfl
#print axioms sectionBytes221_eq
end InitECandidate.Proofs.BackendStages
