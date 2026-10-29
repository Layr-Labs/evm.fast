import InitECandidate.Proofs.BackendStages.Metadata.Ffi112
import InitECandidate.Proofs.BackendStages.Metadata.Shmem112
import InitECandidate.Proofs.BackendStages.Metadata.Ffi113
import InitECandidate.Proofs.BackendStages.Metadata.Shmem113
import InitECandidate.Proofs.BackendStages.Metadata.Ffi114
import InitECandidate.Proofs.BackendStages.Metadata.Shmem114
import InitECandidate.Proofs.BackendStages.Metadata.Ffi115
import InitECandidate.Proofs.BackendStages.Metadata.Shmem115
import InitECandidate.Proofs.BackendStages.Metadata.Ffi116
import InitECandidate.Proofs.BackendStages.Metadata.Shmem116
import InitECandidate.Proofs.BackendStages.Metadata.Ffi117
import InitECandidate.Proofs.BackendStages.Metadata.Shmem117
import InitECandidate.Proofs.BackendStages.Metadata.Ffi118
import InitECandidate.Proofs.BackendStages.Metadata.Shmem118
import InitECandidate.Proofs.BackendStages.Metadata.Ffi119
import InitECandidate.Proofs.BackendStages.Metadata.Shmem119
import InitECandidate.Proofs.BackendStages.Metadata.Ffi120
import InitECandidate.Proofs.BackendStages.Metadata.Shmem120
import InitECandidate.Proofs.BackendStages.Metadata.Ffi121
import InitECandidate.Proofs.BackendStages.Metadata.Shmem121
import InitECandidate.Proofs.BackendStages.Metadata.Ffi122
import InitECandidate.Proofs.BackendStages.Metadata.Shmem122
import InitECandidate.Proofs.BackendStages.Metadata.Ffi123
import InitECandidate.Proofs.BackendStages.Metadata.Shmem123
import InitECandidate.Proofs.BackendStages.Metadata.Ffi124
import InitECandidate.Proofs.BackendStages.Metadata.Shmem124
import InitECandidate.Proofs.BackendStages.Metadata.Ffi125
import InitECandidate.Proofs.BackendStages.Metadata.Shmem125
import InitECandidate.Proofs.BackendStages.Metadata.Ffi126
import InitECandidate.Proofs.BackendStages.Metadata.Shmem126
import InitECandidate.Proofs.BackendStages.Metadata.Ffi127
import InitECandidate.Proofs.BackendStages.Metadata.Shmem127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk112_127 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis127) : LabToTarget.findFfiNames ([Filtered112, Filtered113, Filtered114, Filtered115, Filtered116, Filtered117, Filtered118, Filtered119, Filtered120, Filtered121, Filtered122, Filtered123, Filtered124, Filtered125, Filtered126, Filtered127] ++ rest) = suffixFfis112 := by
  exact ffiStep112 _ ( ffiStep113 _ ( ffiStep114 _ ( ffiStep115 _ ( ffiStep116 _ ( ffiStep117 _ ( ffiStep118 _ ( ffiStep119 _ ( ffiStep120 _ ( ffiStep121 _ ( ffiStep122 _ ( ffiStep123 _ ( ffiStep124 _ ( ffiStep125 _ ( ffiStep126 _ ( ffiStep127 _ (h))))))))))))))))
theorem shmemChunk112_127 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded112, Padded113, Padded114, Padded115, Padded116, Padded117, Padded118, Padded119, Padded120, Padded121, Padded122, Padded123, Padded124, Padded125, Padded126, Padded127] ++ rest) 11776 beforeFfis112 beforeShmem112 = LabToTarget.getShmemInfo rest 21264 afterFfis127 afterShmem127 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 11776 beforeFfis112 beforeShmem112 = _
  rw [shmemStep112]
  change LabToTarget.getShmemInfo _ 11796 beforeFfis113 beforeShmem113 = _
  rw [shmemStep113]
  change LabToTarget.getShmemInfo _ 11816 beforeFfis114 beforeShmem114 = _
  rw [shmemStep114]
  change LabToTarget.getShmemInfo _ 11836 beforeFfis115 beforeShmem115 = _
  rw [shmemStep115]
  change LabToTarget.getShmemInfo _ 11948 beforeFfis116 beforeShmem116 = _
  rw [shmemStep116]
  change LabToTarget.getShmemInfo _ 12056 beforeFfis117 beforeShmem117 = _
  rw [shmemStep117]
  change LabToTarget.getShmemInfo _ 12180 beforeFfis118 beforeShmem118 = _
  rw [shmemStep118]
  change LabToTarget.getShmemInfo _ 12320 beforeFfis119 beforeShmem119 = _
  rw [shmemStep119]
  change LabToTarget.getShmemInfo _ 12564 beforeFfis120 beforeShmem120 = _
  rw [shmemStep120]
  change LabToTarget.getShmemInfo _ 14152 beforeFfis121 beforeShmem121 = _
  rw [shmemStep121]
  change LabToTarget.getShmemInfo _ 17980 beforeFfis122 beforeShmem122 = _
  rw [shmemStep122]
  change LabToTarget.getShmemInfo _ 18228 beforeFfis123 beforeShmem123 = _
  rw [shmemStep123]
  change LabToTarget.getShmemInfo _ 18324 beforeFfis124 beforeShmem124 = _
  rw [shmemStep124]
  change LabToTarget.getShmemInfo _ 18520 beforeFfis125 beforeShmem125 = _
  rw [shmemStep125]
  change LabToTarget.getShmemInfo _ 18592 beforeFfis126 beforeShmem126 = _
  rw [shmemStep126]
  change LabToTarget.getShmemInfo _ 18656 beforeFfis127 beforeShmem127 = _
  rw [shmemStep127]
theorem symbolsChunk112_127 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 11776 ([Padded112, Padded113, Padded114, Padded115, Padded116, Padded117, Padded118, Padded119, Padded120, Padded121, Padded122, Padded123, Padded124, Padded125, Padded126, Padded127] ++ rest) = [(112, 11776, 20), (113, 11796, 20), (114, 11816, 20), (115, 11836, 112), (116, 11948, 108), (117, 12056, 124), (118, 12180, 140), (119, 12320, 244), (120, 12564, 1588), (121, 14152, 3828), (122, 17980, 248), (123, 18228, 96), (124, 18324, 196), (125, 18520, 72), (126, 18592, 64), (127, 18656, 2608)] ++ LabToTarget.getSymbols 21264 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength112, symbolLength113, symbolLength114, symbolLength115, symbolLength116, symbolLength117, symbolLength118, symbolLength119, symbolLength120, symbolLength121, symbolLength122, symbolLength123, symbolLength124, symbolLength125, symbolLength126, symbolLength127]
  rfl
#print axioms ffiChunk112_127
#print axioms shmemChunk112_127
#print axioms symbolsChunk112_127
end InitECandidate.Proofs.BackendStages.Metadata
