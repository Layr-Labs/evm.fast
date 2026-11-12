import InitECandidate.Solver.Spec.Mpt.Leaves.BelowNodes

/-!
# `BelowSP` for the delete unwind's callees

* `belowSP_delete_ext_finish`: `_delete_ext_finish(node, seg, sl, nc)` with `node + 56 ≤ heapEnd`;
* `belowSP_collapse_branch`: `_collapse_branch(node)` with `node + 176 ≤ heapEnd`.

Both need `AlignedDom X` and `DomTop X` (for `nibbles_concat`, `BelowNodes.lean`). The only store
outside fresh heap is `_delete_ext_finish`'s `st node + 48, nc`, below `heapEnd ≤ sp`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (State InBlk WordE wordE_cw wordE_lv)

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## `HoareG` helpers for `BF` posts -/

/-- `dec` with a post that ignores locals. -/
theorem hoareG_decL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (fun t => t = setVarHOLFinite n v s) body Q) :
    HoareG σ X P (.dec n sh e body) Q :=
  hoareG_dec fun s hs hp v hv hsh => hoareG_conseq (h s hs hp v hv hsh) (fun _ _ h => h)
    fun r t _ _ hq => hQ r t _ hq

/-- `if c { br } k` where `br` never completes normally. -/
theorem hoareG_brSeq {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {br k : ProgHOL 64}
    (hbr : HoareG σ X (fun s => P s ∧ ∃ w, ev s c = some (.val (.word w)) ∧ w ≠ 0) br
      (fun r t => r ≠ none ∧ Q r t))
    (hk : HoareG σ X (fun s => P s ∧ ev s c = some (.val (.word 0))) k Q) :
    HoareG σ X P (.seq (.ite c br .skip) k) Q :=
  hoareG_seq (R := fun r t => (r = none ∧ P t ∧ ev t c = some (.val (.word 0))) ∨ (r ≠ none ∧ Q r t))
    (hoareG_ite (hoareG_conseq hbr (fun _ _ h => h) fun _ _ _ _ h => Or.inr h)
      (hoareG_skip fun t _ ⟨hp, hc⟩ => Or.inl ⟨rfl, hp, hc⟩))
    (fun _ _ _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoareG_pre hk fun _ _ h => h.elim (fun h => ⟨h.2.1, h.2.2⟩) (fun h => absurd rfl h.1))

/-- `var x = f(args); k` with a post that ignores locals. -/
theorem hoareG_decCallL {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (hret : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q)
    (habn : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee r (st : State σ),
        R vs (callEntryStateHOLFinite s callee) r st → InCtx st X → MemSafe.Abn r →
        Q (some r) (emptyLocalsHOLFinite st)) :
    HoareG σ X P (.decCall rn sh f args k) Q :=
  MemSafe.hoareG_decCall hf (fun s hs hp vs hvs callee v st hR hst hsh =>
    hoareG_conseq (hret s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      fun r t _ _ hq => hQ r t _ hq) habn

/-- A tail call to a `BelowSP` callee. -/
theorem hoareG_tailBF {P : State σ → Prop} {Pre : List (ValueHOL 64) → State σ → Prop} {f : MlS}
    {args : List (ExpHOL 64)} {p : Ptrs} {M0 : MemSafe.Mem} (hf : BelowSP σ X f Pre)
    (hP : ∀ t, P t → BF p M0 t)
    (hpre : ∀ s, P s → ∀ vs, evs s args = some vs → ∀ callee,
      Pre vs (callEntryStateHOLFinite s callee)) :
    HoareG σ X P (.call none f args) (fun r t => r ≠ none ∧ BF p M0 t) :=
  MemSafe.hoareG_tailCall hf
    (fun s _ hp vs hvs callee v st hR _ => ⟨by simp,
      bf_empty (bf_belowSP (Pre := Pre) (vs := vs) (callee := callee) (hP s hp) hR (by simp [Good])
        (hpre s hp vs hvs callee))⟩)
    fun s _ hp vs hvs callee r st hR _ habn => ⟨by simp,
      bf_empty (bf_belowSP (Pre := Pre) (vs := vs) (callee := callee) (hP s hp) hR (good_of_abn habn)
        (hpre s hp vs hvs callee))⟩

/-! ## `_delete_ext_finish` -/

def defBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "nc")) (cw 0)) (.return (cw 0)) .skip)
    (.dec (nm "ck") .one (.load .one (.op .add [lv (nm "nc"), cw 0]))
      (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 3))
          (.seq (.store (.op .add [lv (nm "node"), cw 48]) (lv (nm "nc")))
            (.return (lv (nm "node")))) .skip)
        (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 0)) (callD (nm "mpt_fail") [cw 2]) .skip)
          (.decCall (nm "cat") .one (nm "nibbles_concat") [lv (nm "seg"), lv (nm "sl"),
              .load .one (.op .add [lv (nm "nc"), cw 32]), .load .one (.op .add [lv (nm "nc"), cw 40])]
            (.dec (nm "cl") .one (.op .add [lv (nm "sl"), .load .one (.op .add [lv (nm "nc"), cw 40])])
              (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 2))
                  (.call none (nm "node_new_ext") [lv (nm "cat"), lv (nm "cl"),
                    .load .one (.op .add [lv (nm "nc"), cw 48])]) .skip)
                (.call none (nm "node_new_leaf") [lv (nm "cat"), lv (nm "cl"),
                  .load .one (.op .add [lv (nm "nc"), cw 48]),
                  .load .one (.op .add [lv (nm "nc"), cw 56])])))))))

def params_def : List (MlS × ShapeHOL) :=
  [(nm "node", .one), (nm "seg", .one), (nm "sl", .one), (nm "nc", .one)]

theorem entry_delete_ext_finish : fnEntry Guest.Software.guestFn__delete_ext_finish =
    (nm "_delete_ext_finish", params_def, defBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_delete_ext_finish :
    guestCode (nm "_delete_ext_finish") = some (params_def, defBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 277) (by decide)) ⟨_, rfl⟩
    entry_delete_ext_finish

theorem belowSP_delete_ext_finish (hC : X.code.lookup = guestCode)
    (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X) :
    BelowSP σ X (nm "_delete_ext_finish") (fun vs _ => arg0 vs + 56 ≤ heapEnd) := by
  refine belowSP_of_hoareG fun vs body callee rs hl s0 _ hloc p hp hord hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, Nd, Sg, Sl, Nc, rfl, hsA, -, -, hsD, hlA, -, -, hlD⟩ :=
    Dec.lookupCode_four' code_delete_ext_finish (by decide) (by decide) (by decide) (by decide)
      (by decide) (by decide) hl
  obtain ⟨N0, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨NC, rfl⟩ := val_of_shapeEq_one hsD
  simp only [arg0] at hpre
  have hn0 : s0.locals.lookup (nm "node") = some (.val (.word N0)) := by rw [hloc]; exact hlA
  have hnc0 : s0.locals.lookup (nm "nc") = some (.val (.word NC)) := by rw [hloc]; exact hlD
  have hsp : heapEnd ≤ p.sp := by have := hord.2.2.1; have := hord.2.2.2.1; omega
  let P0 : State σ → Prop := fun t => t.locals.lookup (nm "node") = some (.val (.word N0)) ∧
    t.locals.lookup (nm "nc") = some (.val (.word NC)) ∧ BF p s0.memory t
  refine hoareG_pre (P := P0) ?_ fun t _ ht => by subst ht; exact ⟨hn0, hnc0, bf_refl hp hord⟩
  unfold defBody
  refine hoareG_brSeq (MemSafe.hoareG_return fun t _ ⟨⟨_, _, hbf⟩, _⟩ _ _ => ⟨by simp, bf_empty hbf⟩) ?_
  refine hoareG_decL (fun _ _ _ h => h) fun s _ ⟨⟨hn, hnc, hbf⟩, _⟩ v _ _ => ?_
  refine hoareG_pre (P := P0) ?_ fun t _ ht => by
    subst ht
    exact ⟨by rw [lk_set_ne _ _ (by decide)]; exact hn, by rw [lk_set_ne _ _ (by decide)]; exact hnc,
      bf_locals _ hbf⟩
  -- `ck == 3`: `st node + 48, nc; return node`
  refine hoareG_brSeq ?_ ?_
  · refine hoareG_seq (R := fun r t => r = none ∧ BF p s0.memory t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr)
      (MemSafe.hoareG_return fun t _ ⟨_, hbf⟩ _ _ => ⟨by simp, bf_empty hbf⟩)
    refine MemSafe.hoareG_store fun t _ ⟨⟨hn, hnc, hbf⟩, _⟩ w x mem hw hx hmem => ⟨rfl, ?_⟩
    rw [ev_add_cw hn 48] at hw
    cases hw
    rw [ev_lv, hnc] at hx
    cases hx
    obtain ⟨-, rfl⟩ := Spec.Inv.store_word_dom hmem
    refine bf_mem hbf rfl fun b hb => ?_
    by_cases e : b = N0 + BitVec.ofNat 64 48
    · subst e
      rw [Dec.toNat_add_lt (by simp only [heapEnd] at hpre; omega)]
      omega
    · exact absurd (Spec.Inv.upd_ne e) hb
  refine hoareG_pre (P := P0) ?_ fun t _ h => h.1
  -- `ck == 0`: `mpt_fail`
  refine hoareG_failSeq hC (fun t h => h.2.2) ?_
  refine hoareG_pre (P := P0) ?_ fun t _ h => h.1
  -- `cat = nibbles_concat(...)`
  refine MemSafe.hoareG_decCall (belowSP_nibbles_concat hC hA hT)
    (fun s _ ⟨hn, hnc, hbf⟩ vs _ callee' v st hR _ _ => ?_)
    fun s _ ⟨_, _, hbf⟩ vs _ callee' r st hR _ habn =>
      bf_empty (bf_belowSP (Pre := fun _ _ => True) (vs := vs) (callee := callee') hbf hR
        (good_of_abn habn) trivial)
  have hbf' := bf_belowSP (Pre := fun _ _ => True) (vs := vs) (callee := callee') hbf hR
    (by simp [Good]) trivial
  refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun t _ ht => by subst ht; exact hbf'
  refine hoareG_decL (fun _ _ _ h => h) fun s1 _ hbf1 v1 _ _ => ?_
  refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun t _ ht => by subst ht; exact hbf1
  refine hoareG_brSeq ?_ ?_
  · exact hoareG_pre (hoareG_tailBF (belowSP_node_new_ext hC) (fun _ h => h)
      fun _ _ _ _ _ => trivial) fun _ _ h => h.1
  · exact hoareG_conseq (hoareG_tailBF (belowSP_node_new_leaf hC) (fun _ h => h)
      fun _ _ _ _ _ => trivial) (fun _ _ h => h.1) fun _ _ _ _ h => h.2

/-! ## `_collapse_branch` -/

def cbLoopBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.load .one (.op .add [lv (nm "node"), cw 32,
        .panop .mul [lv (nm "i"), cw 8]])) (cw 0))
      (.seq (.assign .local (nm "count") (.op .add [lv (nm "count"), cw 1]))
        (.assign .local (nm "idx") (lv (nm "i")))) .skip)
    (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))

def cbExt : ProgHOL 64 :=
  .dec (nm "child") .one (.load .one (.op .add [lv (nm "node"), cw 32,
      .panop .mul [lv (nm "idx"), cw 8]]))
    (.dec (nm "ck") .one (.load .one (.op .add [lv (nm "child"), cw 0]))
      (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 0)) (callD (nm "mpt_fail") [cw 2]) .skip)
        (.decCall (nm "nib") .one (nm "alloc") [cw 8]
          (.seq (.storeByte (lv (nm "nib")) (lv (nm "idx")))
            (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 3))
                (.call none (nm "node_new_ext") [lv (nm "nib"), cw 1, lv (nm "child")]) .skip)
              (.decCall (nm "cat") .one (nm "nibbles_concat") [lv (nm "nib"), cw 1,
                  .load .one (.op .add [lv (nm "child"), cw 32]),
                  .load .one (.op .add [lv (nm "child"), cw 40])]
                (.seq (.ite (.cmp .equal (lv (nm "ck")) (cw 1))
                    (.call none (nm "node_new_leaf") [lv (nm "cat"),
                      .op .add [cw 1, .load .one (.op .add [lv (nm "child"), cw 40])],
                      .load .one (.op .add [lv (nm "child"), cw 48]),
                      .load .one (.op .add [lv (nm "child"), cw 56])]) .skip)
                  (.call none (nm "node_new_ext") [lv (nm "cat"),
                    .op .add [cw 1, .load .one (.op .add [lv (nm "child"), cw 40])],
                    .load .one (.op .add [lv (nm "child"), cw 48])]))))))))

def cbTail : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (lv (nm "count")) (cw 0))
      (.seq (.ite (.cmp .equal (lv (nm "vl")) (cw 0)) (callD (nm "mpt_fail") [cw 12]) .skip)
        (.call none (nm "node_new_leaf") [lv (nm "node"), cw 0,
          .load .one (.op .add [lv (nm "node"), cw 160]), lv (nm "vl")])) .skip)
    (.seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "count")) (cw 1)),
          .cmp .notEqual (cw 0) (.cmp .equal (lv (nm "vl")) (cw 0))]) cbExt .skip)
      (.return (lv (nm "node"))))

def cbBody : ProgHOL 64 :=
  .dec (nm "count") .one (cw 0) (.dec (nm "idx") .one (cw 0) (.dec (nm "i") .one (cw 0)
    (.seq (.while (.cmp .less (lv (nm "i")) (cw 16)) cbLoopBody)
      (.dec (nm "vl") .one (.load .one (.op .add [lv (nm "node"), cw 168])) cbTail))))

theorem entry_collapse_branch : fnEntry Guest.Software.guestFn__collapse_branch =
    (nm "_collapse_branch", [(nm "node", .one)], cbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_collapse_branch :
    guestCode (nm "_collapse_branch") = some ([(nm "node", .one)], cbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 276) (by decide)) ⟨_, rfl⟩
    entry_collapse_branch

/-- `if c { mpt_fail(k); } k'` with a post that accepts every abnormal `BF` state. -/
theorem hoareG_failSeqQ (hC : X.code.lookup = guestCode) {P : State σ → Prop} {p : Ptrs}
    {M0 : MemSafe.Mem} {Q : Option (PanSemResultExact 64) → State σ → Prop} {c : ExpHOL 64}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    (hQ : ∀ r (t : State σ), r ≠ none → BF p M0 t → Q r t) (hP : ∀ t, P t → BF p M0 t)
    (hk : HoareG σ X (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    HoareG σ X P (.seq (.ite c (.call (some (none, none)) (nm "mpt_fail") args) .skip) k) Q := by
  refine hoareG_seq (R := fun r t => (r ≠ none ∧ BF p M0 t) ∨
      (r = none ∧ P t ∧ ev t c = some (.val (.word 0)))) ?_
    (fun r t _ hr _ h => h.elim (fun h => hQ r t h.1 h.2) fun h => absurd h.1 hr)
    (hoareG_pre hk fun _ _ h => h.elim (fun h => absurd rfl h.1) fun h => h.2)
  refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨hp, hc⟩ => Or.inr ⟨rfl, hp, hc⟩)
  refine MemSafe.hoareG_callD (funSpec_mpt_fail_keep hC)
    (fun s _ ⟨_, _⟩ _ _ _ v _ ⟨_, _, hr⟩ _ => absurd rfl (hr v))
    fun s _ ⟨hp, _⟩ _ _ _ r st ⟨hm, hpt, _⟩ _ _ => Or.inl ⟨by simp, bf_keep (hP s hp) hm hpt⟩

theorem cb_ext (hC : X.code.lookup = guestCode) (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X)
    {p : Ptrs} {M0 : MemSafe.Mem} (hord : p.Ordered) :
    HoareG σ X (fun t => BF p M0 t) cbExt (fun r t => r ≠ none ∧ BF p M0 t) := by
  have hrel : ∀ (r : Option (PanSemResultExact 64)) (t : State σ), r ≠ none → BF p M0 t →
      r ≠ none ∧ BF p M0 t := fun _ _ h1 h2 => ⟨h1, h2⟩
  have hsp : heapEnd ≤ p.sp := by have := hord.2.2.1; have := hord.2.2.2.1; omega
  unfold cbExt
  refine hoareG_decL (fun _ _ _ h => h) fun s _ hbf _ _ _ => ?_
  refine hoareG_pre (P := fun t => BF p M0 t) ?_ fun t _ ht => by subst ht; exact hbf
  refine hoareG_decL (fun _ _ _ h => h) fun s _ hbf _ _ _ => ?_
  refine hoareG_pre (P := fun t => BF p M0 t) ?_ fun t _ ht => by subst ht; exact hbf
  refine hoareG_failSeqQ hC hrel (fun _ h => h) ?_
  refine hoareG_decCallL (MemSafe.allocSpec_alloc (σ := σ) hC) (fun _ _ _ h => h)
    (fun s _ ⟨hbf, _⟩ avs havs callee' v st hR _ _ => ?_)
    fun s _ ⟨hbf, _⟩ avs havs callee' r st hR _ habn => ?_
  swap
  · rw [evs_cons (ev_cw _ 8) evs_nil] at havs
    simp only [Option.some.injEq] at havs
    subst havs
    obtain ⟨q, hq, hoq, -, -⟩ := id hbf
    obtain ⟨hm, hgl, p', hp', ho', -, -⟩ := hR (good_of_abn habn) _ q rfl hq hoq
    exact ⟨by simp, bf_empty (bf_alloc hbf hq hm (hgl _ (by decide)) hp' ho')⟩
  rw [evs_cons (ev_cw _ 8) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨q, hq, hoq, hsq, -⟩ := id hbf
  obtain ⟨hm, hgl, p', hp', ho', hmono, hv⟩ := hR (by simp [Good]) _ q rfl hq hoq
  obtain ⟨Q, rfl, hQ8, ⟨-, hQ2⟩, -⟩ := hv _ rfl
  simp only [BitVec.toNat_ofNat] at hQ2
  have hbf1 : BF p M0 st := bf_alloc hbf hq hm (hgl _ (by decide)) hp' ho'
  have hQe : Q.toNat < p.sp := by have := ho'.2.1; omega
  refine hoareG_pre (P := fun t => t.locals.lookup (nm "nib") = some (.val (.word Q)) ∧ BF p M0 t) ?_
    fun t _ ht => by subst ht; exact ⟨lk_set_self _ _ _, bf_locals _ (bf_locals _ hbf1)⟩
  refine hoareG_seq (R := fun r t => r = none ∧ BF p M0 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine MemSafe.hoareG_storeByte fun t _ ⟨hnib, hbf2⟩ w x mem hw _ hst => ⟨rfl, ?_⟩
    rw [ev_lv, hnib] at hw
    cases hw
    refine bf_mem hbf2 rfl fun b hb => ?_
    have e := MemSafe.Helpers.storeByte_mod hst b
    have hbe : b = panByteAlignHOL Q := by by_contra hne; exact hb (e hne)
    rw [Spec.Inv.align_self hQ8] at hbe
    subst hbe
    exact hQe
  refine hoareG_pre (P := fun t => BF p M0 t) ?_ fun _ _ h => h.2
  refine hoareG_brSeq (hoareG_conseq (hoareG_tailBF (belowSP_node_new_ext hC) (fun _ h => h)
    fun _ _ _ _ _ => trivial) (fun _ _ h => h.1) fun _ _ _ _ h => ⟨h.1, h⟩) ?_
  refine hoareG_pre (P := fun t => BF p M0 t) ?_ fun _ _ h => h.1
  refine hoareG_decCallL (belowSP_nibbles_concat hC hA hT) (fun _ _ _ h => h)
    (fun s _ hbf vs _ callee' v st hR _ _ => ?_)
    fun s _ hbf vs _ callee' r st hR _ habn =>
      ⟨by simp, bf_empty (bf_belowSP (Pre := fun _ _ => True) (vs := vs) (callee := callee') hbf hR
        (good_of_abn habn) trivial)⟩
  have hbf' := bf_belowSP (Pre := fun _ _ => True) (vs := vs) (callee := callee') hbf hR
    (by simp [Good]) trivial
  refine hoareG_pre (P := fun t => BF p M0 t) ?_ fun t _ ht => by subst ht; exact hbf'
  refine hoareG_brSeq (hoareG_conseq (hoareG_tailBF (belowSP_node_new_leaf hC) (fun _ h => h)
    fun _ _ _ _ _ => trivial) (fun _ _ h => h.1) fun _ _ _ _ h => ⟨h.1, h⟩) ?_
  exact hoareG_conseq (hoareG_tailBF (belowSP_node_new_ext hC) (fun _ h => h)
    fun _ _ _ _ _ => trivial) (fun _ _ h => h.1) fun _ _ _ _ h => h

theorem belowSP_collapse_branch (hC : X.code.lookup = guestCode)
    (hA : MemSafe.Helpers.AlignedDom X) (hT : DomTop X) :
    BelowSP σ X (nm "_collapse_branch") (fun vs _ => arg0 vs + 176 ≤ heapEnd) := by
  refine belowSP_of_hoareG fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_one code_collapse_branch hl
  have hrel : ∀ (r : Option (PanSemResultExact 64)) (t : State σ), r ≠ none → BF p s0.memory t →
      r ≠ none ∧ BF p s0.memory t := fun _ _ h1 h2 => ⟨h1, h2⟩
  unfold cbBody
  refine hoareG_decL (fun _ _ _ h => h) fun s1 _ hs1 _ _ _ => ?_
  subst s1
  refine hoareG_decL (fun _ _ _ h => h) fun s2 _ hs2 _ _ _ => ?_
  subst hs2
  refine hoareG_decL (fun _ _ _ h => h) fun s3 _ hs3 _ _ _ => ?_
  subst hs3
  refine hoareG_seq (R := fun r t => r = none ∧ BF p s0.memory t) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun t _ ht => by
      subst ht; exact bf_locals _ (bf_locals _ (bf_locals _ (bf_refl hp hord)))
    refine MemSafe.hoareG_while (fun _ h => h) ?_ fun _ _ h _ => ⟨rfl, h⟩
    unfold cbLoopBody
    refine hoareG_seq (R := fun r t => r = none ∧ BF p s0.memory t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoareG_ite ?_ (hoareG_skip fun t _ ⟨⟨h, _⟩, _⟩ => ⟨rfl, h⟩)
      exact hoareG_seq (R := fun r t => r = none ∧ BF p s0.memory t)
        (hoareG_assign fun t _ ⟨⟨h, _⟩, _⟩ _ _ _ => ⟨rfl, bf_locals _ h⟩)
        (fun _ _ _ hr _ h => absurd h.1 hr)
        (hoareG_assign fun t _ ⟨_, h⟩ _ _ _ => ⟨rfl, bf_locals _ h⟩)
    · refine hoareG_assign fun t _ ⟨_, h⟩ _ _ _ => ⟨fun _ => bf_locals _ h, (fun h => nomatch h),
        (fun h => nomatch h), (fun _ h => nomatch h)⟩
  refine hoareG_decL (fun _ _ _ h => h) fun s4 _ ⟨_, hbf4⟩ _ _ _ => ?_
  refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun t _ ht => by
    subst ht; exact bf_locals _ hbf4
  unfold cbTail
  refine hoareG_brSeq ?_ ?_
  · refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun _ _ h => h.1
    exact hoareG_failSeqQ hC hrel (fun _ h => h) (hoareG_pre (hoareG_tailBF
      (belowSP_node_new_leaf hC) (fun _ h => h) fun _ _ _ _ _ => trivial) fun _ _ h => h.1)
  refine hoareG_pre (P := fun t => BF p s0.memory t) ?_ fun _ _ h => h.1
  refine hoareG_brSeq (hoareG_pre (cb_ext hC hA hT hord) fun _ _ h => h.1) ?_
  exact MemSafe.hoareG_return fun t _ ⟨h, _⟩ _ _ => bf_empty h

end InitECandidate.Solver.Spec.Mpt.Leaves
