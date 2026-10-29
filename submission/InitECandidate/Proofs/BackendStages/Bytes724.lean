import InitECandidate.Proofs.BackendStages.Padded724
import InitECandidate.Proofs.BackendStages.BytesData724
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes724_eq : (Padded724.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes724 := by
  with_unfolding_all rfl
#print axioms sectionBytes724_eq
end InitECandidate.Proofs.BackendStages
