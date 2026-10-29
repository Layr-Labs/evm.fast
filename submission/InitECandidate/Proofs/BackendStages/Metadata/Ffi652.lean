import InitECandidate.Proofs.BackendStages.Metadata.Data652
import InitECandidate.Proofs.BackendStages.Filtered652
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis652_eq : ffiLines Filtered652.lines = localFfis652 := by
  with_unfolding_all rfl
theorem ffiStep652 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis652) : LabToTarget.findFfiNames (Filtered652 :: rest) = suffixFfis652 := by
  rw [findFfiNames_section, localFfis652_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep652
end InitECandidate.Proofs.BackendStages.Metadata
