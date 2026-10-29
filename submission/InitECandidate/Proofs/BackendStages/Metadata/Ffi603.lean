import InitECandidate.Proofs.BackendStages.Metadata.Data603
import InitECandidate.Proofs.BackendStages.Filtered603
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem localFfis603_eq : ffiLines Filtered603.lines = localFfis603 := by
  with_unfolding_all rfl
theorem ffiStep603 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis603) : LabToTarget.findFfiNames (Filtered603 :: rest) = suffixFfis603 := by
  rw [findFfiNames_section, localFfis603_eq, h]
  with_unfolding_all rfl
#print axioms ffiStep603
end InitECandidate.Proofs.BackendStages.Metadata
