import InitECandidate.Proofs.BackendStages.Metadata.Data100
import InitECandidate.Proofs.BackendStages.Filtered100
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis100_eq : ffiLines Filtered100.lines = localFfis100 := by
  with_unfolding_all rfl
theorem ffiStep100 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis100) : LabToTarget.findFfiNames (Filtered100 :: rest) = suffixFfis100 := by
  rw [findFfiNames_section, localFfis100_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep100
end InitECandidate.Proofs.BackendStages.Metadata
