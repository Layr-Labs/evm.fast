import InitECandidate.Proofs.BackendStages.Padded577
import InitECandidate.Proofs.BackendStages.BytesData577
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes577_eq : (Padded577.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes577 := by
  with_unfolding_all rfl
#print axioms sectionBytes577_eq
end InitECandidate.Proofs.BackendStages
