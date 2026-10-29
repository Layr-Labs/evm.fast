import InitECandidate.Proofs.BackendStages.Padded333
import InitECandidate.Proofs.BackendStages.BytesData333
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes333_eq : (Padded333.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes333 := by
  with_unfolding_all rfl
#print axioms sectionBytes333_eq
end InitECandidate.Proofs.BackendStages
