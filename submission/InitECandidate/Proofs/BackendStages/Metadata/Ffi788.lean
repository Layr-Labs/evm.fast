import InitECandidate.Proofs.BackendStages.Metadata.Data788
import InitECandidate.Proofs.BackendStages.Filtered788
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis788_eq : ffiLines Filtered788.lines = localFfis788 := by
  with_unfolding_all rfl
theorem ffiStep788 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis788) : LabToTarget.findFfiNames (Filtered788 :: rest) = suffixFfis788 := by
  rw [findFfiNames_section, localFfis788_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep788
end InitECandidate.Proofs.BackendStages.Metadata
