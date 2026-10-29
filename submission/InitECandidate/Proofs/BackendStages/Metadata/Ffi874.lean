import InitECandidate.Proofs.BackendStages.Metadata.Data874
import InitECandidate.Proofs.BackendStages.Filtered874
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis874_eq : ffiLines Filtered874.lines = localFfis874 := by
  with_unfolding_all rfl
theorem ffiStep874 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis874) : LabToTarget.findFfiNames (Filtered874 :: rest) = suffixFfis874 := by
  rw [findFfiNames_section, localFfis874_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep874
end InitECandidate.Proofs.BackendStages.Metadata
