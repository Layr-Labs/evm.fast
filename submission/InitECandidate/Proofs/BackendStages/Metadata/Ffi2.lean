import InitECandidate.Proofs.BackendStages.Metadata.Data2
import InitECandidate.Proofs.BackendStages.Filtered2
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis2_eq : ffiLines Filtered2.lines = localFfis2 := by
  with_unfolding_all rfl
theorem ffiStep2 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis2) : LabToTarget.findFfiNames (Filtered2 :: rest) = suffixFfis2 := by
  rw [findFfiNames_section, localFfis2_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep2
end InitECandidate.Proofs.BackendStages.Metadata
