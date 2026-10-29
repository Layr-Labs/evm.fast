import Flapjack.Pancake.PanGlobals.CompileTopExact

/-! Structural list equations expose independently certifiable function bodies
without changing the exact global compiler evaluator. -/
namespace InitECandidate.Proofs.GlobalsComputation
open Flapjack Flapjack.Pancake.PanLang

def renameDeclaration {width : Nat} [NeZero width]
    (f g : MlS) : DeclHOL width → DeclHOL width
  | .function fn => .function {fn with
      name := fpermName f g fn.name
      body := fpermHOL f g fn.body}
  | d => d

theorem fpermDecs_eq_map {width : Nat} [NeZero width] (f g : MlS)
    (ds : List (DeclHOL width)) : fpermDecsHOL f g ds = ds.map (renameDeclaration f g) := by
  induction ds with
  | nil => simp only [fpermDecsHOL, List.map_nil]
  | cons d ds ih => cases d <;> simp only [fpermDecsHOL, List.map_cons, renameDeclaration, ih]

def compiledFunction {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) : DeclHOL width → Option (DeclHOL width)
  | .function fn => some (.function {fn with body := compileProgExactHOL context fn.body})
  | _ => none

def exceptionDeclaration {width : Nat} [NeZero width] : DeclHOL width → Option (DeclHOL width)
  | .exnDecl n sh => some (.exnDecl n sh)
  | _ => none

def nonGlobal {width : Nat} [NeZero width] : DeclHOL width → Prop
  | .function _ => True
  | .exnDecl _ _ => True
  | _ => False

theorem compileNonGlobals_eq {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) (ds : List (DeclHOL width))
    (h : ∀ d ∈ ds, nonGlobal d) :
    compileDecsExactHOL context ds =
      ([], ds.filterMap (compiledFunction context), ds.filterMap exceptionDeclaration, context) := by
  induction ds with
  | nil => simp only [compileDecsExactHOL, List.filterMap_nil]
  | cons d ds ih =>
      have hd := h d (by simp)
      have ht : ∀ d ∈ ds, nonGlobal d := by
        intro d hm
        exact h d (by simp [hm])
      cases d with
      | decl _ _ _ => exact False.elim hd
      | name _ _ => exact False.elim hd
      | function fn => simp only [compileDecsExactHOL, ih ht, List.filterMap_cons,
          compiledFunction, exceptionDeclaration]
      | exnDecl n sh => simp only [compileDecsExactHOL, ih ht, List.filterMap_cons,
          compiledFunction, exceptionDeclaration]

#print axioms fpermDecs_eq_map
#print axioms compileNonGlobals_eq
end InitECandidate.Proofs.GlobalsComputation
