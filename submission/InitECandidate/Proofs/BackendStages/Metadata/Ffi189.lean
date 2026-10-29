import InitECandidate.Proofs.BackendStages.Metadata.Data189
import InitECandidate.Proofs.BackendStages.Filtered189
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis189_eq : ffiLines Filtered189.lines = localFfis189 := by
  with_unfolding_all rfl
theorem ffiStep189 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis189) : LabToTarget.findFfiNames (Filtered189 :: rest) = suffixFfis189 := by
  rw [findFfiNames_section, localFfis189_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep189
end InitECandidate.Proofs.BackendStages.Metadata
