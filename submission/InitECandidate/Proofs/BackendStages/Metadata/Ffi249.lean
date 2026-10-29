import InitECandidate.Proofs.BackendStages.Metadata.Data249
import InitECandidate.Proofs.BackendStages.Filtered249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis249_eq : ffiLines Filtered249.lines = localFfis249 := by
  with_unfolding_all rfl
theorem ffiStep249 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis249) : LabToTarget.findFfiNames (Filtered249 :: rest) = suffixFfis249 := by
  rw [findFfiNames_section, localFfis249_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep249
end InitECandidate.Proofs.BackendStages.Metadata
