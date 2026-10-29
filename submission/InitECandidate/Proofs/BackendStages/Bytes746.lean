import InitECandidate.Proofs.BackendStages.Padded746
import InitECandidate.Proofs.BackendStages.BytesData746
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
theorem sectionBytes746_eq : (Padded746.lines.map LabToTarget.lineBytes).flatten = ByteData.bytes746 := by
  with_unfolding_all rfl
#print axioms sectionBytes746_eq
end InitECandidate.Proofs.BackendStages
