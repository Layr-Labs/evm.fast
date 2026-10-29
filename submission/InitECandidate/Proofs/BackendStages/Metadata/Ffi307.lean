import InitECandidate.Proofs.BackendStages.Metadata.Data307
import InitECandidate.Proofs.BackendStages.Filtered307
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis307_eq : ffiLines Filtered307.lines = localFfis307 := by
  with_unfolding_all rfl
theorem ffiStep307 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis307) : LabToTarget.findFfiNames (Filtered307 :: rest) = suffixFfis307 := by
  rw [findFfiNames_section, localFfis307_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep307
end InitECandidate.Proofs.BackendStages.Metadata
