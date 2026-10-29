import InitE.MetadataComputation
import Flapjack.Compiler.Backend.RegAlloc.ClashTree

namespace InitECandidate.Proofs.ClashComputation
open Flapjack
open InitE.MetadataComputation

theorem increasing_of_pairwise (xs : List Nat) (h : xs.Pairwise (· < ·)) :
    increasing xs = true := by
  induction xs with
  | nil => rfl
  | cons a tail ih =>
    cases tail with
    | nil => rfl
    | cons b rest =>
      obtain ⟨ha, ht⟩ := List.pairwise_cons.mp h
      have hab : a < b := ha b (by simp)
      change (decide (a < b) && increasing (b :: rest)) = true
      rw [decide_eq_true hab, ih ht]
      rfl

def distinctSorted (names : List Nat) : Bool :=
  increasing (names.mergeSort (fun a b => decide (a ≤ b)))

theorem distinctSorted_iff (names : List Nat) : distinctSorted names = true ↔ names.Nodup := by
  let sorted := names.mergeSort (fun a b => decide (a ≤ b))
  have hp : sorted.Perm names := List.mergeSort_perm _ _
  constructor
  · intro h
    exact hp.nodup ((increasing_pairwise sorted h).imp (fun h => Nat.ne_of_lt h))
  · intro h
    have hn : sorted.Nodup := hp.symm.nodup h
    have hs : sorted.Pairwise (· ≤ ·) := by
      have hb := List.pairwise_mergeSort
        (le := fun a b : Nat => decide (a ≤ b))
        (fun a b c hab hbc => by
          exact decide_eq_true (Nat.le_trans (of_decide_eq_true hab) (of_decide_eq_true hbc)))
        (fun a b => by
          rcases Nat.le_total a b with hab | hba
          · simp [hab]
          · simp [hba]) names
      exact hb.imp (fun h => of_decide_eq_true h)
    apply increasing_of_pairwise
    exact (hs.and hn).imp (fun ⟨hle, hne⟩ => Nat.lt_of_le_of_ne hle hne)

def checkColSorted {α : Type} (f : Nat → Nat) (tree : Spt α) : Option (Spt α × NumSet) :=
  let names := (sptToAList tree).map (fun entry => f entry.1)
  if distinctSorted names then
    some (tree, sptFromAList (names.map (fun name => (name, ()))))
  else none

theorem checkColSorted_eq {α : Type} (f : Nat → Nat) (tree : Spt α) :
    RegAlloc.checkCol f tree = checkColSorted f tree := by
  unfold RegAlloc.checkCol checkColSorted
  dsimp only
  simp only [distinctSorted_iff, List.nodup_iff_pairwise_ne]

attribute [scoped cbv_eval] checkColSorted_eq

#print axioms checkColSorted_eq
end InitECandidate.Proofs.ClashComputation
