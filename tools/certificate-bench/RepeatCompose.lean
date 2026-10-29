import RepeatData
open Flapjack.Compiler.Backend
open CheckerExperiment
theorem seq_agreement (a b a' b' : Prog)
    (ha : WordCopy.copyPropProg a WordCopy.emptyEq = (a', WordCopy.emptyEq))
    (hb : WordCopy.copyPropProg b WordCopy.emptyEq = (b', WordCopy.emptyEq)) :
    WordCopy.copyPropProg (.seq a b) WordCopy.emptyEq = (.seq a' b', WordCopy.emptyEq) := by
  simp only [WordCopy.copyPropProg, ha, hb]
