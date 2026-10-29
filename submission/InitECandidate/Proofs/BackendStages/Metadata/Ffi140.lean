import InitECandidate.Proofs.BackendStages.Metadata.Data140
import InitECandidate.Proofs.BackendStages.Filtered140
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis140_eq : ffiLines Filtered140.lines = localFfis140 := by
  with_unfolding_all rfl
theorem ffiStep140 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis140) : LabToTarget.findFfiNames (Filtered140 :: rest) = suffixFfis140 := by
  rw [findFfiNames_section, localFfis140_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep140
end InitECandidate.Proofs.BackendStages.Metadata
