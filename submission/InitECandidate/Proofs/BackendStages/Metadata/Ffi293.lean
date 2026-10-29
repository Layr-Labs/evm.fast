import InitECandidate.Proofs.BackendStages.Metadata.Data293
import InitECandidate.Proofs.BackendStages.Filtered293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis293_eq : ffiLines Filtered293.lines = localFfis293 := by
  with_unfolding_all rfl
theorem ffiStep293 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis293) : LabToTarget.findFfiNames (Filtered293 :: rest) = suffixFfis293 := by
  rw [findFfiNames_section, localFfis293_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep293
end InitECandidate.Proofs.BackendStages.Metadata
