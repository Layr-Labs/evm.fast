import InitECandidate.Proofs.BackendStages.Metadata.Data164
import InitECandidate.Proofs.BackendStages.Filtered164
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis164_eq : ffiLines Filtered164.lines = localFfis164 := by
  with_unfolding_all rfl
theorem ffiStep164 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis164) : LabToTarget.findFfiNames (Filtered164 :: rest) = suffixFfis164 := by
  rw [findFfiNames_section, localFfis164_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep164
end InitECandidate.Proofs.BackendStages.Metadata
