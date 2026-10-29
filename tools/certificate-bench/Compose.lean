import Checker
namespace CheckerExperiment
open Flapjack Flapjack.Compiler.Backend
theorem seq_sound (a b : Prog)
    (ha : WordCopy.copyPropProg a WordCopy.emptyEq = (a, WordCopy.emptyEq))
    (hb : WordCopy.copyPropProg b WordCopy.emptyEq = (b, WordCopy.emptyEq)) :
    WordCopy.copyPropProg (.seq a b) WordCopy.emptyEq = (.seq a b, WordCopy.emptyEq) := by
  simp only [WordCopy.copyPropProg, ha, hb]
#print axioms seq_sound
end CheckerExperiment
