import InitECandidate.Proofs.BackendStages.Metadata.Data332
import InitECandidate.Proofs.BackendStages.Filtered332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis332_eq : ffiLines Filtered332.lines = localFfis332 := by
  with_unfolding_all rfl
theorem ffiStep332 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis332) : LabToTarget.findFfiNames (Filtered332 :: rest) = suffixFfis332 := by
  rw [findFfiNames_section, localFfis332_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep332
end InitECandidate.Proofs.BackendStages.Metadata
