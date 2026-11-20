import InitECandidate.Solver.Spec.Hoare

/-!
# Lookup and replay invariants without the concrete analyzer closure

These two elementary rules are the only list logic needed to insert an actual
callee bound into a sound cost table and replay a selected callee-first list.
The concrete bridge must still supply soundness of every replay step.
Draft until checked with the pinned Lean toolchain.
-/
set_option autoImplicit false
namespace AcceptedCostOverrideCore

theorem cons_lookup_sound {α β : Type} [BEq α] [LawfulBEq α]
    {P : α → β → Prop} {st : List (α × β)} {f : α} {B : β}
    (hs : ∀ g Bg, st.lookup g = some Bg → P g Bg)
    (hf : P f B) : ∀ g Bg, ((f, B) :: st).lookup g = some Bg → P g Bg := by
  intro g Bg hg
  by_cases hgf : g = f
  · subst g
    have same : B = Bg := by
      simpa only [List.lookup, beq_self_eq_true, Option.some.injEq] using hg
    subst Bg
    exact hf
  · have hbeq : (g == f) = false := by simpa using hgf
    exact hs g Bg (by simpa only [List.lookup, hbeq] using hg)

theorem foldl_invariant {State Entry : Type} {P : State → Prop}
    (step : State → Entry → State) :
    ∀ entries : List Entry,
      (∀ e ∈ entries, ∀ s, P s → P (step s e)) →
      ∀ s, P s → P (entries.foldl step s)
  | [], _, s, hs => hs
  | e :: rest, hall, s, hs => by
      change P (rest.foldl step (step s e))
      exact foldl_invariant step rest
        (fun e' he' => hall e' (List.mem_cons_of_mem e he')) _
        (hall e List.mem_cons_self s hs)

#print axioms cons_lookup_sound
#print axioms foldl_invariant
end AcceptedCostOverrideCore
