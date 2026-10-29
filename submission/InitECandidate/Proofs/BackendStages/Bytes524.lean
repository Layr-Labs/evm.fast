import InitECandidate.Proofs.BackendStages.Padded524
import InitECandidate.Proofs.BackendStages.BytesData524
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes524_eq : (Padded524.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes524 := by
  with_unfolding_all rfl
#print axioms sectionBytes524_eq
end InitECandidate.Proofs.BackendStages
