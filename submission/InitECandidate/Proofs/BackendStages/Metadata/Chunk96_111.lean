import InitECandidate.Proofs.BackendStages.Metadata.Ffi96
import InitECandidate.Proofs.BackendStages.Metadata.Shmem96
import InitECandidate.Proofs.BackendStages.Metadata.Ffi97
import InitECandidate.Proofs.BackendStages.Metadata.Shmem97
import InitECandidate.Proofs.BackendStages.Metadata.Ffi98
import InitECandidate.Proofs.BackendStages.Metadata.Shmem98
import InitECandidate.Proofs.BackendStages.Metadata.Ffi99
import InitECandidate.Proofs.BackendStages.Metadata.Shmem99
import InitECandidate.Proofs.BackendStages.Metadata.Ffi100
import InitECandidate.Proofs.BackendStages.Metadata.Shmem100
import InitECandidate.Proofs.BackendStages.Metadata.Ffi101
import InitECandidate.Proofs.BackendStages.Metadata.Shmem101
import InitECandidate.Proofs.BackendStages.Metadata.Ffi102
import InitECandidate.Proofs.BackendStages.Metadata.Shmem102
import InitECandidate.Proofs.BackendStages.Metadata.Ffi103
import InitECandidate.Proofs.BackendStages.Metadata.Shmem103
import InitECandidate.Proofs.BackendStages.Metadata.Ffi104
import InitECandidate.Proofs.BackendStages.Metadata.Shmem104
import InitECandidate.Proofs.BackendStages.Metadata.Ffi105
import InitECandidate.Proofs.BackendStages.Metadata.Shmem105
import InitECandidate.Proofs.BackendStages.Metadata.Ffi106
import InitECandidate.Proofs.BackendStages.Metadata.Shmem106
import InitECandidate.Proofs.BackendStages.Metadata.Ffi107
import InitECandidate.Proofs.BackendStages.Metadata.Shmem107
import InitECandidate.Proofs.BackendStages.Metadata.Ffi108
import InitECandidate.Proofs.BackendStages.Metadata.Shmem108
import InitECandidate.Proofs.BackendStages.Metadata.Ffi109
import InitECandidate.Proofs.BackendStages.Metadata.Shmem109
import InitECandidate.Proofs.BackendStages.Metadata.Ffi110
import InitECandidate.Proofs.BackendStages.Metadata.Shmem110
import InitECandidate.Proofs.BackendStages.Metadata.Ffi111
import InitECandidate.Proofs.BackendStages.Metadata.Shmem111
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk96_111 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis111) : LabToTarget.findFfiNames ([Filtered96, Filtered97, Filtered98, Filtered99, Filtered100, Filtered101, Filtered102, Filtered103, Filtered104, Filtered105, Filtered106, Filtered107, Filtered108, Filtered109, Filtered110, Filtered111] ++ rest) = suffixFfis96 := by
  exact ffiStep96 _ ( ffiStep97 _ ( ffiStep98 _ ( ffiStep99 _ ( ffiStep100 _ ( ffiStep101 _ ( ffiStep102 _ ( ffiStep103 _ ( ffiStep104 _ ( ffiStep105 _ ( ffiStep106 _ ( ffiStep107 _ ( ffiStep108 _ ( ffiStep109 _ ( ffiStep110 _ ( ffiStep111 _ (h))))))))))))))))
theorem shmemChunk96_111 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded96, Padded97, Padded98, Padded99, Padded100, Padded101, Padded102, Padded103, Padded104, Padded105, Padded106, Padded107, Padded108, Padded109, Padded110, Padded111] ++ rest) 10272 beforeFfis96 beforeShmem96 = LabToTarget.getShmemInfo rest 11776 afterFfis111 afterShmem111 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 10272 beforeFfis96 beforeShmem96 = _
  rw [shmemStep96]
  change LabToTarget.getShmemInfo _ 10412 beforeFfis97 beforeShmem97 = _
  rw [shmemStep97]
  change LabToTarget.getShmemInfo _ 10456 beforeFfis98 beforeShmem98 = _
  rw [shmemStep98]
  change LabToTarget.getShmemInfo _ 10652 beforeFfis99 beforeShmem99 = _
  rw [shmemStep99]
  change LabToTarget.getShmemInfo _ 10668 beforeFfis100 beforeShmem100 = _
  rw [shmemStep100]
  change LabToTarget.getShmemInfo _ 10672 beforeFfis101 beforeShmem101 = _
  rw [shmemStep101]
  change LabToTarget.getShmemInfo _ 10704 beforeFfis102 beforeShmem102 = _
  rw [shmemStep102]
  change LabToTarget.getShmemInfo _ 10740 beforeFfis103 beforeShmem103 = _
  rw [shmemStep103]
  change LabToTarget.getShmemInfo _ 10808 beforeFfis104 beforeShmem104 = _
  rw [shmemStep104]
  change LabToTarget.getShmemInfo _ 11008 beforeFfis105 beforeShmem105 = _
  rw [shmemStep105]
  change LabToTarget.getShmemInfo _ 11060 beforeFfis106 beforeShmem106 = _
  rw [shmemStep106]
  change LabToTarget.getShmemInfo _ 11156 beforeFfis107 beforeShmem107 = _
  rw [shmemStep107]
  change LabToTarget.getShmemInfo _ 11208 beforeFfis108 beforeShmem108 = _
  rw [shmemStep108]
  change LabToTarget.getShmemInfo _ 11304 beforeFfis109 beforeShmem109 = _
  rw [shmemStep109]
  change LabToTarget.getShmemInfo _ 11356 beforeFfis110 beforeShmem110 = _
  rw [shmemStep110]
  change LabToTarget.getShmemInfo _ 11756 beforeFfis111 beforeShmem111 = _
  rw [shmemStep111]
theorem symbolsChunk96_111 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 10272 ([Padded96, Padded97, Padded98, Padded99, Padded100, Padded101, Padded102, Padded103, Padded104, Padded105, Padded106, Padded107, Padded108, Padded109, Padded110, Padded111] ++ rest) = [(96, 10272, 140), (97, 10412, 44), (98, 10456, 196), (99, 10652, 16), (100, 10668, 4), (101, 10672, 32), (102, 10704, 36), (103, 10740, 68), (104, 10808, 200), (105, 11008, 52), (106, 11060, 96), (107, 11156, 52), (108, 11208, 96), (109, 11304, 52), (110, 11356, 400), (111, 11756, 20)] ++ LabToTarget.getSymbols 11776 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength96, symbolLength97, symbolLength98, symbolLength99, symbolLength100, symbolLength101, symbolLength102, symbolLength103, symbolLength104, symbolLength105, symbolLength106, symbolLength107, symbolLength108, symbolLength109, symbolLength110, symbolLength111]
  rfl
#print axioms ffiChunk96_111
#print axioms shmemChunk96_111
#print axioms symbolsChunk96_111
end InitECandidate.Proofs.BackendStages.Metadata
