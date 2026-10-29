import InitECandidate.Proofs.BackendStages.Padded84
import InitECandidate.Proofs.BackendStages.BytesData84
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes84_eq : (Padded84.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes84 := by
  with_unfolding_all rfl
#print axioms sectionBytes84_eq
end InitECandidate.Proofs.BackendStages
