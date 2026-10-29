import InitECandidate.Proofs.BackendStages.Padded528
import InitECandidate.Proofs.BackendStages.BytesData528
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes528_eq : (Padded528.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes528 := by
  with_unfolding_all rfl
#print axioms sectionBytes528_eq
end InitECandidate.Proofs.BackendStages
