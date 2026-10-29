import InitECandidate.Proofs.BackendStages.Metadata.Data859
import InitECandidate.Proofs.BackendStages.Filtered859
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis859_eq : ffiLines Filtered859.lines = localFfis859 := by
  with_unfolding_all rfl
theorem ffiStep859 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis859) : LabToTarget.findFfiNames (Filtered859 :: rest) = suffixFfis859 := by
  rw [findFfiNames_section, localFfis859_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep859
end InitECandidate.Proofs.BackendStages.Metadata
