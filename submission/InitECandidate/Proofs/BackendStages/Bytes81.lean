import InitECandidate.Proofs.BackendStages.Padded81
import InitECandidate.Proofs.BackendStages.BytesData81
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes81_eq : (Padded81.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes81 := by
  with_unfolding_all rfl
#print axioms sectionBytes81_eq
end InitECandidate.Proofs.BackendStages
