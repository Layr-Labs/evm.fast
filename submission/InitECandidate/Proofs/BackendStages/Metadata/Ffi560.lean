import InitECandidate.Proofs.BackendStages.Metadata.Data560
import InitECandidate.Proofs.BackendStages.Filtered560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis560_eq : ffiLines Filtered560.lines = localFfis560 := by
  with_unfolding_all rfl
theorem ffiStep560 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis560) : LabToTarget.findFfiNames (Filtered560 :: rest) = suffixFfis560 := by
  rw [findFfiNames_section, localFfis560_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep560
end InitECandidate.Proofs.BackendStages.Metadata
