import InitECandidate.Proofs.BackendStages.Padded642
import InitECandidate.Proofs.BackendStages.BytesData642
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes642_eq : (Padded642.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes642 := by
  with_unfolding_all rfl
#print axioms sectionBytes642_eq
end InitECandidate.Proofs.BackendStages
