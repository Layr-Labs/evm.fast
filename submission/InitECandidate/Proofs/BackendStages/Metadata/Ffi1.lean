import InitECandidate.Proofs.BackendStages.Metadata.Data1
import InitECandidate.Proofs.BackendStages.Filtered1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis1_eq : ffiLines Filtered1.lines = localFfis1 := by
  with_unfolding_all rfl
theorem ffiStep1 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis1) : LabToTarget.findFfiNames (Filtered1 :: rest) = suffixFfis1 := by
  rw [findFfiNames_section, localFfis1_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep1
end InitECandidate.Proofs.BackendStages.Metadata
