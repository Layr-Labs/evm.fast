import InitECandidate.Solver.MemSafe.BalEnc.Bbl7
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.Spec.Mpt.Leaves.Slices

/-! A returning slice-list decoder carries the installed RLP parser's count
bound in its second field. The call may receive arbitrary pointers and lengths. -/
set_option autoImplicit false
set_option maxRecDepth 100000
namespace PayloadDecoder
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.WaveHelpers (DomLow funSpec_count_le)
variable {σ : Type} {X : Ctx 64}

def CappedSlices (v : ValueHOL 64) : Prop :=
  ∃ (arr : ValueHOL 64) (count : BitVec 64),
    v = .rStruct [arr, .val (.word count)] ∧ count.toNat ≤ 2^42

theorem sliceCount (hC : X.code.lookup = guestCode) (hD : DomLow X) :
    FunSpec σ X (nm "rlp_list_to_slices")
      (fun _ _ r _ => ∀ v, r = .returned v → CappedSlices v) := by
  apply funSpec_of_hoare (R := fun _ _ v _ => CappedSlices v)
  intro vs body callee rs hl s0 _ _
  rw [hC] at hl
  obtain ⟨rfl, -, _, _, _, -, -, -, -⟩ := lookupCode_two code_rlp_list_to_slices (by decide) hl
  unfold slBody
  refine hoare_decCallL (funSpec_count_le hC hD) (fun _ _ _ h => h)
    fun s _ _ _ _ _ v st hcf _ _ => ?_
  obtain ⟨C, rfl, hcap⟩ := hcf _ rfl
  refine hoare_decCallL (funSpec_true _) (fun _ _ _ h => h)
    fun u _ hu _ _ _ arr st2 _ _ _ => ?_
  subst u
  refine hoare_decL (fun _ _ _ h => h) fun t _ ht i _ _ => ?_
  subst t
  refine hoare_decL (fun _ _ _ h => h) fun t _ ht off _ _ => ?_
  subst t
  let I : State σ → Prop := fun t =>
    t.locals.lookup (nm "arr") = some arr ∧ t.locals.lookup (nm "count") = some (.val (.word C))
  let w : ProgHOL 64 := .while slCond slLoopBody
  have keepA : Keeps σ (nm "arr") w := keepsB_sound _ _ (by decide)
  have keepC : Keeps σ (nm "count") w := keepsB_sound _ _ (by decide)
  have noReturns := BalEnc.noret_sound (σ := σ) (X := X) w (by decide)
  let R := fun (r : Option (PanSemResultExact 64)) (t : State σ) =>
    (∀ x, r ≠ some (.returned x)) ∧ (r = none → I t)
  refine hoare_seq (R := R) ?_ (fun r t _ _ _ hr x hx => (hr.1 x hx).elim) ?_
  · intro t ht hinit tracked
    subst t
    constructor
    · intro x hx
      exact noReturns _ ht trivial (by rw [hx]; simp [Good]) x hx
    · intro e
      constructor
      · rw [keepA _ (Or.inl e)]
        rw [lk_set_ne _ _ (show nm "off" ≠ nm "arr" by decide),
          lk_set_ne _ _ (show nm "i" ≠ nm "arr" by decide)]
        exact lk_set_self _ _ _
      · rw [keepC _ (Or.inl e)]
        rw [lk_set_ne _ _ (show nm "off" ≠ nm "count" by decide),
          lk_set_ne _ _ (show nm "i" ≠ nm "count" by decide),
          lk_set_ne _ _ (show nm "arr" ≠ nm "count" by decide)]
        exact lk_set_self _ _ _
  · refine hoare_return fun t _ ⟨_, hi⟩ out hout x hx => ?_
    cases hx
    obtain ⟨ha, hc⟩ := hi rfl
    have ea : ev t (lv (nm "arr")) = some arr := ha
    have ec : ev t (lv (nm "count")) = some (.val (.word C)) := hc
    rw [ev_rstruct (evs_cons ea (evs_cons ec evs_nil))] at hout
    cases hout
    exact ⟨arr, C, rfl, hcap⟩

#print axioms sliceCount
end PayloadDecoder
