import InitECandidate.Proofs.BackendStages.Padded344
import InitECandidate.Proofs.BackendStages.BytesData344
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes344_eq : (Padded344.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes344 := by
  with_unfolding_all rfl
#print axioms sectionBytes344_eq
end InitECandidate.Proofs.BackendStages
