import InitECandidate.Proofs.BackendStages.Metadata.Data537
import InitECandidate.Proofs.BackendStages.Filtered537
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis537_eq : ffiLines Filtered537.lines = localFfis537 := by
  with_unfolding_all rfl
theorem ffiStep537 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis537) : LabToTarget.findFfiNames (Filtered537 :: rest) = suffixFfis537 := by
  rw [findFfiNames_section, localFfis537_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep537
end InitECandidate.Proofs.BackendStages.Metadata
