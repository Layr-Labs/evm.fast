import InitECandidate.Proofs.BackendStages.Metadata.Data742
import InitECandidate.Proofs.BackendStages.Filtered742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis742_eq : ffiLines Filtered742.lines = localFfis742 := by
  with_unfolding_all rfl
theorem ffiStep742 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis742) : LabToTarget.findFfiNames (Filtered742 :: rest) = suffixFfis742 := by
  rw [findFfiNames_section, localFfis742_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep742
end InitECandidate.Proofs.BackendStages.Metadata
