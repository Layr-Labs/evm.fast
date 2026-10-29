import InitECandidate.Proofs.BackendStages.Metadata.Data118
import InitECandidate.Proofs.BackendStages.Filtered118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis118_eq : ffiLines Filtered118.lines = localFfis118 := by
  with_unfolding_all rfl
theorem ffiStep118 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis118) : LabToTarget.findFfiNames (Filtered118 :: rest) = suffixFfis118 := by
  rw [findFfiNames_section, localFfis118_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep118
end InitECandidate.Proofs.BackendStages.Metadata
