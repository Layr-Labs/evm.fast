import InitECandidate.Proofs.BackendStages.Metadata.Data863
import InitECandidate.Proofs.BackendStages.Padded863
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep863 : walkShmemLines Padded863.lines 948836 beforeFfis863 beforeShmem863 = (963836, afterFfis863, afterShmem863) := by
  kernel_rfl
theorem shmemStep863 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded863 :: rest) 948836 beforeFfis863 beforeShmem863 = LabToTarget.getShmemInfo rest 963836 afterFfis863 afterShmem863 := by
  rw [getShmemInfo_section, walkStep863]
theorem symbolLength863 : LabToTarget.secLength Padded863.lines 0 = 15000 := by
  kernel_rfl
#print axioms shmemStep863
#print axioms symbolLength863
end InitECandidate.Proofs.BackendStages.Metadata
