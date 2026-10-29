import InitECandidate.Proofs.BackendStages.Metadata.Data416
import InitECandidate.Proofs.BackendStages.Filtered416
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis416_eq : ffiLines Filtered416.lines = localFfis416 := by
  with_unfolding_all rfl
theorem ffiStep416 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis416) : LabToTarget.findFfiNames (Filtered416 :: rest) = suffixFfis416 := by
  rw [findFfiNames_section, localFfis416_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep416
end InitECandidate.Proofs.BackendStages.Metadata
