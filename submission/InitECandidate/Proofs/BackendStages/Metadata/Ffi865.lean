import InitECandidate.Proofs.BackendStages.Metadata.Data865
import InitECandidate.Proofs.BackendStages.Filtered865
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis865_eq : ffiLines Filtered865.lines = localFfis865 := by
  with_unfolding_all rfl
theorem ffiStep865 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis865) : LabToTarget.findFfiNames (Filtered865 :: rest) = suffixFfis865 := by
  rw [findFfiNames_section, localFfis865_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep865
end InitECandidate.Proofs.BackendStages.Metadata
