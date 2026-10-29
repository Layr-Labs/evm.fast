import InitECandidate.Proofs.BackendStages.Metadata.Data103
import InitECandidate.Proofs.BackendStages.Filtered103
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis103_eq : ffiLines Filtered103.lines = localFfis103 := by
  with_unfolding_all rfl
theorem ffiStep103 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis103) : LabToTarget.findFfiNames (Filtered103 :: rest) = suffixFfis103 := by
  rw [findFfiNames_section, localFfis103_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep103
end InitECandidate.Proofs.BackendStages.Metadata
