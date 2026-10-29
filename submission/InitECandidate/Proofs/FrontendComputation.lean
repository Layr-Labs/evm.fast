import Lean
import Flapjack.Pancake.PanSimp

/-! Replace the frontend's size-based list recursion by its checked structural
map, leaving each function's exact body transformation unchanged. -/
namespace InitECandidate.Proofs.FrontendComputation
open Flapjack Flapjack.Pancake.PanLang

def simplifyDeclaration {width : Nat} [NeZero width] : DeclHOL width → DeclHOL width
  | .function fn => .function { fn with body := panSimpCompileHOL fn.body }
  | d => d

theorem panSimpDecls_eq_map {width : Nat} [NeZero width] (ds : List (DeclHOL width)) :
    panSimpDeclsHOL ds = ds.map simplifyDeclaration := by
  induction ds with
  | nil => simp only [panSimpDeclsHOL, List.map_nil]
  | cons d ds ih =>
    cases d <;> simp only [panSimpDeclsHOL, List.map_cons, simplifyDeclaration, ih]

attribute [scoped cbv_eval] panSimpDecls_eq_map
#print axioms panSimpDecls_eq_map
end InitECandidate.Proofs.FrontendComputation
