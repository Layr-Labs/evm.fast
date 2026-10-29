import InitECandidate.Proofs.BackendStages.Metadata.Data119
import InitECandidate.Proofs.BackendStages.Filtered119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis119_eq : ffiLines Filtered119.lines = localFfis119 := by
  with_unfolding_all rfl
theorem ffiStep119 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis119) : LabToTarget.findFfiNames (Filtered119 :: rest) = suffixFfis119 := by
  rw [findFfiNames_section, localFfis119_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep119
end InitECandidate.Proofs.BackendStages.Metadata
