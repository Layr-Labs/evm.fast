import InitECandidate.Proofs.BackendStages.Metadata.Data800
import InitECandidate.Proofs.BackendStages.Filtered800
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis800_eq : ffiLines Filtered800.lines = localFfis800 := by
  with_unfolding_all rfl
theorem ffiStep800 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis800) : LabToTarget.findFfiNames (Filtered800 :: rest) = suffixFfis800 := by
  rw [findFfiNames_section, localFfis800_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep800
end InitECandidate.Proofs.BackendStages.Metadata
