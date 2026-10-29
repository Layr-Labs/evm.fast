import InitECandidate.Proofs.BackendStages.Metadata.Data226
import InitECandidate.Proofs.BackendStages.Filtered226
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis226_eq : ffiLines Filtered226.lines = localFfis226 := by
  with_unfolding_all rfl
theorem ffiStep226 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis226) : LabToTarget.findFfiNames (Filtered226 :: rest) = suffixFfis226 := by
  rw [findFfiNames_section, localFfis226_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep226
end InitECandidate.Proofs.BackendStages.Metadata
