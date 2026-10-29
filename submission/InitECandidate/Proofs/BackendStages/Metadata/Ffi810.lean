import InitECandidate.Proofs.BackendStages.Metadata.Data810
import InitECandidate.Proofs.BackendStages.Filtered810
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis810_eq : ffiLines Filtered810.lines = localFfis810 := by
  with_unfolding_all rfl
theorem ffiStep810 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis810) : LabToTarget.findFfiNames (Filtered810 :: rest) = suffixFfis810 := by
  rw [findFfiNames_section, localFfis810_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep810
end InitECandidate.Proofs.BackendStages.Metadata
