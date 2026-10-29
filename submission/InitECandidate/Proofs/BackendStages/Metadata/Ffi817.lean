import InitECandidate.Proofs.BackendStages.Metadata.Data817
import InitECandidate.Proofs.BackendStages.Filtered817
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis817_eq : ffiLines Filtered817.lines = localFfis817 := by
  with_unfolding_all rfl
theorem ffiStep817 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis817) : LabToTarget.findFfiNames (Filtered817 :: rest) = suffixFfis817 := by
  rw [findFfiNames_section, localFfis817_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep817
end InitECandidate.Proofs.BackendStages.Metadata
