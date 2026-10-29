import InitECandidate.Proofs.BackendStages.Metadata.Data739
import InitECandidate.Proofs.BackendStages.Filtered739
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis739_eq : ffiLines Filtered739.lines = localFfis739 := by
  with_unfolding_all rfl
theorem ffiStep739 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis739) : LabToTarget.findFfiNames (Filtered739 :: rest) = suffixFfis739 := by
  rw [findFfiNames_section, localFfis739_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep739
end InitECandidate.Proofs.BackendStages.Metadata
