import InitECandidate.Proofs.GlobalsTopComputation
import InitECandidate.Proofs.GlobalsComposition

namespace InitECandidate.Proofs.GlobalsComputation
open Flapjack Flapjack.Pancake.PanLang

/-- Compose the top-level compiler from certified metadata and declaration output.
The source and all intermediate lists stay abstract throughout this proof. -/
theorem compileSelected_eq {width : Nat} [NeZero width]
    (source renamed : List (DeclHOL width)) (start newStart : MlS)
    (arguments : List (MlS × ShapeHOL)) (returnShape : ShapeHOL)
    (initial final : PanGlobalsContextExact width)
    (initializers : List (ProgHOL width)) (functions exceptions : List (DeclHOL width))
    (hNew : newMainNameHOL source = newStart)
    (hRenamed : fpermDecsHOL start newStart (resortDeclsHOL source) = renamed)
    (hInitial : ({ globals := HolFiniteMapExact.empty, globalsSize := 0, maxGlobalsSize := cakeBytesInWord width * BitVec.ofNat width ((decShapesHOL (fpermDecsHOL start newStart (resortDeclsHOL source))).map sizeOfShapeHOL).sum }
      : PanGlobalsContextExact width) = initial)
    (hCompile : compileDecsExactHOL initial renamed =
      (initializers, functions, exceptions, final)) :
    compileSelected source start arguments returnShape =
      exceptions ++ (.function
        { name := start, inline := false, exported := false, params := arguments, body := .seq (nestedSeqHOL initializers) (.call none newStart (arguments.map (fun entry => ExpHOL.var .local entry.1))), returnShape := returnShape } : DeclHOL width) :: functions := by
  unfold compileSelected
  rw [hNew]
  dsimp only
  rw [hInitial, hRenamed, hCompile]

/-- Concatenation is checked once with abstract lists, instead of reducing the
large concrete declaration bodies while composing the compiler certificates. -/
theorem compileThree_eq {width : Nat} [NeZero width]
    (initial middle final : PanGlobalsContextExact width)
    (exceptions globals functions output : List (DeclHOL width))
    (initializers : List (ProgHOL width))
    (hExceptions : compileDecsExactHOL initial exceptions = ([], [], exceptions, initial))
    (hGlobals : compileDecsExactHOL initial globals = (initializers, [], [], middle))
    (hFunctions : compileDecsExactHOL middle functions = ([], output, [], final)) :
    compileDecsExactHOL initial (exceptions ++ globals ++ functions) =
      (initializers, output, exceptions, final) := by
  rw [compileDecs_append, compileDecs_append, hExceptions]
  dsimp only
  rw [hGlobals]
  dsimp only
  rw [hFunctions]
  simp only [List.nil_append, List.append_nil]

/-- Renaming distributes over the three independently certified declaration lists. -/
theorem renameThree_eq {width : Nat} [NeZero width] (start newStart : MlS)
    (source exceptions globals functions renamedFunctions : List (DeclHOL width))
    (hResort : resortDeclsHOL source = exceptions ++ globals ++ functions)
    (hExceptions : fpermDecsHOL start newStart exceptions = exceptions)
    (hGlobals : fpermDecsHOL start newStart globals = globals)
    (hFunctions : fpermDecsHOL start newStart functions = renamedFunctions) :
    fpermDecsHOL start newStart (resortDeclsHOL source) =
      exceptions ++ globals ++ renamedFunctions := by
  rw [hResort, fperm_append, fperm_append, hExceptions, hGlobals, hFunctions]

#print axioms compileSelected_eq
#print axioms compileThree_eq
#print axioms renameThree_eq
end InitECandidate.Proofs.GlobalsComputation
