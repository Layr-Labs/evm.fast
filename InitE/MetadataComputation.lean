import Lean
import Init.Data.List.Sort.Lemmas
import Flapjack.Pancake.PanLang.Decl

namespace InitE.MetadataComputation
open Flapjack Flapjack.Pancake.PanLang

/-- Distinct numeric fingerprints suffice; no injectivity assumption is needed.
The base-257 encoding is chosen to avoid collisions on the fixed byte names. -/
def nameFingerprint (s : Flapjack.Basis.Pure.MlString.MlString) : Nat :=
  s.explode.foldl (fun acc b => acc * 257 + b.toNat + 1) 0

/-- Distinct images imply distinct inputs for any function, including a hash. -/
theorem nodup_of_map {α β : Type} (f : α → β) (xs : List α)
    (h : (xs.map f).Nodup) : xs.Nodup :=
  List.Pairwise.of_map f (fun _ _ different equal => different (congrArg f equal)) h

/-- A linear check of adjacent numeric keys. -/
def increasing : List Nat → Bool
  | a :: b :: rest => decide (a < b) && increasing (b :: rest)
  | _ => true

theorem increasing_pairwise (xs : List Nat) (h : increasing xs = true) :
    xs.Pairwise (· < ·) := by
  induction xs with
  | nil => exact .nil
  | cons a tail ih =>
    cases tail with
    | nil => exact .cons (by simp) .nil
    | cons b rest =>
      have hh : (decide (a < b) && increasing (b :: rest)) = true := h
      have parts : decide (a < b) = true ∧ increasing (b :: rest) = true := by
        simpa only [Bool.and_eq_true] using hh
      have hab : a < b := of_decide_eq_true parts.1
      have ht := ih parts.2
      apply List.Pairwise.cons _ ht
      intro c hc
      rcases List.mem_cons.mp hc with hc | hc
      · simpa only [hc] using hab
      · exact Nat.lt_trans hab ((List.pairwise_cons.mp ht).1 c hc)

theorem nodup_of_sorted_fingerprints (xs : List Flapjack.Basis.Pure.MlString.MlString)
    (h : increasing ((xs.map nameFingerprint).mergeSort (fun a b => decide (a ≤ b))) = true) :
    xs.Nodup := by
  apply nodup_of_map nameFingerprint xs
  apply (List.mergeSort_perm _ (fun a b => decide (a ≤ b))).nodup
  exact (increasing_pairwise _ h).imp (fun hab => Nat.ne_of_lt hab)

/-- Function-name checks do not depend on translated function bodies. -/
theorem functionNames_toHOL (ds : List (Decl (BitVec 64))) :
    (functionsHOL (ds.map declToHOL)).map Prod.fst =
      ds.filterMap (fun d => match d with
        | .function f => some (Flapjack.Basis.Pure.MlString.ofString f.name)
        | _ => none) := by
  induction ds with
  | nil => rfl
  | cons d ds ih =>
    cases d <;> simp [functionsHOL, declToHOL, funDeclToHOL, ih]

/- Stop CBV from traversing record fields before a metadata projection.
This rule changes evaluation strategy only: its result is the input itself.
Enable it locally for metadata proofs, not for compilation or body checks. -/
open Lean Meta Sym Meta.Tactic.Cbv in
scoped cbv_simproc ↓ holdFunDecl (@Flapjack.FunDecl.mk _ _ _ _ _ _ _) :=
  fun _ => return .rfl (done := true)

/- Keep translated bodies suspended when a metadata check discards them. -/
scoped cbv_simproc ↓ holdProgToHOL (@Flapjack.Pancake.PanLang.progToHOL _ _ _) :=
  fun _ => return .rfl (done := true)

scoped cbv_simproc ↓ holdHOLFunDecl (@Flapjack.Pancake.PanLang.FunDeclHOL.mk _ _ _ _ _ _ _ _) :=
  fun _ => return .rfl (done := true)

#print axioms nodup_of_sorted_fingerprints
#print axioms nodup_of_map
#print axioms functionNames_toHOL
end InitE.MetadataComputation
