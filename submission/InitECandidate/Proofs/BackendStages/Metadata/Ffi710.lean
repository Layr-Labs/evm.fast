import InitECandidate.Proofs.BackendStages.Metadata.Data710
import InitECandidate.Proofs.BackendStages.Filtered710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis710_eq : ffiLines Filtered710.lines = localFfis710 := by
  with_unfolding_all rfl
theorem ffiStep710 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis710) : LabToTarget.findFfiNames (Filtered710 :: rest) = suffixFfis710 := by
  rw [findFfiNames_section, localFfis710_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep710
end InitECandidate.Proofs.BackendStages.Metadata
