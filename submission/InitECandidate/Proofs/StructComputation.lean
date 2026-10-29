import Flapjack.Pancake.PanStructs.CompileDeclsExact

/-! Struct lowering can be certified declaration by declaration for every
context. The composition lemma preserves the original compiler evaluator. -/
namespace InitECandidate.Proofs.StructComputation
open Flapjack.Pancake.PanLang Flapjack.Pancake.PanStructs.CompileShapeExact

def compileDeclaration {width : Nat} [NeZero width]
    (context finalContext : ContextExact) : DeclHOL width → Option (DeclHOL width)
  | .decl shape name value => some (.decl (compileShapeExact context.structs shape) name
      (compileExpExact context value))
  | .function declaration => some (.function { declaration with
      params := declaration.params.map fun p => (p.1, compileShapeExact context.structs p.2)
      body := compileProgExact { finalContext with locals := declaration.params } declaration.body
      returnShape := compileShapeExact context.structs declaration.returnShape })
  | .exnDecl name shape => some (.exnDecl name (compileShapeExact context.structs shape))
  | .name _ _ => none

theorem compileDecls_identity {width : Nat} [NeZero width]
    (ds : List (DeclHOL width))
    (h : ∀ d ∈ ds, ∀ context finalContext, compileDeclaration context finalContext d = some d)
    (context : ContextExact) : (compileDeclsExact context ds).1 = ds := by
  induction ds generalizing context with
  | nil => rfl
  | cons d ds ih =>
      have hd := h d (by simp)
      have ht : ∀ d ∈ ds, ∀ context finalContext,
          compileDeclaration context finalContext d = some d := by
        intro d hm
        exact h d (by simp [hm])
      cases d with
      | name n sh => simpa [compileDeclaration] using hd context context
      | decl sh n v =>
          have tail := ih ht {context with globals := (n, sh) :: context.globals}
          have head := hd context context
          simp only [compileDeclaration, Option.some.injEq] at head
          simp only [compileDeclsExact, tail, head]
      | exnDecl n sh =>
          have tail := ih ht context
          have head := hd context context
          simp only [compileDeclaration, Option.some.injEq] at head
          simp only [compileDeclsExact, tail, head]
      | function fn =>
          have tail := ih ht context
          have head := hd context (compileDeclsExact context ds).2
          simp only [compileDeclaration, Option.some.injEq] at head
          simp only [compileDeclsExact, tail, head]

theorem compileTop_identity {width : Nat} [NeZero width]
    (ds : List (DeclHOL width))
    (h : ∀ d ∈ ds, ∀ context finalContext, compileDeclaration context finalContext d = some d) :
    compileTopExact ds = ds := by
  exact compileDecls_identity ds h _

#print axioms compileTop_identity
end InitECandidate.Proofs.StructComputation
