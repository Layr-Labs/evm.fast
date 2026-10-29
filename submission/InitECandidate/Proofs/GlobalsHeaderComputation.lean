import InitECandidate.Proofs.GlobalsComputation
set_option autoImplicit false
namespace InitECandidate.Proofs.GlobalsHeaderComputation
open Flapjack Flapjack.Pancake.PanLang

theorem decShapes_append {width : Nat} [NeZero width]
    (xs ys : List (DeclHOL width)) :
    decShapesHOL (xs ++ ys) = decShapesHOL xs ++ decShapesHOL ys := by
  induction xs with
  | nil => rfl
  | cons d ds ih => cases d <;> simp only [List.cons_append, decShapesHOL, ih, List.cons_append]

theorem decShapes_fperm {width : Nat} [NeZero width]
    (f g : MlS) (ds : List (DeclHOL width)) :
    decShapesHOL (fpermDecsHOL f g ds) = decShapesHOL ds := by
  induction ds with
  | nil => simp only [fpermDecsHOL]
  | cons d ds ih => cases d <;> simp only [fpermDecsHOL, decShapesHOL, ih]

theorem decShapes_resort {width : Nat} [NeZero width]
    (ds : List (DeclHOL width)) : decShapesHOL (resortDeclsHOL ds) = decShapesHOL ds := by
  have names : decShapesHOL (ds.filter isNameHOL) = [] := by
    induction ds with
    | nil => rfl
    | cons d ds ih => cases d <;> simp [isNameHOL, List.filter_cons, decShapesHOL, ih]
  have exns : decShapesHOL (ds.filter isExnDeclHOL) = [] := by
    clear names
    induction ds with
    | nil => rfl
    | cons d ds ih => cases d <;> simp [isExnDeclHOL, List.filter_cons, decShapesHOL, ih]
  have funcs : decShapesHOL (ds.filter isFunctionHOL) = [] := by
    clear names exns
    induction ds with
    | nil => rfl
    | cons d ds ih => cases d <;> simp [isFunctionHOL, List.filter_cons, decShapesHOL, ih]
  have globals : decShapesHOL (ds.filter isDeclHOL) = decShapesHOL ds := by
    clear names exns funcs
    induction ds with
    | nil => rfl
    | cons d ds ih => cases d <;> simp [isDeclHOL, List.filter_cons, decShapesHOL, ih]
  simp only [resortDeclsHOL, decShapes_append, names, exns, funcs, globals, List.nil_append, List.append_nil]
def declarationShape {width : Nat} [NeZero width] : Flapjack.Decl (BitVec width) → Option Flapjack.Shape
  | .decl shape _ _ => some shape
  | _ => none

theorem decShapes_declMap {width : Nat} [NeZero width]
    (ds : List (Flapjack.Decl (BitVec width))) :
    decShapesHOL (ds.map declToHOL) = (ds.filterMap declarationShape).map shapeToHOL := by
  induction ds with
  | nil => rfl
  | cons d ds ih =>
      cases d <;> simp only [List.map_cons, List.filterMap_cons, declToHOL,
        decShapesHOL, declarationShape, ih]

#print axioms decShapes_declMap
#print axioms decShapes_fperm
#print axioms decShapes_resort
end InitECandidate.Proofs.GlobalsHeaderComputation
