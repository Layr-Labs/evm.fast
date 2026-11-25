import InitECandidate.Solver.PayloadDecoder.SliceFirstStore
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

def HeapCappedSlices (v : ValueHOL 64) : Prop :=
  ∃ (arr : ValueHOL 64) (count : BitVec 64),
    v = .rStruct [arr, .val (.word count)] ∧ count.toNat ≤ 15728640

theorem sliceHeapCount :
    FunSpec σ guestCtx (nm "rlp_list_to_slices")
      (fun _ _ r _ => ∀ v, r = .returned v → HeapCappedSlices v) := by
  apply funSpec_of_hoare (R := fun _ _ v _ => HeapCappedSlices v)
  intro vs body callee rs hl s0 _ _
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, _, _, _, -, -, -, -⟩ := lookupCode_two code_rlp_list_to_slices (by decide) hl
  unfold slBody
  refine hoare_decCallL (funSpec_count_le guestCtx_code InitECandidate.Solver.MemSafe.WaveHelpers.domLow_guestCtx) (fun _ _ _ h => h)
    fun s _ _ _ _ _ v st hcf _ _ => ?_
  obtain ⟨C, rfl, hwide⟩ := hcf _ rfl
  refine hoare_decCallL (Inv.funSpec_alloc guestCtx_code) (fun _ _ _ h => h)
    fun u _ hu avs havs _ arr st2 hr _ _ => ?_
  subst u
  rw [evs_cons (ev_mul2 (ev_lw (lk_set_self _ _ _)) (ev_cw _ 16)) evs_nil] at havs
  cases havs
  obtain ⟨N,A,Q,hArgs,_,rfl,_,_,_,_,hq,hend⟩ := hr _ rfl
  simp only [List.cons.injEq,ValueHOL.val.injEq,HolWordLab.word.injEq,and_true] at hArgs
  subst N
  refine hoare_decL (fun _ _ _ h => h) fun t _ ht i hI _ => ?_
  subst t
  rw [ev_cw] at hI
  cases hI
  refine hoare_decL (fun _ _ _ h => h) fun t _ ht off _ _ => ?_
  subst t
  by_cases hcap : C.toNat ≤ 15728640
  case neg =>
    have hpos : 0 < C.toNat := by omega
    have bad : ¬ guestCtx.memaddrs A := fun had => hcap (allocatedCount hwide had hq hend)
    refine hoare_seq (R := fun _ _ => False) ?_ (fun _ _ _ _ _ h => h.elim)
      (fun _ _ h _ => h.elim)
    refine hoare_pre (invalidLoop A C hpos bad) ?_
    rintro s _ rfl
    refine ⟨?_,?_,?_⟩
    · rw [lk_set_ne _ _ (show nm "off" ≠ nm "arr" by decide),
          lk_set_ne _ _ (show nm "i" ≠ nm "arr" by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (show nm "off" ≠ nm "i" by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (show nm "off" ≠ nm "count" by decide),
          lk_set_ne _ _ (show nm "i" ≠ nm "count" by decide),
          lk_set_ne _ _ (show nm "arr" ≠ nm "count" by decide)]
      exact lk_set_self _ _ _
  let arr : ValueHOL 64 := .val (.word A)
  let I : State σ → Prop := fun t =>
    t.locals.lookup (nm "arr") = some arr ∧ t.locals.lookup (nm "count") = some (.val (.word C))
  let w : ProgHOL 64 := .while slCond slLoopBody
  have keepA : Keeps σ (nm "arr") w := keepsB_sound _ _ (by decide)
  have keepC : Keeps σ (nm "count") w := keepsB_sound _ _ (by decide)
  have noReturns := BalEnc.noret_sound (σ := σ) (X := guestCtx) w (by decide)
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

#print axioms sliceHeapCount
end PayloadDecoder
