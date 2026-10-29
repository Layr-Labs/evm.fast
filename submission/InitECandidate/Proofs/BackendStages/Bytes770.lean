import InitECandidate.Proofs.BackendStages.Padded770
import InitECandidate.Proofs.BackendStages.BytesData770
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes770_eq : (Padded770.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes770 := by
  with_unfolding_all rfl
#print axioms sectionBytes770_eq
end InitECandidate.Proofs.BackendStages
