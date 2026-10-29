import InitECandidate.Proofs.BackendStages.Metadata.Data359
import InitECandidate.Proofs.BackendStages.Filtered359
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis359_eq : ffiLines Filtered359.lines = localFfis359 := by
  with_unfolding_all rfl
theorem ffiStep359 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis359) : LabToTarget.findFfiNames (Filtered359 :: rest) = suffixFfis359 := by
  rw [findFfiNames_section, localFfis359_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep359
end InitECandidate.Proofs.BackendStages.Metadata
