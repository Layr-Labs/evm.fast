import InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.CompilerStages
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm

theorem fullCompile_expanded (ra : WordToWord.RegAllocFn)
    {width : Nat} [NeZero width] (two : Bool) (regs alg : Nat)
    (c : AsmConfigExact width) (entry : Nat × Nat × WordLangProgHOL (BitVec width))
    (oracle : Option (Spt Nat)) :
    WordToWord.fullCompileSingleWith ra two regs alg c (entry, oracle) =
      (entry.1, entry.2.1,
       let p0 := WordSimp.compileExp entry.2.2
       let p1 := WordInst.instSelectExecutable c (maxVarHOL p0 + 1) p0
       let p2 := WordAlloc.fullSsaCcTrans entry.2.1 p1
       let p3 := WordAlloc.removeDeadProg p2
       let p4 := WordCse.wordCommonSubexpElim p3
       let p5 := WordCopy.copyProp p4
       let p6 := WordInst.threeToTwoRegProg two p5
       let p7 := WordUnreach.removeUnreach p6
       let p8 := WordAlloc.removeDeadProg p7
       let p9 := WordToWord.wordAllocWith ra entry.1 c alg regs p8 oracle
       WordRemove.removeMustTerminate p9) := by
  rcases entry with ⟨name, argc, p⟩
  with_unfolding_all rfl

#print axioms fullCompile_expanded
end InitECandidate.Proofs.CompilerStages
