import InitECandidate.Proofs.BackendStages.Metadata.Data132
import InitECandidate.Proofs.BackendStages.Padded132
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep132 : walkShmemLines Padded132.lines 23472 beforeFfis132 beforeShmem132 = (23492, afterFfis132, afterShmem132) := by
  kernel_rfl
theorem shmemStep132 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded132 :: rest) 23472 beforeFfis132 beforeShmem132 = LabToTarget.getShmemInfo rest 23492 afterFfis132 afterShmem132 := by
  rw [getShmemInfo_section, walkStep132]
theorem symbolLength132 : LabToTarget.secLength Padded132.lines 0 = 20 := by
  kernel_rfl
#print axioms shmemStep132
#print axioms symbolLength132
end InitECandidate.Proofs.BackendStages.Metadata
