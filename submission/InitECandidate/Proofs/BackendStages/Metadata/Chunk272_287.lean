import InitECandidate.Proofs.BackendStages.Metadata.Ffi272
import InitECandidate.Proofs.BackendStages.Metadata.Shmem272
import InitECandidate.Proofs.BackendStages.Metadata.Ffi273
import InitECandidate.Proofs.BackendStages.Metadata.Shmem273
import InitECandidate.Proofs.BackendStages.Metadata.Ffi274
import InitECandidate.Proofs.BackendStages.Metadata.Shmem274
import InitECandidate.Proofs.BackendStages.Metadata.Ffi275
import InitECandidate.Proofs.BackendStages.Metadata.Shmem275
import InitECandidate.Proofs.BackendStages.Metadata.Ffi276
import InitECandidate.Proofs.BackendStages.Metadata.Shmem276
import InitECandidate.Proofs.BackendStages.Metadata.Ffi277
import InitECandidate.Proofs.BackendStages.Metadata.Shmem277
import InitECandidate.Proofs.BackendStages.Metadata.Ffi278
import InitECandidate.Proofs.BackendStages.Metadata.Shmem278
import InitECandidate.Proofs.BackendStages.Metadata.Ffi279
import InitECandidate.Proofs.BackendStages.Metadata.Shmem279
import InitECandidate.Proofs.BackendStages.Metadata.Ffi280
import InitECandidate.Proofs.BackendStages.Metadata.Shmem280
import InitECandidate.Proofs.BackendStages.Metadata.Ffi281
import InitECandidate.Proofs.BackendStages.Metadata.Shmem281
import InitECandidate.Proofs.BackendStages.Metadata.Ffi282
import InitECandidate.Proofs.BackendStages.Metadata.Shmem282
import InitECandidate.Proofs.BackendStages.Metadata.Ffi283
import InitECandidate.Proofs.BackendStages.Metadata.Shmem283
import InitECandidate.Proofs.BackendStages.Metadata.Ffi284
import InitECandidate.Proofs.BackendStages.Metadata.Shmem284
import InitECandidate.Proofs.BackendStages.Metadata.Ffi285
import InitECandidate.Proofs.BackendStages.Metadata.Shmem285
import InitECandidate.Proofs.BackendStages.Metadata.Ffi286
import InitECandidate.Proofs.BackendStages.Metadata.Shmem286
import InitECandidate.Proofs.BackendStages.Metadata.Ffi287
import InitECandidate.Proofs.BackendStages.Metadata.Shmem287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk272_287 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis287) : LabToTarget.findFfiNames ([Filtered272, Filtered273, Filtered274, Filtered275, Filtered276, Filtered277, Filtered278, Filtered279, Filtered280, Filtered281, Filtered282, Filtered283, Filtered284, Filtered285, Filtered286, Filtered287] ++ rest) = suffixFfis272 := by
  exact ffiStep272 _ ( ffiStep273 _ ( ffiStep274 _ ( ffiStep275 _ ( ffiStep276 _ ( ffiStep277 _ ( ffiStep278 _ ( ffiStep279 _ ( ffiStep280 _ ( ffiStep281 _ ( ffiStep282 _ ( ffiStep283 _ ( ffiStep284 _ ( ffiStep285 _ ( ffiStep286 _ ( ffiStep287 _ (h))))))))))))))))
theorem shmemChunk272_287 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded272, Padded273, Padded274, Padded275, Padded276, Padded277, Padded278, Padded279, Padded280, Padded281, Padded282, Padded283, Padded284, Padded285, Padded286, Padded287] ++ rest) 208784 beforeFfis272 beforeShmem272 = LabToTarget.getShmemInfo rest 230160 afterFfis287 afterShmem287 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 208784 beforeFfis272 beforeShmem272 = _
  rw [shmemStep272]
  change LabToTarget.getShmemInfo _ 209000 beforeFfis273 beforeShmem273 = _
  rw [shmemStep273]
  change LabToTarget.getShmemInfo _ 209188 beforeFfis274 beforeShmem274 = _
  rw [shmemStep274]
  change LabToTarget.getShmemInfo _ 213616 beforeFfis275 beforeShmem275 = _
  rw [shmemStep275]
  change LabToTarget.getShmemInfo _ 214332 beforeFfis276 beforeShmem276 = _
  rw [shmemStep276]
  change LabToTarget.getShmemInfo _ 218012 beforeFfis277 beforeShmem277 = _
  rw [shmemStep277]
  change LabToTarget.getShmemInfo _ 218508 beforeFfis278 beforeShmem278 = _
  rw [shmemStep278]
  change LabToTarget.getShmemInfo _ 219576 beforeFfis279 beforeShmem279 = _
  rw [shmemStep279]
  change LabToTarget.getShmemInfo _ 222404 beforeFfis280 beforeShmem280 = _
  rw [shmemStep280]
  change LabToTarget.getShmemInfo _ 222564 beforeFfis281 beforeShmem281 = _
  rw [shmemStep281]
  change LabToTarget.getShmemInfo _ 223872 beforeFfis282 beforeShmem282 = _
  rw [shmemStep282]
  change LabToTarget.getShmemInfo _ 224116 beforeFfis283 beforeShmem283 = _
  rw [shmemStep283]
  change LabToTarget.getShmemInfo _ 226892 beforeFfis284 beforeShmem284 = _
  rw [shmemStep284]
  change LabToTarget.getShmemInfo _ 227204 beforeFfis285 beforeShmem285 = _
  rw [shmemStep285]
  change LabToTarget.getShmemInfo _ 229220 beforeFfis286 beforeShmem286 = _
  rw [shmemStep286]
  change LabToTarget.getShmemInfo _ 229232 beforeFfis287 beforeShmem287 = _
  rw [shmemStep287]
theorem symbolsChunk272_287 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 208784 ([Padded272, Padded273, Padded274, Padded275, Padded276, Padded277, Padded278, Padded279, Padded280, Padded281, Padded282, Padded283, Padded284, Padded285, Padded286, Padded287] ++ rest) = [(272, 208784, 216), (273, 209000, 188), (274, 209188, 4428), (275, 213616, 716), (276, 214332, 3680), (277, 218012, 496), (278, 218508, 1068), (279, 219576, 2828), (280, 222404, 160), (281, 222564, 1308), (282, 223872, 244), (283, 224116, 2776), (284, 226892, 312), (285, 227204, 2016), (286, 229220, 12), (287, 229232, 928)] ++ LabToTarget.getSymbols 230160 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength272, symbolLength273, symbolLength274, symbolLength275, symbolLength276, symbolLength277, symbolLength278, symbolLength279, symbolLength280, symbolLength281, symbolLength282, symbolLength283, symbolLength284, symbolLength285, symbolLength286, symbolLength287]
  rfl
#print axioms ffiChunk272_287
#print axioms shmemChunk272_287
#print axioms symbolsChunk272_287
end InitECandidate.Proofs.BackendStages.Metadata
