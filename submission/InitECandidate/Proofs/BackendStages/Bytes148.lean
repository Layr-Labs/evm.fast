import InitECandidate.Proofs.BackendStages.Padded148
import InitECandidate.Proofs.BackendStages.BytesData148
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes148_eq : (Padded148.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes148 := by
  with_unfolding_all rfl
#print axioms sectionBytes148_eq
end InitECandidate.Proofs.BackendStages
