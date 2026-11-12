import InitECandidate.Solver.MemSafe.Trie.Hash

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `node_write_ref`: the abnormal results

An abnormal result of `node_write_ref` comes from `mpt_fail` (before any store) or from
`node_hash_cached` (which only fails before its `alloc`): memory and globals are those of the entry.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- `c` always ends normally. -/
def Nrm (P : State σ → Prop) (c : ProgHOL 64) : Prop :=
  HoareG σ X P c (fun r _ => r = none)

theorem nrm_storeByte {a e : ExpHOL 64} : Nrm (X := X) (fun _ : State σ => True) (.storeByte a e) :=
  hoareG_storeByte fun _ _ _ _ _ _ _ _ _ => rfl

theorem nrm_callD_ef {f : MlS} {args : List (ExpHOL 64)}
    (hf : FunSpec σ X f (fun _ _ r _ => ¬ Abn r)) :
    Nrm (X := X) (fun _ : State σ => True) (.call (some (none, none)) f args) :=
  hoareG_callD hf (fun _ _ _ _ _ _ _ _ _ _ => rfl)
    (fun _ _ _ _ _ _ _ _ hR _ habn => absurd habn hR)

theorem nrm_seq {a b : ProgHOL 64} (ha : Nrm (X := X) (fun _ : State σ => True) a)
    (hb : Nrm (X := X) (fun _ : State σ => True) b) : Nrm (X := X) (fun _ : State σ => True) (.seq a b) :=
  hoareG_seq (R := fun r _ => r = none) ha (fun _ _ _ hr _ h => absurd h hr)
    (hoareG_pre hb fun _ _ _ => trivial)

/-- The post: normal ends are clean, abnormal ends are clean. -/
def CA (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => (r = none → Clean s0 t) ∧ AQ s0 r t

theorem ca_of_cq {s0 : State σ} {P : State σ → Prop} {c : ProgHOL 64}
    (h : HoareG σ X P c (CQ s0)) : HoareG σ X P c (CA s0) :=
  hoareG_conseq h (fun _ _ h => h) fun _ _ _ _ h => ⟨fun _ => h, aq_of_cq h⟩

theorem ca_returned {s0 : State σ} {t : State σ} (v : ValueHOL 64) :
    CA s0 (some (.returned v)) t := by
  refine And.intro (fun h => by cases h) (fun r' hr' hab => ?_)
  cases hr'
  rcases hab with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h

/-- `a; return e` with `a` always normal. -/
theorem ca_ret {s0 : State σ} {a : ProgHOL 64} {e : ExpHOL 64}
    (ha : Nrm (X := X) (fun _ : State σ => True) a) :
    HoareG σ X (fun _ => True) (.seq a (.return e)) (CA s0) := by
  refine hoareG_seq (R := fun r _ => r = none) ha (fun _ _ _ hr _ h => absurd h hr) ?_
  exact hoareG_pre (hoareG_return fun s _ _ v _ => ca_returned v) (fun _ _ _ => trivial)

theorem ca_return {s0 : State σ} {e : ExpHOL 64} : HoareG σ X (fun _ => True) (.return e) (CA s0) :=
  hoareG_return fun s _ _ v _ => ca_returned v

theorem ca_ite {s0 : State σ} {c : ExpHOL 64} {a b : ProgHOL 64}
    (ha : HoareG σ X (Clean s0) a (CA s0)) (hb : HoareG σ X (Clean s0) b (CA s0)) :
    HoareG σ X (Clean s0) (.ite c a b) (CA s0) :=
  hoareG_ite (hoareG_pre ha fun _ _ h => h.1) (hoareG_pre hb fun _ _ h => h.1)

theorem ca_seq {s0 : State σ} {a b : ProgHOL 64}
    (ha : HoareG σ X (Clean s0) a (CA s0)) (hb : HoareG σ X (Clean s0) b (CA s0)) :
    HoareG σ X (Clean s0) (.seq a b) (CA s0) :=
  hoareG_seq ha (fun _ _ _ _ _ h => h.2 |> fun h => ⟨fun e => by simp_all, h⟩ |> fun h => h)
    (hoareG_pre hb fun _ _ h => h.1 rfl)

theorem ca_nrmseq {s0 : State σ} {a b : ProgHOL 64} (ha : Nrm (X := X) (fun _ : State σ => True) a)
    (hb : HoareG σ X (fun _ => True) b (CA s0)) : HoareG σ X (fun _ => True) (.seq a b) (CA s0) :=
  hoareG_seq (R := fun r _ => r = none) ha (fun _ _ _ hr _ h => absurd h hr)
    (hoareG_pre hb fun _ _ _ => trivial)

theorem ca_dec {s0 : State σ} {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {b : ProgHOL 64}
    (hb : HoareG σ X (Clean s0) b (CA s0)) : HoareG σ X (Clean s0) (.dec x sh e b) (CA s0) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  exact hoareG_conseq hb (fun t _ ht => by subst ht; exact hp) (fun _ _ _ _ h => h)

theorem spec_nwr_abn (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    FunSpec σ X (nm "node_write_ref") (fun _ s r t => Good (some r) → (∃ p, ptrsOf s = some p) →
      Abn r → Clean s t) := by
  have hmc : FunSpec σ X (nm "memcpy") (fun _ _ r _ => ¬ Abn r) :=
    Rec.noAbn_of_ef (Rec.ef_of_table hC hX (by decide_cbv))
  refine funSpecG_of_hoareG (R := fun _ s r t => (∃ p, ptrsOf s = some p) → Abn r → Clean s t) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_node_write_ref (by decide) hl
  by_cases hp : ∃ p, ptrsOf s0 = some p
  swap
  · exact fun s hs hs0 hg r' hr' hex _ => by subst hs0; exact absurd hex hp
  refine hoareG_conseq (P := Clean s0) (Q := CA s0) ?_
    (fun t _ ht => by subst ht; exact clean_refl _)
    (fun r t _ _ h r' hr' _ habn => h.2 r' hr' habn)
  unfold nwrBody nwrHashed nwrK
  have hret : ∀ (a : ProgHOL 64) (e : ExpHOL 64), Nrm (X := X) (fun _ : State σ => True) a →
      HoareG σ X (Clean s0) (.seq a (.return e)) (CA s0) := fun a e ha =>
    hoareG_pre (ca_ret ha) (fun _ _ _ => trivial)
  refine ca_seq (ca_ite (hret _ _ nrm_storeByte) (ca_of_cq cc_skip)) ?_
  refine ca_seq (ca_ite (hoareG_pre (ca_nrmseq nrm_storeByte (ca_ret (nrm_callD_ef hmc)))
    (fun _ _ _ => trivial)) (ca_of_cq cc_skip)) ?_
  refine ca_seq (ca_of_cq (cc_failK hC)) ?_
  refine ca_dec (ca_dec ?_)
  refine ca_seq (ca_ite (hoareG_pre (ca_nrmseq (nrm_callD_ef hmc) ca_return) (fun _ _ _ => trivial))
    (ca_of_cq cc_skip)) ?_
  refine hoareG_decCall (spec_nhc_abn hC hX) ?_ ?_
  · intro s hs hP vs hvs callee v st hR _ hsh
    refine hoareG_conseq (P := fun _ => True) (Q := CA s0) ?_ (fun _ _ _ => trivial) (fun _ _ _ _ h => h)
    exact ca_nrmseq nrm_storeByte (ca_nrmseq (nrm_callD_ef hmc) ca_return)
  · intro s hs hP vs hvs callee r st hR _ habn
    refine And.intro (fun h => by cases h) (fun r' hr' _ => ?_)
    cases hr'
    have hps : ∃ p, ptrsOf (callEntryStateHOLFinite s callee) = some p := by
      obtain ⟨p, hp⟩ := hp
      refine ⟨p, ?_⟩
      show ptrsOf s = _
      unfold ptrsOf gword at hp ⊢
      rw [hP.2]; exact hp
    have := hR (abn_good habn) hps habn
    exact clean_trans hP this

/-- **`node_write_ref`, all good results.** -/
theorem spec_nwr (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : NullSafe X) (hX : DomBounded X) :
    FunSpec σ X (nm "node_write_ref") (fun vs s r t => Good (some r) →
      ∀ (C D ks kp : BitVec 64) (p : Ptrs), vs = [.val (.word C), .val (.word D)] →
        ptrsOf s = some p → p.Ordered → KOK s ks kp →
        (∀ v, r = .returned v → WrPost p s ks kp C D v t) ∧ (Abn r → Clean s t)) :=
  FunSpec.mono ((ret_node_write_ref hC hA hT hNS).and (spec_nwr_abn hC hX))
    fun vs s r t ⟨h1, h2⟩ hg C D ks kp p hvs hp ho hK =>
      ⟨fun v hv => h1 v hv C D ks kp p hvs hp ho hK, h2 hg ⟨p, hp⟩⟩

/-- **`node_hash_cached`, all good results.** -/
theorem spec_nhc (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hX : DomBounded X) :
    FunSpec σ X (nm "node_hash_cached") (fun vs s r t => Good (some r) →
      ∀ (C ks kp : BitVec 64) (p : Ptrs), vs = [.val (.word C)] →
        ptrsOf s = some p → p.Ordered → KOK s ks kp →
        (∀ v, r = .returned v → AFr p s (HcW p ks kp C) t) ∧ (Abn r → Clean s t)) :=
  FunSpec.mono ((ret_node_hash_cached hC hA hT).and (spec_nhc_abn hC hX))
    fun vs s r t ⟨h1, h2⟩ hg C ks kp p hvs hp ho hK =>
      ⟨fun v hv => h1 v hv C ks kp p hvs hp ho hK, h2 hg ⟨p, hp⟩⟩

end InitECandidate.Solver.MemSafe.Trie
