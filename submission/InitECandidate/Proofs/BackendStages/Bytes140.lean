import InitECandidate.Proofs.BackendStages.Padded140
import InitECandidate.Proofs.BackendStages.BytesData140
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes140_eq : (Padded140.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes140 := by
  with_unfolding_all rfl
#print axioms sectionBytes140_eq
end InitECandidate.Proofs.BackendStages
