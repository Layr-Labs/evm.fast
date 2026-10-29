import InitECandidate.Proofs.BackendComputation
import InitECandidate.Proofs.BackendStages.Chunk64_79
import InitECandidate.Proofs.BackendStages.Chunk80_95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.Native64_95
def programs2 : List (Nat × Nat × WordLangProgHOL (BitVec 64)) := []
def bodies2 : List (Nat × StackLang.HolProg 64) := []
def frames2 : List Nat := []
def after2 (bitmapPrefix : AppList (BitVec 64)) := bitmapPrefix
theorem compiled2_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs2 (bitmapPrefix, 41) = (bodies2, frames2, after2 bitmapPrefix, 41) := by rfl
def programs1 := Chunk80_95.programs ++ programs2
def bodies1 := Chunk80_95.bodies ++ bodies2
def frames1 := Chunk80_95.frames ++ frames2
def after1 (bitmapPrefix : AppList (BitVec 64)) := after2 (Chunk80_95.after bitmapPrefix)
theorem compiled1_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs1 (bitmapPrefix, 33) = (bodies1, frames1, after1 bitmapPrefix, 41) := by
  unfold programs1
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk80_95.compiled_eq]
  dsimp only [Chunk80_95.result]
  rw [compiled2_eq]
  rfl
def programs0 := Chunk64_79.programs ++ programs1
def bodies0 := Chunk64_79.bodies ++ bodies1
def frames0 := Chunk64_79.frames ++ frames1
def after0 (bitmapPrefix : AppList (BitVec 64)) := after1 (Chunk64_79.after bitmapPrefix)
theorem compiled0_eq (bitmapPrefix : AppList (BitVec 64)) : WordToStack.Native.compileWordToStackNative riscvConfig false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) programs0 (bitmapPrefix, 1) = (bodies0, frames0, after0 bitmapPrefix, 41) := by
  unfold programs0
  rw [InitECandidate.Proofs.BackendComputation.compileWordToStack_append]
  rw [Chunk64_79.compiled_eq]
  dsimp only [Chunk64_79.result]
  rw [compiled1_eq]
  rfl
theorem programs_eq : programs0 = [StackAnalysis.optimized64, StackAnalysis.optimized65, StackAnalysis.optimized66, StackAnalysis.optimized67, StackAnalysis.optimized68, StackAnalysis.optimized69, StackAnalysis.optimized70, StackAnalysis.optimized71, StackAnalysis.optimized72, StackAnalysis.optimized73, StackAnalysis.optimized74, StackAnalysis.optimized75, StackAnalysis.optimized76, StackAnalysis.optimized77, StackAnalysis.optimized78, StackAnalysis.optimized79, StackAnalysis.optimized80, StackAnalysis.optimized81, StackAnalysis.optimized82, StackAnalysis.optimized83, StackAnalysis.optimized84, StackAnalysis.optimized85, StackAnalysis.optimized86, StackAnalysis.optimized87, StackAnalysis.optimized88, StackAnalysis.optimized89, StackAnalysis.optimized90, StackAnalysis.optimized91, StackAnalysis.optimized92, StackAnalysis.optimized93, StackAnalysis.optimized94, StackAnalysis.optimized95] := by rfl
#print axioms compiled0_eq
#print axioms programs_eq
def bitmaps : List (BitVec 64) := appListAppend (after0 (.list [4]))
def wordConfig : WordToStack.Native.Config := { bitmapsLength := 41, stackFrameSize := sptFromAList ((bodies0.zip frames0).map (fun ((identifier, _), frame) => (identifier, frame))) }
def stack : List (Nat × StackLang.HolProg 64) := (raiseStubLocation, WordToStack.Native.raiseStubNative false (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: (storeConstsStubLocation, WordToStack.Native.storeConstsStubNative (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length))) :: bodies0
theorem native_eq : WordToStack.Native.compileNative riscvConfig false programs0 = (bitmaps, wordConfig, 0 :: frames0, stack) := by
  exact InitECandidate.Proofs.BackendComputation.compileNative_of_bodies riscvConfig false programs0 bodies0 frames0 _ (compiled0_eq (.list [4]))
#print axioms native_eq
end InitECandidate.Proofs.BackendStages.Native64_95
