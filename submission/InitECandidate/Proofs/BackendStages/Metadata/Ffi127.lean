import InitECandidate.Proofs.BackendStages.Metadata.Data127
import InitECandidate.Proofs.BackendStages.Filtered127
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis127_eq : ffiLines Filtered127.lines = localFfis127 := by
  with_unfolding_all rfl
theorem ffiStep127 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis127) : LabToTarget.findFfiNames (Filtered127 :: rest) = suffixFfis127 := by
  rw [findFfiNames_section, localFfis127_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep127
end InitECandidate.Proofs.BackendStages.Metadata
