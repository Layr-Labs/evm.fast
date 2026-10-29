import InitECandidate.Proofs.BackendStages.Metadata.Data259
import InitECandidate.Proofs.BackendStages.Filtered259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis259_eq : ffiLines Filtered259.lines = localFfis259 := by
  with_unfolding_all rfl
theorem ffiStep259 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis259) : LabToTarget.findFfiNames (Filtered259 :: rest) = suffixFfis259 := by
  rw [findFfiNames_section, localFfis259_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep259
end InitECandidate.Proofs.BackendStages.Metadata
