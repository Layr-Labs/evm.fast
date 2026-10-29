import InitECandidate.Proofs.BackendStages.Metadata.Data832
import InitECandidate.Proofs.BackendStages.Filtered832
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis832_eq : ffiLines Filtered832.lines = localFfis832 := by
  with_unfolding_all rfl
theorem ffiStep832 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis832) : LabToTarget.findFfiNames (Filtered832 :: rest) = suffixFfis832 := by
  rw [findFfiNames_section, localFfis832_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep832
end InitECandidate.Proofs.BackendStages.Metadata
