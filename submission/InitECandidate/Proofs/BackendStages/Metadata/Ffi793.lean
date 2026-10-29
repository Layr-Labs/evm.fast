import InitECandidate.Proofs.BackendStages.Metadata.Data793
import InitECandidate.Proofs.BackendStages.Filtered793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis793_eq : ffiLines Filtered793.lines = localFfis793 := by
  with_unfolding_all rfl
theorem ffiStep793 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis793) : LabToTarget.findFfiNames (Filtered793 :: rest) = suffixFfis793 := by
  rw [findFfiNames_section, localFfis793_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep793
end InitECandidate.Proofs.BackendStages.Metadata
