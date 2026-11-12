import InitECandidate.Solver.MemSafe.Trie.Alloc

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `_node_rlp_begin`: the abnormal results

The only abnormal result is a trap in `alloc` (the other callees are escape-free): memory is as at the
entry and the allocator moved monotonically.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

/-- Memory as at `s0` and the allocator moved. -/
def CP (s0 t : State σ) : Prop := t.memory = s0.memory ∧ PMove s0 t

/-- Abnormal results are `CP`. -/
def AP (s0 : State σ) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ r', r = some r' → Abn r' → CP s0 t

theorem cp_refl {s : State σ} {p : Ptrs} (hp : ptrsOf s = some p) (ho : p.Ordered) : CP s s :=
  ⟨rfl, pmove_refl hp ho⟩

theorem cp_trans {s t u : State σ} (h1 : CP s t) (h2 : CP t u) : CP s u :=
  ⟨h2.1.trans h1.1, pmove_trans h1.2 h2.2⟩

theorem ap_na {s0 : State σ} {r : Option (PanSemResultExact 64)} {t : State σ}
    (h : NoAbnQ r t) : AP s0 r t := fun r' hr hab => absurd hab (h r' hr)

theorem spec_begin_abn (hC : X.code.lookup = guestCode) (hX : DomBounded X) :
    FunSpec σ X (nm "_node_rlp_begin") (fun _ s r t => Good (some r) → (∃ p, ptrsOf s = some p ∧ p.Ordered) →
      Abn r → CP s t) := by
  have ef : ∀ f, SourceCost.Shards.finalState.2.1.contains f = true →
      FunSpec σ X f (fun _ _ r _ => ¬ Abn r) := fun f h =>
    Rec.noAbn_of_ef (Rec.ef_of_table hC hX h)
  have hnlc := ef (nm "nibble_list_to_compact") (by decide_cbv)
  have hbel := ef (nm "rlp_bytes_encoded_len") (by decide_cbv)
  have hvel := ef (nm "rlp_value_encoded_len") (by decide_cbv)
  refine funSpecG_of_hoareG (R := fun _ s r t => (∃ p, ptrsOf s = some p ∧ p.Ordered) → Abn r → CP s t) ?_
  intro vs body callee rs hl s0 hs hloc
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_node_rlp_begin (by decide) hl
  by_cases hp : ∃ p, ptrsOf s0 = some p ∧ p.Ordered
  swap
  · exact fun s hs hs0 hg r' hr' hex _ => by subst hs0; exact absurd hex hp
  obtain ⟨p, hps, hpo⟩ := hp
  have hna : NA (σ := σ) (X := X) (.dec (nm "isl") .one (cw 0)
        (.seq (.ite (.cmp .equal (lv (nm "k")) (cw 1)) (.assign .local (nm "isl") (cw 1)) .skip)
          (.seq (.call (some (some (.local, nm "clen"), none)) (nm "nibble_list_to_compact")
              [.load .one (.op .add [lv (nm "node"), cw 32]), lv (nm "nlen"), lv (nm "isl"),
                lv (nm "cbuf")])
            (.decCall (nm "el") .one (nm "rlp_bytes_encoded_len") [.loadByte (lv (nm "cbuf")),
                lv (nm "clen")]
              (.seq (.assign .local (nm "payload") (lv (nm "el")))
                (.ite (.cmp .equal (lv (nm "k")) (cw 1))
                  (.decCall (nm "vl") .one (nm "rlp_value_encoded_len")
                    [.load .one (.op .add [lv (nm "node"), cw 48]),
                      .load .one (.op .add [lv (nm "node"), cw 56])]
                    (.assign .local (nm "payload") (.op .add [lv (nm "payload"), lv (nm "vl")])))
                  .skip)))))) :=
    na_dec (na_seq (na_ite na_assign na_skip) (na_seq (na_callA hnlc)
      (na_decCall hbel (na_seq na_assign (na_ite (na_decCall hvel na_assign) na_skip)))))
  have hstores : NA (σ := σ) (X := X) (.seq (.store (.op .add [lv (nm "fr"), cw 24]) (lv (nm "cbuf")))
          (.seq (.store (.op .add [lv (nm "fr"), cw 32]) (lv (nm "clen")))
            (.seq (.store (.op .add [lv (nm "fr"), cw 40]) (lv (nm "payload")))
              (.return (cw 0))))) :=
    na_seq na_store (na_seq na_store (na_seq na_store na_return))
  unfold nrbBody nrbInner
  refine hoareG_conseq (P := CP s0) (Q := AP s0) ?_
    (fun t _ ht => by subst ht; exact cp_refl hps hpo)
    (fun r t _ _ h r' hr' _ habn => h r' hr' habn)
  have hdec : ∀ (x : MlS) (e : ExpHOL 64) (b : ProgHOL 64),
      HoareG σ X (CP s0) b (AP s0) → HoareG σ X (CP s0) (.dec x .one e b) (AP s0) := by
    intro x e b hb
    refine hoareG_dec fun s hs hP v hv hsh => ?_
    exact hoareG_conseq hb (fun t _ ht => by subst ht; exact hP) (fun _ _ _ _ h => h)
  refine hdec _ _ _ (hdec _ _ _ (hdec _ _ _ (hdec _ _ _ ?_)))
  refine hoareG_seq (R := AP s0) ?_ (fun r t _ _ _ h => h)
    (hoareG_pre (hoareG_conseq hstores (fun _ _ _ => trivial) (fun _ _ _ _ h => ap_na h))
      (fun _ _ _ => trivial))
  refine hoareG_ite ?_ (hoareG_skip fun t _ _ r' hr' => by cases hr')
  refine hoareG_pre (P := CP s0) ?_ (fun _ _ h => h.1)
  refine hdec _ _ _ ?_
  refine hoareG_seq (R := fun r t => (r = none → CP s0 t) ∧ AP s0 r t) ?_
    (fun r t _ _ _ h => h.2) ?_
  · have key : ∀ (s st : State σ) (callee : HolFiniteMapExact MlS (ValueHOL 64))
        (vs : List (ValueHOL 64)) (r : PanSemResultExact 64), CP s0 s →
        AllocR σ .heap vs (callEntryStateHOLFinite s callee) r st → Good (some r) → CP s0 st := by
      intro s st callee vs r hP hR hg
      obtain ⟨p0, p1, h0, h1, hm1, ho1, hg1⟩ := hP.2
      obtain ⟨hmem, hpmv, -⟩ := hR hg p1 h1 ho1
      exact ⟨hmem.trans hP.1, pmove_trans hP.2 (pmove_congr_left rfl hpmv)⟩
    refine hoareG_callA (allocP_heap hC) ?_ ?_
    · intro s hs hP vs hvs callee v st hR _ hval
      exact And.intro (fun _ => key s st callee vs _ hP hR (by simp [Good])) (fun r' hr' => by cases hr')
    · intro s hs hP vs hvs callee r st hR _ habn
      exact And.intro (fun h => by cases h) (fun r' hr' _ => by
        cases hr'; exact key s st callee vs _ hP hR (abn_good habn))
  · exact hoareG_pre (hoareG_conseq hna (fun _ _ _ => trivial) (fun _ _ _ _ h => ap_na h))
      (fun _ _ _ => trivial)

end InitECandidate.Solver.MemSafe.Trie
