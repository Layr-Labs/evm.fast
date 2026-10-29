import InitECandidate.Proofs.BackendStages.Metadata.Data782
import InitECandidate.Proofs.BackendStages.Filtered782
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis782_eq : ffiLines Filtered782.lines = localFfis782 := by
  with_unfolding_all rfl
theorem ffiStep782 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis782) : LabToTarget.findFfiNames (Filtered782 :: rest) = suffixFfis782 := by
  rw [findFfiNames_section, localFfis782_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep782
end InitECandidate.Proofs.BackendStages.Metadata
