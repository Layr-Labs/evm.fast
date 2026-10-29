import InitECandidate.Proofs.BackendStages.Metadata.Data419
import InitECandidate.Proofs.BackendStages.Filtered419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis419_eq : ffiLines Filtered419.lines = localFfis419 := by
  with_unfolding_all rfl
theorem ffiStep419 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis419) : LabToTarget.findFfiNames (Filtered419 :: rest) = suffixFfis419 := by
  rw [findFfiNames_section, localFfis419_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep419
end InitECandidate.Proofs.BackendStages.Metadata
