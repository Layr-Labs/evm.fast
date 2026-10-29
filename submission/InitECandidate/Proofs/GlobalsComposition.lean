import InitECandidate.Proofs.GlobalsComputation

/-! Concatenation equations connect independent declaration certificates to
exact top-level global compilation. -/
namespace InitECandidate.Proofs.GlobalsComputation
open Flapjack Flapjack.Pancake.PanLang

theorem compileDecs_append {width : Nat} [NeZero width]
    (context : PanGlobalsContextExact width) (xs ys : List (DeclHOL width)) :
    compileDecsExactHOL context (xs ++ ys) =
      (let (i1, f1, e1, c1) := compileDecsExactHOL context xs
       let (i2, f2, e2, c2) := compileDecsExactHOL c1 ys
       (i1 ++ i2, f1 ++ f2, e1 ++ e2, c2)) := by
  induction xs generalizing context with
  | nil => simp only [List.nil_append, compileDecsExactHOL, List.nil_append]
  | cons d xs ih =>
      cases d <;> simp only [List.cons_append, compileDecsExactHOL, ih]

theorem fperm_append {width : Nat} [NeZero width] (f g : MlS)
    (xs ys : List (DeclHOL width)) :
    fpermDecsHOL f g (xs ++ ys) = fpermDecsHOL f g xs ++ fpermDecsHOL f g ys := by
  induction xs with
  | nil => simp only [List.nil_append, fpermDecsHOL]
  | cons d xs ih => cases d <;> simp only [List.cons_append, fpermDecsHOL, ih]

#print axioms compileDecs_append
#print axioms fperm_append
end InitECandidate.Proofs.GlobalsComputation
