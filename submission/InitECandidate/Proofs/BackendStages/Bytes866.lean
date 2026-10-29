import InitECandidate.Proofs.BackendStages.Padded866
import InitECandidate.Proofs.BackendStages.BytesData866
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes866_eq : (Padded866.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes866 := by
  with_unfolding_all rfl
#print axioms sectionBytes866_eq
end InitECandidate.Proofs.BackendStages
