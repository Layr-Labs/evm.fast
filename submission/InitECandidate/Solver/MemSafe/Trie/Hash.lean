import InitECandidate.Solver.MemSafe.Trie.Ref

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `node_hash_cached`: the abnormal results

`ret_node_hash_cached` (cost layer) covers returns. A non-returning good result is an `mpt_fail` (before
any write) or a trap in `alloc` (abortive): memory and globals are those of the entry.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- The post of "no abnormal result". -/
def NoAbnQ : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r _ => ∀ r', r = some r' → ¬ Abn r'

/-- "Abnormal results leave the entry state." -/
def AQ (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ r', r = some r' → Abn r' → Clean s0 t

theorem aq_of_cq {s0 : State σ} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : CQ s0 r t) : AQ s0 r t := fun _ _ _ => h

theorem aq_noAbn {s0 : State σ} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : ∀ r', r = some r' → ¬ Abn r') : AQ s0 r t := fun r' hr hab => absurd hab (h r' hr)

/-- The code after `alloc` in `node_hash_cached` raises nothing. -/
theorem nhcK_noAbn (hkec : FunSpec σ X (nm "keccak256") (fun _ _ r _ => ¬ Abn r)) :
    HoareG σ X (fun _ => True) nhcK (NoAbnQ (σ := σ)) := by
  unfold nhcK
  refine hoareG_seq (R := NoAbnQ) ?_ (fun r t _ _ _ h => h) ?_
  · refine hoareG_callD hkec (fun s _ _ vs _ callee v st _ _ => ?_)
      (fun s _ _ vs _ callee r st hR _ habn => absurd habn hR)
    intro r' hr'; cases hr'
  · refine hoareG_pre (P := fun _ => True) ?_ (fun _ _ _ => trivial)
    refine hoareG_seq (R := NoAbnQ) ?_ (fun r t _ _ _ h => h) ?_
    · exact hoareG_store fun s _ _ w v mem _ _ _ r' hr' => by cases hr'
    · exact hoareG_pre (hoareG_return fun s _ _ v _ r' hr' => by cases hr'; rintro (⟨e, v, h⟩ | ⟨e, h⟩) <;> cases h)
        (fun _ _ _ => trivial)

theorem spec_nhc_abn (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    FunSpec σ X (nm "node_hash_cached") (fun _ s r t => Good (some r) → (∃ p, ptrsOf s = some p) →
      Abn r → Clean s t) := by
  have hkec : FunSpec σ X (nm "keccak256") (fun _ _ r _ => ¬ Abn r) :=
    Rec.noAbn_of_ef (Rec.ef_of_table hC hX (by decide_cbv))
  refine funSpecG_of_hoareG (R := fun _ s r t => (∃ p, ptrsOf s = some p) → Abn r → Clean s t) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_node_hash_cached hl
  by_cases hp : ∃ p, ptrsOf s0 = some p
  swap
  · exact fun s hs hs0 hg r' hr' hex _ => by subst hs0; exact absurd hex hp
  unfold nhcBody
  refine hoareG_conseq (P := Clean s0) (Q := AQ s0) ?_
    (fun t _ ht => by subst ht; exact clean_refl _)
    (fun r t _ _ h r' hr' _ habn => h r' hr' habn)
  refine hoareG_dec fun s hs hP v hv hsh => ?_
  refine hoareG_conseq (P := Clean s0) (Q := AQ s0) ?_
    (fun t _ ht => by subst ht; exact hP) (fun _ _ _ _ h => h)
  refine hoareG_seq (R := CQ s0) (cc_ite cc_return cc_skip) (fun r t _ _ _ h => aq_of_cq h) ?_
  refine hoareG_pre (P := Clean s0) ?_ (fun _ _ h => h)
  refine hoareG_seq (R := CQ s0) (cc_ite (cc_fail hC) cc_skip) (fun r t _ _ _ h => aq_of_cq h) ?_
  refine hoareG_pre (P := Clean s0) ?_ (fun _ _ h => h)
  refine hoareG_decCall (FunSpec.and (MemSafe.allocSpec_alloc hC) (Rec.funSpec_alloc_abn hC)) ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    refine hoareG_conseq (P := fun t => t = _) (Q := NoAbnQ) ?_ (fun _ _ h => h)
      (fun r t _ _ h r' hr' hab => absurd hab (h r' hr'))
    exact hoareG_pre (nhcK_noAbn hkec) (fun _ _ _ => trivial)
  · intro s hs hP vs hvs callee r st ⟨hR, hR'⟩ _ habn
    intro r' hr'
    cases hr'
    intro _
    have hps : ∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p := by
      obtain ⟨p, hp⟩ := hp
      refine ⟨p, ?_⟩
      show ptrsOf s = _
      unfold ptrsOf gword at hp ⊢
      rw [hP.2]; exact hp
    obtain ⟨hg, hm⟩ := hR' (abn_good habn) hps habn
    exact clean_trans hP ⟨hm, hg⟩

end InitECandidate.Solver.MemSafe.Trie
