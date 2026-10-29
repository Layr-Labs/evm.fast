import InitECandidate.Proofs.BackendStages.Metadata.Data510
import InitECandidate.Proofs.BackendStages.Filtered510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis510_eq : ffiLines Filtered510.lines = localFfis510 := by
  with_unfolding_all rfl
theorem ffiStep510 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis510) : LabToTarget.findFfiNames (Filtered510 :: rest) = suffixFfis510 := by
  rw [findFfiNames_section, localFfis510_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep510
end InitECandidate.Proofs.BackendStages.Metadata
