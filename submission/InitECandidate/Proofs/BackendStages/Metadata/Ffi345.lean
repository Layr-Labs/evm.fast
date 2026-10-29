import InitECandidate.Proofs.BackendStages.Metadata.Data345
import InitECandidate.Proofs.BackendStages.Filtered345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis345_eq : ffiLines Filtered345.lines = localFfis345 := by
  with_unfolding_all rfl
theorem ffiStep345 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis345) : LabToTarget.findFfiNames (Filtered345 :: rest) = suffixFfis345 := by
  rw [findFfiNames_section, localFfis345_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep345
end InitECandidate.Proofs.BackendStages.Metadata
