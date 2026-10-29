import Lean
import Flapjack.Pancake.PanToCrep.CompileExact

/-! Per-declaration equations for the next frontend stage. The shared function
and exception metadata stay abstract when composing function certificates. -/
namespace InitECandidate.Proofs.CrepComputation
open Flapjack Flapjack.Pancake.PanLang

def compileEntry {width : Nat} [NeZero width]
    (functions : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ShapeHOL))
    (exceptions : HolFiniteMapExact MlS (BitVec width))
    (entry : MlS × List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL) :
    MlS × List Nat × CrepProgHOL width :=
  (entry.1, crepVarsHOL entry.2.1,
    compFuncExactHOLW functions exceptions entry.2.1 entry.2.2.1)

def compileDeclaration {width : Nat} [NeZero width]
    (functions : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ShapeHOL))
    (exceptions : HolFiniteMapExact MlS (BitVec width)) :
    DeclHOL width → Option (MlS × List Nat × CrepProgHOL width)
  | .function fn => some (fn.name, crepVarsHOL fn.params,
      compFuncExactHOLW functions exceptions fn.params fn.body)
  | _ => none

theorem compileFunctions_eq {width : Nat} [NeZero width]
    (functions : HolFiniteMapExact MlS (List (MlS × ShapeHOL) × ShapeHOL))
    (exceptions : HolFiniteMapExact MlS (BitVec width)) (ds : List (DeclHOL width)) :
    (functionsHOL ds).map (compileEntry functions exceptions) =
      ds.filterMap (compileDeclaration functions exceptions) := by
  induction ds with
  | nil => rfl
  | cons d ds ih =>
      cases d <;> simp only [functionsHOL, List.map_cons, List.filterMap_cons,
        compileDeclaration, compileEntry, ih]

theorem compileToCrep_eq_filterMap {width : Nat} [NeZero width]
    (ds : List (DeclHOL width)) :
    compileToCrepExactHOLW ds =
      ds.filterMap (compileDeclaration (makeFuncsExactHOL (functionsHOL ds))
        (getEidsFromDeclsHOL ds)) := by
  exact compileFunctions_eq _ _ ds

/-- Finite-support witnesses are proof fields; lookup equality determines the map. -/
theorem fmap_eq_of_lookup_eq {α β : Type} (xs ys : HolFiniteMapExact α β)
    (h : xs.lookup = ys.lookup) : xs = ys := by
  cases xs
  cases ys
  cases h
  rfl

theorem makeFuncs_congr {width : Nat} [NeZero width]
    (xs ys : List (MlS × List (MlS × ShapeHOL) × ProgHOL width × ShapeHOL))
    (h : makeFuncsEntriesHOL xs = makeFuncsEntriesHOL ys) :
    makeFuncsExactHOL xs = makeFuncsExactHOL ys := by
  apply fmap_eq_of_lookup_eq
  change alistToFmap (makeFuncsEntriesHOL xs) = alistToFmap (makeFuncsEntriesHOL ys)
  rw [h]

theorem getEids_congr {width : Nat} [NeZero width]
    (xs ys : List (DeclHOL width)) (h : getEidsEntriesHOL xs = getEidsEntriesHOL ys) :
    getEidsFromDeclsHOL xs = getEidsFromDeclsHOL ys := by
  apply fmap_eq_of_lookup_eq
  change alistToFmap (getEidsEntriesHOL xs) = alistToFmap (getEidsEntriesHOL ys)
  rw [h]

#print axioms compileFunctions_eq
#print axioms compileToCrep_eq_filterMap
end InitECandidate.Proofs.CrepComputation
