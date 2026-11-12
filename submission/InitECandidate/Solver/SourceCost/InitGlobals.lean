import InitECandidate.Solver.SourceCost.CodeMap

/-!
# The globals of the post-declaration state

Every global of the guest is declared with initializer `0`. This file proves that the state
after the declarations (the start state of `main`) maps every defined global to the word `0`:

* `zeroInits decls`: every global initializer in `decls` is the constant `0` (a `Bool` check);
* `evaluateDeclsHOLFinite_globals_zero`: under `zeroInits`, declaration evaluation from a
  state whose globals are all `0` (or undefined) ends in one with the same property;
* `guestDecls_zeroInits`: the guest's declarations pass the check (by `decide_cbv`);
* `guestDecls_globals_zero`: in every post-declaration state of the source run, every
  defined global holds the word `0`.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang
open Flapjack.Basis.Pure.MlString

section Generic
variable {width : Nat} [NeZero width]

/-- Every global initializer in `decls` is the constant `0`. -/
def zeroInits : List (DeclHOL width) → Bool
  | [] => true
  | .decl _ _ e :: ds =>
      match e with
      | .const w => if w = 0 then zeroInits ds else false
      | _ => false
  | _ :: ds => zeroInits ds

/-- All defined globals hold the word `0`. -/
def GlobalsZero (s : PanSemStateFiniteExact width σ) : Prop :=
  ∀ g v, s.globals.lookup g = some v → v = .val (.word 0)

theorem evaluateDeclsHOLFinite_globals_zero {σ : Type} :
    ∀ (s : PanSemStateFiniteExact width σ) (hs : DecidablePred s.memaddrs)
      (decls : List (DeclHOL width)) (s' : PanSemStateFiniteExact width σ),
      zeroInits decls = true → GlobalsZero s →
      @evaluateDeclsHOLFinite width σ _ s hs decls = some s' → GlobalsZero s' := by
  intro s hs decls
  induction decls generalizing s with
  | nil =>
      intro s' _ hz h
      simp only [evaluateDeclsHOLFinite, Option.some.injEq] at h
      subst h
      exact hz
  | cons d rest ih =>
      intro s' hc hz h
      cases d with
      | name _ _ =>
          simp only [evaluateDeclsHOLFinite] at h
          exact ih s hs s' (by simpa [zeroInits] using hc) hz h
      | decl shape name e =>
          cases e with
          | const w =>
              simp only [zeroInits] at hc
              split at hc
              · rename_i hw
                subst hw
                simp only [evaluateDeclsHOLFinite] at h
                split at h
                · rename_i value hval
                  have hv : value = .val (.word 0) := (Option.some.inj hval).symm
                  split at h
                  · refine ih (setGlobalHOLFinite name value s) hs s' hc ?_ h
                    intro g v hg
                    simp only [setGlobalHOLFinite, HolFiniteMapExact.lookup_update_pointwise] at hg
                    split at hg
                    · rw [← Option.some.inj hg, hv]
                    · exact hz g v hg
                  · cases h
                · cases h
              · cases hc
          | _ => simp [zeroInits] at hc
      | function fd =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · exact ih { s with code := s.code.update (fd.name, fd.params, fd.body, fd.returnShape) }
              hs s' (by simpa [zeroInits] using hc) hz h
          · cases h
      | exnDecl en esh =>
          simp only [evaluateDeclsHOLFinite] at h
          split at h
          · exact ih { s with eshapes := s.eshapes.update (en, esh) } hs s'
              (by simpa [zeroInits] using hc) hz h
          · cases h

end Generic

set_option maxRecDepth 1000000 in
set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
set_option cbv.warning false in
/-- The guest declares every global with initializer `0`. -/
theorem guestDecls_zeroInits : zeroInits guestDecls = true := by decide_cbv

/-- In every post-declaration state of the source run, every defined global holds `0`. -/
theorem guestDecls_globals_zero (input : Guest.InputBlob) (st : StructContextExact)
    {_ : DecidablePred ({ InitE.sourceInitialState input with structs := st }).memaddrs}
    (s' : PanSemStateFiniteExact 64 Guest.HostMemory)
    (h : evaluateDeclsHOLFinite { InitE.sourceInitialState input with structs := st }
      (Guest.Software.guestAst.map declToHOL) = some s') :
    GlobalsZero s' :=
  evaluateDeclsHOLFinite_globals_zero _ _ _ s' guestDecls_zeroInits
    (fun g v hg => by simp [InitE.sourceInitialState] at hg) h

end InitECandidate.Solver.SourceCost

#print axioms InitECandidate.Solver.SourceCost.guestDecls_globals_zero
