import InitECandidate.Proofs.BackendStages.Metadata.Data783
import InitECandidate.Proofs.BackendStages.Filtered783
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis783_eq : ffiLines Filtered783.lines = localFfis783 := by
  with_unfolding_all rfl
theorem ffiStep783 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis783) : LabToTarget.findFfiNames (Filtered783 :: rest) = suffixFfis783 := by
  rw [findFfiNames_section, localFfis783_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep783
end InitECandidate.Proofs.BackendStages.Metadata
