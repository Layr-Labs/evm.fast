import InitECandidate.Proofs.BackendStages.Metadata.Data629
import InitECandidate.Proofs.BackendStages.Padded629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep629 : walkShmemLines Padded629.lines 524420 beforeFfis629 beforeShmem629 = (524512, afterFfis629, afterShmem629) := by
  kernel_rfl
theorem shmemStep629 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded629 :: rest) 524420 beforeFfis629 beforeShmem629 = LabToTarget.getShmemInfo rest 524512 afterFfis629 afterShmem629 := by
  rw [getShmemInfo_section, walkStep629]
theorem symbolLength629 : LabToTarget.secLength Padded629.lines 0 = 92 := by
  kernel_rfl
#print axioms shmemStep629
#print axioms symbolLength629
end InitECandidate.Proofs.BackendStages.Metadata
