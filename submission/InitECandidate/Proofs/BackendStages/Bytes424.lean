import InitECandidate.Proofs.BackendStages.Padded424
import InitECandidate.Proofs.BackendStages.BytesData424
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes424_eq : (Padded424.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes424 := by
  with_unfolding_all rfl
#print axioms sectionBytes424_eq
end InitECandidate.Proofs.BackendStages
