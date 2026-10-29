import InitECandidate.Proofs.BackendStages.Metadata.Data158
import InitECandidate.Proofs.BackendStages.Filtered158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis158_eq : ffiLines Filtered158.lines = localFfis158 := by
  with_unfolding_all rfl
theorem ffiStep158 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis158) : LabToTarget.findFfiNames (Filtered158 :: rest) = suffixFfis158 := by
  rw [findFfiNames_section, localFfis158_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep158
end InitECandidate.Proofs.BackendStages.Metadata
