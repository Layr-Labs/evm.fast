import InitECandidate.Proofs.BackendStages.Metadata.Data373
import InitECandidate.Proofs.BackendStages.Filtered373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis373_eq : ffiLines Filtered373.lines = localFfis373 := by
  with_unfolding_all rfl
theorem ffiStep373 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis373) : LabToTarget.findFfiNames (Filtered373 :: rest) = suffixFfis373 := by
  rw [findFfiNames_section, localFfis373_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep373
end InitECandidate.Proofs.BackendStages.Metadata
