import InitECandidate.Proofs.CompilerComputation
import InitECandidate.Proofs.StackAnalysis.FastDepth
import Flapjack.Compiler.Backend.WordDepth.AnalysisInput
import Flapjack.Pancake.Proofs.PanToTarget.ExecutableCompileProgMaxDepth
import InitECandidate.Proofs.FrontendStages.Pass5

namespace InitE
open InitECandidate.Proofs
open Flapjack Flapjack.Pancake.PanLang Flapjack.Compiler.Backend
open Flapjack.Compiler.Encoders.RiscV.Target

/-- Analyze an already certified frontend output without compiling the source again. -/
def analyzeWordStack (program : List (Nat × Nat × WordLangProgHOL (BitVec 64))) : Option Nat :=
  let config := RiscVConfig.pancakeRiscVBackendConfig
  let (_, wordProgram) := WordToWord.compileWith RegAlloc.regAllocExecutable
    config.wordToWordConf riscvConfig program
  let (_, wordConfig, _, _) := WordToStack.Native.compileNative riscvConfig false wordProgram
  InitECandidate.Proofs.StackAnalysis.FastDepth.fullCallGraphDepthFast wordConfig.stackFrameSize
    BvlToBvi.initGlobalsLocation (sptFromAList wordProgram)

/-- Maximum compiler stack use in 64-bit words, before installation margins. -/
def analyzeSourceStack (declarations : List (DeclHOL 64)) : Option Nat :=
  analyzeWordStack (panToWordCompileProgHOL riscvConfig.isa declarations)

theorem analyzeSourceStack_fixed_eq : analyzeSourceStack sourceDeclarations =
    analyzeWordStack FrontendStages.pass5 := by
  exact congrArg analyzeWordStack FrontendStages.frontend_eq

/-- This is the stack computation used in compiler correctness. -/
theorem compilerDepthStack_eq (declarations : List (DeclHOL 64)) :
    (Pancake.Proofs.PanToTarget.compileProgMaxAsmDepthExecutable
      RiscVConfig.pancakeRiscVBackendConfig riscvConfig declarations).2 =
      analyzeSourceStack declarations := by
  unfold Pancake.Proofs.PanToTarget.compileProgMaxAsmDepthExecutable
    analyzeSourceStack analyzeWordStack
  simp only [InitECandidate.Proofs.StackAnalysis.FastDepth.fullCallGraphDepthFast_eq]

#print axioms compilerDepthStack_eq
#print axioms analyzeSourceStack_fixed_eq
end InitE
