import InitE.SourceDeclarations
import InitECandidate.Proofs.StackAnalysis.FastDepth
import Flapjack.Compiler.Backend.WordToStack.NativeTopCompile

namespace InitECandidate.Proofs.StackComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm
open WordToStack.Native Flapjack.Compiler.Encoders.RiscV.Target

def frameSize {width : Nat} [NeZero width] (p : WordLangProgHOL (BitVec width))
    (argumentCount registerCount : Nat) : Nat :=
  let stackVars := max ((maxVarHOL p / 2 + 1) - registerCount) (argumentCount - registerCount)
  if stackVars = 0 then 0 else stackVars + 1

theorem compileProg_frame {width : Nat} [NeZero width] (conf : AsmConfigExact width)
    (perf : Bool) (p : WordLangProgHOL (BitVec width))
    (argc regs : Nat) (bitmaps : AppList (BitVec width) × Nat) :
    (compileProgNative conf perf p argc regs bitmaps).2.1 = frameSize p argc regs := by
  simp only [compileProgNative, frameSize]

theorem compile_frames {width : Nat} [NeZero width] (conf : AsmConfigExact width)
    (perf : Bool) (regs : Nat)
    (ps : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (bm : AppList (BitVec width) × Nat) :
    let out := compileWordToStackNative conf perf regs ps bm
    (out.1.zip out.2.1).map (fun ((id, _), frame) => (id, frame)) =
      ps.map (fun (id, argc, p) => (id, frameSize p argc regs)) := by
  induction ps generalizing bm with
  | nil => rfl
  | cons entry ps ih =>
    rcases entry with ⟨id, argc, p⟩
    simp only [compileWordToStackNative, compileProgNative]
    simp only [List.zip_cons_cons, List.map_cons]
    rw [ih]
    rfl

theorem compile_frameMap {width : Nat} [NeZero width] (conf : AsmConfigExact width)
    (perf : Bool) (ps : List (Nat × Nat × WordLangProgHOL (BitVec width))) :
    (compileNative conf perf ps).2.1.stackFrameSize =
      sptFromAList (ps.map (fun (id, argc, p) =>
        (id, frameSize p argc (conf.regCount - (5 + conf.avoidRegs.length))))) := by
  simp only [compileNative]
  rw [compile_frames]

#print axioms compile_frames
#print axioms compile_frameMap
/-- Compute the compiler's frame map without constructing unused native bodies. -/
def analyzeFrames (declarations : List (Flapjack.Pancake.PanLang.DeclHOL 64)) : Option Nat :=
  let config := RiscVConfig.pancakeRiscVBackendConfig
  let program := panToWordCompileProgHOL riscvConfig.isa declarations
  let (_, wordProgram) := WordToWord.compileWith RegAlloc.regAllocExecutable
    config.wordToWordConf riscvConfig program
  let regs := riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)
  let frames := sptFromAList (wordProgram.map fun (id, argc, p) => (id, frameSize p argc regs))
  StackAnalysis.FastDepth.fullCallGraphDepthFast frames
    BvlToBvi.initGlobalsLocation (sptFromAList wordProgram)

theorem analyzeFrames_eq (declarations : List (Flapjack.Pancake.PanLang.DeclHOL 64)) :
    analyzeFrames declarations =
      (let config := RiscVConfig.pancakeRiscVBackendConfig
       let program := panToWordCompileProgHOL riscvConfig.isa declarations
       let (_, wordProgram) := WordToWord.compileWith RegAlloc.regAllocExecutable
         config.wordToWordConf riscvConfig program
       let (_, wordConfig, _, _) := compileNative riscvConfig false wordProgram
       WordDepth.Executable.fullCallGraphDepthExecutable wordConfig.stackFrameSize
         BvlToBvi.initGlobalsLocation (sptFromAList wordProgram)) := by
  simp only [analyzeFrames, compile_frameMap]
  rw [StackAnalysis.FastDepth.fullCallGraphDepthFast_eq]

#print axioms analyzeFrames_eq
end InitECandidate.Proofs.StackComputation
