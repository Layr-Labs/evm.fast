import InitECandidate.Proofs.BackendStages.Padded487
import InitECandidate.Proofs.BackendStages.BytesData487
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes487_eq : (Padded487.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes487 := by
  with_unfolding_all rfl
#print axioms sectionBytes487_eq
end InitECandidate.Proofs.BackendStages
