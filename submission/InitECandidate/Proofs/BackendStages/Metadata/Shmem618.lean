import InitECandidate.Proofs.BackendStages.Metadata.Data618
import InitECandidate.Proofs.BackendStages.Padded618
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep618 : walkShmemLines Padded618.lines 492172 beforeFfis618 beforeShmem618 = (495212, afterFfis618, afterShmem618) := by
  kernel_rfl
theorem shmemStep618 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded618 :: rest) 492172 beforeFfis618 beforeShmem618 = LabToTarget.getShmemInfo rest 495212 afterFfis618 afterShmem618 := by
  rw [getShmemInfo_section, walkStep618]
theorem symbolLength618 : LabToTarget.secLength Padded618.lines 0 = 3040 := by
  kernel_rfl
#print axioms shmemStep618
#print axioms symbolLength618
end InitECandidate.Proofs.BackendStages.Metadata
