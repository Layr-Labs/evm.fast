import InitECandidate.Proofs.CrepComputation

set_option autoImplicit false
namespace InitECandidate.Proofs.CrepComputation
open Flapjack Flapjack.CrepInlineCanonical

theorem inlineProg_emptyLookup {width : Nat} [NeZero width]
    (fs : HolFiniteMapExact CrepInlineMapHOLName (List Nat × CrepProgHOL width))
    (keys : List CrepInlineMapHOLName)
    (support : ∀ key, fs.lookup key ≠ none → key ∈ keys)
    (emptyLookup : ∀ key, fs.lookup key = none) (p : CrepProgHOL width) :
    inlineProgHOLCoreExact fs keys support p = p := by
  cases p with
  | dec name value body =>
      rw [inlineProgHOLCoreExact_dec, inlineProg_emptyLookup fs keys support emptyLookup body]
  | seq a b =>
      rw [inlineProgHOLCoreExact_seq, inlineProg_emptyLookup fs keys support emptyLookup a,
        inlineProg_emptyLookup fs keys support emptyLookup b]
  | ite c a b =>
      rw [inlineProgHOLCoreExact_ite, inlineProg_emptyLookup fs keys support emptyLookup a,
        inlineProg_emptyLookup fs keys support emptyLookup b]
  | «while» c body =>
      rw [inlineProgHOLCoreExact_while, inlineProg_emptyLookup fs keys support emptyLookup body]
  | call ret name arguments =>
      cases ret with
      | none => rw [inlineProgHOLCoreExact_call_none, emptyLookup]
      | some ret =>
          rcases ret with ⟨returns, handler⟩
          cases handler with
          | none =>
              rw [inlineProgHOLCoreExact_call_returns]
              split
              · rfl
              · rw [emptyLookup]
          | some handler =>
              rcases handler with ⟨exception, body⟩
              rw [inlineProgHOLCoreExact_call_handler,
                inlineProg_emptyLookup fs keys support emptyLookup body]
  | _ => simp only [inlineProgHOLCoreExact]
termination_by sizeOf p

theorem compileInlProg_emptyLookup {width : Nat} [NeZero width]
    (fs : HolFiniteMapExact CrepInlineMapHOLName (List Nat × CrepProgHOL width))
    (keys : List CrepInlineMapHOLName)
    (support : ∀ key, fs.lookup key ≠ none → key ∈ keys)
    (emptyLookup : ∀ key, fs.lookup key = none)
    (prog : List (CrepInlineMapHOLName × List Nat × CrepProgHOL width)) :
    compileInlProgHOLExactWithSupport fs keys support prog = prog := by
  unfold compileInlProgHOLExactWithSupport
  have identity : ∀ triple : CrepInlineMapHOLName × List Nat × CrepProgHOL width,
      inlineProgHOLCoreExact (fs.erase triple.1)
        (keys.filter (fun key => key != triple.1))
        (HolFiniteMapExact.erase_support fs keys support triple.1) triple.2.2 = triple.2.2 := by
    intro triple
    have emptyErase : ∀ key, (fs.erase triple.1).lookup key = none := by
      intro key
      simp [HolFiniteMapExact.lookup_erase, FDOMSUB, emptyLookup]
    exact inlineProg_emptyLookup _ _ _ emptyErase _
  simp only [identity]
  exact List.map_id prog

theorem compileInlTop_empty {width : Nat} [NeZero width]
    (prog : List (CrepInlineMapHOLName × List Nat × CrepProgHOL width)) :
    compileInlTopHOLExact [] prog = prog := by
  unfold compileInlTopHOLExact
  have filtered : prog.filter (fun triple => ([] : List CrepInlineMapHOLName).contains triple.1) = [] := by
    induction prog with
    | nil => rfl
    | cons triple rest ih => simpa only [List.filter_cons, List.contains_nil, Bool.false_eq_true, if_false] using ih
  rw [filtered]
  apply compileInlProg_emptyLookup
  intro key
  rfl

#print axioms compileInlProg_emptyLookup
#print axioms compileInlTop_empty

#print axioms inlineProg_emptyLookup
end InitECandidate.Proofs.CrepComputation
