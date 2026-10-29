import Lean
import InitECandidate.Proofs.GlobalsComputation

/-! Explicit top-level lookup equation avoids kernel unfolding the complete
well-founded declaration projection to select an already-known first function. -/
/-- Reference the pinned evaluator's private definition by its exact kernel
name; this macro only supplies an identifier, and introduces no proposition. -/
macro "simplifyGlobalsLookup" : tactic => do
  let privateModule := Lean.Name.num `_private.Flapjack.Pancake.PanGlobals.CompileTopExact 0
  let lookupName := Lean.mkIdent ((privateModule.str "Flapjack").str "compileTopFunctionLookup")
  `(tactic| simp only [$lookupName:ident, if_pos rfl])

namespace InitECandidate.Proofs.GlobalsComputation
open Flapjack Flapjack.Pancake.PanLang

def compileSelected {width : Nat} [NeZero width]
    (ds : List (DeclHOL width)) (start : MlS)
    (arguments : List (MlS × ShapeHOL)) (returnShape : ShapeHOL) : List (DeclHOL width) :=
  let resorted := resortDeclsHOL ds
  let newStart := newMainNameHOL ds
  let renamed := fpermDecsHOL start newStart resorted
  let initial : PanGlobalsContextExact width :=
    { globals := HolFiniteMapExact.empty, globalsSize := 0,
      maxGlobalsSize := cakeBytesInWord width * BitVec.ofNat width
        ((decShapesHOL renamed).map sizeOfShapeHOL).sum }
  let (initializers, functions, exceptions, _) := compileDecsExactHOL initial renamed
  let parameters := arguments.map (fun entry => ExpHOL.var .local entry.1)
  exceptions ++ (.function
    { name := start, inline := false, exported := false, params := arguments,
      body := .seq (nestedSeqHOL initializers) (.call none newStart parameters),
      returnShape := returnShape } : DeclHOL width) :: functions

theorem compileTop_first {width : Nat} [NeZero width]
    (fn : FunDeclHOL width) (ds : List (DeclHOL width)) :
    compileTopExactHOL (.function fn :: ds) fn.name =
      compileSelected (.function fn :: ds) fn.name fn.params fn.returnShape := by
  simp only [compileTopExactHOL, functionsHOL]
  simplifyGlobalsLookup
  rfl

#print axioms compileTop_first
end InitECandidate.Proofs.GlobalsComputation
