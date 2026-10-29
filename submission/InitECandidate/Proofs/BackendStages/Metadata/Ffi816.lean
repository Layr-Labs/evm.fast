import InitECandidate.Proofs.BackendStages.Metadata.Data816
import InitECandidate.Proofs.BackendStages.Filtered816
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis816_eq : ffiLines Filtered816.lines = localFfis816 := by
  with_unfolding_all rfl
theorem ffiStep816 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis816) : LabToTarget.findFfiNames (Filtered816 :: rest) = suffixFfis816 := by
  rw [findFfiNames_section, localFfis816_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep816
end InitECandidate.Proofs.BackendStages.Metadata
