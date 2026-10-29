import InitECandidate.Proofs.CompilerComputation

/-! Boolean branch selection lets opaque cached child programs retain their
checked shapes without unfolding another child alias. -/
namespace Flapjack.WordAlloc

def joinIte {α : Type} (cmp : Flapjack.Cmp) (reg : Nat) (imm : Flapjack.WordRegImm α)
    (p q : Flapjack.WordLangProgHOL α) : Flapjack.WordLangProgHOL α :=
  if isSkip p && isSkip q then .skip else .ite cmp reg imm p q

theorem joinIte_eq {α : Type} (cmp : Flapjack.Cmp) (reg : Nat) (imm : Flapjack.WordRegImm α)
    (p q : Flapjack.WordLangProgHOL α) :
    joinIte cmp reg imm p q =
      (match p, q with | .skip, .skip => .skip | _, _ => .ite cmp reg imm p q) := by
  cases p <;> cases q <;> rfl

def joinDeadIteResult {width : Nat} [NeZero width]
    (cmp : Flapjack.Cmp) (reg : Nat) (imm : Flapjack.WordRegImm (BitVec width))
    (left right : Flapjack.WordLangProgHOL (BitVec width) × Flapjack.NumSet × List Flapjack.WordStoreHOL) :=
  let live := Flapjack.sptUnion left.2.1 right.2.1
  let live := match imm with
    | .reg r => Flapjack.sptInsert r () (Flapjack.sptInsert reg () live)
    | _ => Flapjack.sptInsert reg () live
  (joinIte cmp reg imm left.1 right.1, live,
    left.2.2.filter fun s => s ∈ right.2.2)

theorem removeDeadStructural_ite_eq {width : Nat} [NeZero width]
    (cmp : Flapjack.Cmp) (reg : Nat) (imm : Flapjack.WordRegImm (BitVec width))
    (p q : Flapjack.WordLangProgHOL (BitVec width))
    (live : Flapjack.NumSet) (nlive : List Flapjack.WordStoreHOL)
    (loops : List (Flapjack.NumSet × Flapjack.NumSet)) :
    removeDeadStructural (.ite cmp reg imm p q) live nlive loops =
      joinDeadIteResult cmp reg imm (removeDeadStructural p live nlive loops)
        (removeDeadStructural q live nlive loops) := by
  rw [removeDeadStructural]
  generalize removeDeadStructural p live nlive loops = left
  generalize removeDeadStructural q live nlive loops = right
  rcases left with ⟨p', lp, np⟩
  rcases right with ⟨q', lq, nq⟩
  cases p' <;> cases q' <;> rfl

#print axioms joinIte_eq
#print axioms removeDeadStructural_ite_eq
end Flapjack.WordAlloc
