import InitECandidate.Proofs.BackendStages.Metadata.Data163
import InitECandidate.Proofs.BackendStages.Filtered163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis163_eq : ffiLines Filtered163.lines = localFfis163 := by
  with_unfolding_all rfl
theorem ffiStep163 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis163) : LabToTarget.findFfiNames (Filtered163 :: rest) = suffixFfis163 := by
  rw [findFfiNames_section, localFfis163_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep163
end InitECandidate.Proofs.BackendStages.Metadata
