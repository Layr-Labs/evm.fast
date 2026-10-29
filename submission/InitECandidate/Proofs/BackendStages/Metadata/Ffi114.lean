import InitECandidate.Proofs.BackendStages.Metadata.Data114
import InitECandidate.Proofs.BackendStages.Filtered114
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis114_eq : ffiLines Filtered114.lines = localFfis114 := by
  with_unfolding_all rfl
theorem ffiStep114 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis114) : LabToTarget.findFfiNames (Filtered114 :: rest) = suffixFfis114 := by
  rw [findFfiNames_section, localFfis114_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep114
end InitECandidate.Proofs.BackendStages.Metadata
