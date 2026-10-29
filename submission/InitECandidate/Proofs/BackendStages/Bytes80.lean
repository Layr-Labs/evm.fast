import InitECandidate.Proofs.BackendStages.Padded80
import InitECandidate.Proofs.BackendStages.BytesData80
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes80_eq : (Padded80.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes80 := by
  with_unfolding_all rfl
#print axioms sectionBytes80_eq
end InitECandidate.Proofs.BackendStages
