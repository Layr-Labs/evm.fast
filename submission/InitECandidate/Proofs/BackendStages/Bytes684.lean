import InitECandidate.Proofs.BackendStages.Padded684
import InitECandidate.Proofs.BackendStages.BytesData684
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes684_eq : (Padded684.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes684 := by
  with_unfolding_all rfl
#print axioms sectionBytes684_eq
end InitECandidate.Proofs.BackendStages
