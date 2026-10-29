import InitECandidate.Proofs.BackendStages.Metadata.Data213
import InitECandidate.Proofs.BackendStages.Filtered213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis213_eq : ffiLines Filtered213.lines = localFfis213 := by
  with_unfolding_all rfl
theorem ffiStep213 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis213) : LabToTarget.findFfiNames (Filtered213 :: rest) = suffixFfis213 := by
  rw [findFfiNames_section, localFfis213_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep213
end InitECandidate.Proofs.BackendStages.Metadata
