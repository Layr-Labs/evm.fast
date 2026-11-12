import InitECandidate.Solver.Spec.Mpt.Leaves.Common
import InitECandidate.Solver.Spec.FootprintGuest
import InitECandidate.Solver.Spec.CodeWalk
import InitECandidate.Solver.Spec.CodeRlp
import InitECandidate.Solver.Spec.Rlp

/-!
# The RLP validator writes only released scratch

Fresh footprints (`FreshFoot … (fun _ _ => True) (fun _ _ _ _ _ => True)`, i.e. the frame `FF`)
of the RLP list validator chain:

* `freshFoot_rlp_validate_items_body`: the explicit-stack walker stores only into the fresh
  24-byte records `scratch_alloc` returns (`[fp, sp)` cells, unallocated at entry);
* `freshFoot_rlp_validate_items`: `scratch_mark`, the walker, `scratch_release(mark)`: same
  footprint, and `scratch_ptr` is back at its entry value;
* `freshFoot_rlp_item_total`, `freshFoot_rlp_list_count`.

`rlp_item_header` and `rlp_read_length` write neither memory nor the allocator globals
(`hdr_keep`: the `FootprintGuest` checkers, plus `heap_ptr` here).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-! ## The header functions keep memory and pointers -/

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem hdrFns_gw_heap : hdrFns.all (fun e => gwFreeB (nm "heap_ptr") hdrNames e.2.2.1) = true := by
  decide_cbv

theorem hdr_gwClosed_heap : GwClosed (nm "heap_ptr") hdrNames guestCode :=
  closed_of_entries (chk := gwFreeB (nm "heap_ptr")) hdrFns_valid hdrFns_gw_heap

theorem rlp_read_length_mem : hdrNames.contains (nm "rlp_read_length") = true := by decide_cbv

theorem ptrsOf_of_gl {s t : State σ}
    (e1 : t.globals.lookup (nm "heap_ptr") = s.globals.lookup (nm "heap_ptr"))
    (e2 : t.globals.lookup (nm "frame_mem_ptr") = s.globals.lookup (nm "frame_mem_ptr"))
    (e3 : t.globals.lookup (nm "scratch_ptr") = s.globals.lookup (nm "scratch_ptr")) :
    ptrsOf t = ptrsOf s := by
  unfold ptrsOf MemSafe.gword MemSafe.gHeap MemSafe.gFrame MemSafe.gScratch
  rw [e1, e2, e3]

theorem hdr_keep (hC : X.code.lookup = guestCode) {f : MlS} (hf : hdrNames.contains f = true) :
    FunSpec σ X f (fun _ s _ t => t.memory = s.memory ∧ ptrsOf t = ptrsOf s) := by
  have h0 := funSpec_mw (σ := σ) (X := X) (by rw [hC]; exact hdr_mwClosed) hf
  have h1 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact hdr_gwClosed_heap) hf
  have h2 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact hdr_gwClosed_frame) hf
  have h3 := funSpec_gw (σ := σ) (X := X) (by rw [hC]; exact hdr_gwClosed_scratch) hf
  exact FunSpec.mono (((h0.and h1).and h2).and h3) fun _ _ _ _ ⟨⟨⟨m, e1⟩, e2⟩, e3⟩ =>
    ⟨m, ptrsOf_of_gl e1 e2 e3⟩

theorem ptrsOf_mk {t : State σ} {a b c : BitVec 64}
    (ha : t.globals.lookup MemSafe.gHeap = some (.val (.word a)))
    (hb : t.globals.lookup MemSafe.gFrame = some (.val (.word b)))
    (hc : t.globals.lookup MemSafe.gScratch = some (.val (.word c))) :
    ptrsOf t = some ⟨a.toNat, b.toNat, c.toNat⟩ := by
  unfold ptrsOf MemSafe.gword
  rw [ha, hb, hc]

theorem ff_refl' {p : Ptrs} {M0 : MemSafe.Mem} {t : State σ} (hp : ptrsOf t = some p)
    (ho : p.Ordered) (hm : t.memory = M0) : FF p M0 t := by
  subst hm; exact ff_refl hp ho

theorem ff_keep {p : Ptrs} {M0 : MemSafe.Mem} {s t : State σ} (h : FF p M0 s)
    (hm : t.memory = s.memory) (hp : ptrsOf t = ptrsOf s) : FF p M0 t :=
  ff_mem h hp fun a ha => absurd (by rw [hm]) ha

/-! ## Sequencing helpers -/

theorem hoare_seqN {P R : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (h1 : Hoare σ X P a (fun r t => r = none ∧ R t)) (h2 : Hoare σ X R b Q) :
    Hoare σ X P (.seq a b) Q :=
  hoare_seq h1 (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre h2 fun _ _ h => h.2)

/-- `dec` with a post stable under restoring `n`. -/
theorem hoare_decR {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {n : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (n, o) })
    (h : ∀ s, InCtx s X → P s → ∀ v, ev s e = some v → shapeEqHOL sh (shapeOfHOLExact v) = true →
      Hoare σ X (fun t => t = setVarHOLFinite n v s) body Q) :
    Hoare σ X P (.dec n sh e body) Q :=
  hoare_dec fun s hs hp v hv hsh => hoare_conseq (h s hs hp v hv hsh) (fun _ _ h => h)
    fun r t _ _ hq => hQ r t _ hq

/-- `var x = f(args); k` with a post stable under restoring `rn`. -/
theorem hoare_decCallR {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ X f R)
    (hQ : ∀ r (t : State σ) o, Q r t → Q r { t with locals := t.locals.resVarEq (rn, o) })
    (h : ∀ s, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
        R vs (callEntryStateHOLFinite s callee) (.returned v) st → InCtx st X →
        shapeEqHOL (shapeOfHOLExact v) sh = true →
        Hoare σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k Q) :
    Hoare σ X P (.decCall rn sh f args k) Q :=
  hoare_decCallS hf fun s hs hp vs hvs callee v st hR hst hsh =>
    hoare_conseq (h s hs hp vs hvs callee v st hR hst hsh) (fun _ _ h => h)
      fun r t _ _ hq => hQ r t _ hq

/-! ## `_rlp_validate_items_body` -/

/-- The walker's word locals `top`, `end`. -/
def VL (m : HolFiniteMapExact MlS (ValueHOL 64)) : Prop :=
  (∃ T : BitVec 64, m.lookup (nm "top") = some (.val (.word T))) ∧
    ∃ E : BitVec 64, m.lookup (nm "end") = some (.val (.word E))

theorem vl_upd {m : HolFiniteMapExact MlS (ValueHOL 64)} (h : VL m) {x : MlS} (h1 : x ≠ nm "top")
    (h2 : x ≠ nm "end") (v : ValueHOL 64) : VL (m.update (x, v)) := by
  obtain ⟨⟨T, hT⟩, E, hE⟩ := h
  exact ⟨⟨T, by rw [lookup_update_ne _ _ h1]; exact hT⟩, E, by rw [lookup_update_ne _ _ h2]; exact hE⟩

theorem vl_res {m : HolFiniteMapExact MlS (ValueHOL 64)} (h : VL m) {x : MlS} (h1 : x ≠ nm "top")
    (h2 : x ≠ nm "end") (o : Option (ValueHOL 64)) : VL (m.resVarEq (x, o)) := by
  obtain ⟨⟨T, hT⟩, E, hE⟩ := h
  exact ⟨⟨T, by rw [lookup_resVarEq_ne _ _ h1]; exact hT⟩, E,
    by rw [lookup_resVarEq_ne _ _ h2]; exact hE⟩

/-- The walker's loop-body post. -/
def VP (p : Ptrs) (M0 : MemSafe.Mem) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ VL t.locals ∧ FF p M0 t

theorem vp_res {p : Ptrs} {M0 : MemSafe.Mem} {x : MlS} (h1 : x ≠ nm "top") (h2 : x ≠ nm "end")
    (r : Option (PanSemResultExact 64)) (t : State σ) (o : Option (ValueHOL 64))
    (h : VP p M0 r t) : VP p M0 r { t with locals := t.locals.resVarEq (x, o) } :=
  ⟨h.1, vl_res h.2.1 h1 h2 o, h.2.2⟩

/-- An assignment to a local other than `top`, `end`. -/
theorem vp_assign {p : Ptrs} {M0 : MemSafe.Mem} {x : MlS} {e : ExpHOL 64} (h1 : x ≠ nm "top")
    (h2 : x ≠ nm "end") :
    Hoare σ X (fun t => VL t.locals ∧ FF p M0 t) (.assign .local x e) (VP p M0) :=
  hoare_assign fun _ _ ⟨hv, hf⟩ v _ _ => ⟨rfl, vl_upd hv h1 h2 v, hf⟩

theorem rv_push {p : Ptrs} {M0 : MemSafe.Mem} {q Af : BitVec 64}
    (hq : q.toNat + 24 ≤ scratchEnd)
    (hfree : ∀ a : Nat, q.toNat ≤ a → a < q.toNat + 24 → ¬ p.Allocated a) :
    Hoare σ X (fun t => (VL t.locals ∧ t.locals.lookup (nm "rec") = some (.val (.word q)) ∧
        t.locals.lookup (nm "after") = some (.val (.word Af))) ∧ FF p M0 t) rvPush (VP p M0) := by
  have hse : scratchEnd < 2 ^ 64 := by decide
  have ad : ∀ k : Nat, k < 24 → (q + BitVec.ofNat 64 k).toNat = q.toNat + k := fun k hk => by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega), Nat.mod_eq_of_lt (by omega)]
  unfold rvPush
  let Lq : HolFiniteMapExact MlS (ValueHOL 64) → Prop := fun m => VL m ∧
    m.lookup (nm "rec") = some (.val (.word q)) ∧ m.lookup (nm "after") = some (.val (.word Af))
  refine hoare_seqN (hoare_store_ff (L := Lq) fun t ⟨_, hr, ha⟩ => ⟨q, Af, ev_lv' hr, ev_lv' ha,
    hfree _ le_rfl (by omega)⟩) ?_
  refine hoare_seqN (hoare_store_ff (L := Lq) fun t ⟨⟨_, E, hE⟩, hr, _⟩ => ⟨q + BitVec.ofNat 64 8, E,
    ev_add2 (ev_lv' hr) (ev_cw _ 8), ev_lv' hE, hfree _ (by rw [ad 8 (by omega)]; omega)
      (by rw [ad 8 (by omega)]; omega)⟩) ?_
  refine hoare_seqN (hoare_store_ff (L := Lq) fun t ⟨⟨⟨T, hT⟩, _⟩, hr, _⟩ => ⟨q + BitVec.ofNat 64 16, T,
    ev_add2 (ev_lv' hr) (ev_cw _ 16), ev_lv' hT, hfree _ (by rw [ad 16 (by omega)]; omega)
      (by rw [ad 16 (by omega)]; omega)⟩) ?_
  refine hoare_seqN (R := fun t => (VL t.locals ∧ t.locals.lookup (nm "after") =
      some (.val (.word Af))) ∧ FF p M0 t)
    (hoare_assign fun t _ ⟨⟨⟨_, E, hE⟩, hr, ha⟩, hf⟩ v hv _ => ?_) ?_
  · rw [ev_lv, hr] at hv
    cases hv
    refine ⟨rfl, ⟨⟨⟨q, lk_set_self _ _ _⟩, E, ?_⟩, ?_⟩, hf⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hE
    · rw [lk_set_ne _ _ (by decide)]; exact ha
  refine hoare_seqN (R := fun t => (VL t.locals ∧ t.locals.lookup (nm "after") =
      some (.val (.word Af))) ∧ FF p M0 t)
    (hoare_assign fun t _ ⟨⟨hv, ha⟩, hf⟩ v _ _ => ⟨rfl, ⟨vl_upd hv (by decide) (by decide) v, by
      rw [lk_set_ne _ _ (by decide)]; exact ha⟩, hf⟩) ?_
  refine hoare_assign fun t _ ⟨⟨⟨⟨T, hT⟩, _⟩, ha⟩, hf⟩ v hv _ => ?_
  rw [ev_lv, ha] at hv
  cases hv
  exact ⟨rfl, ⟨⟨T, by rw [lk_set_ne _ _ (by decide)]; exact hT⟩, Af, lk_set_self _ _ _⟩, hf⟩

theorem rv_item (hC : X.code.lookup = guestCode) {p : Ptrs} {M0 : MemSafe.Mem} :
    Hoare σ X (fun t => VL t.locals ∧ FF p M0 t) rvItem (VP p M0) := by
  unfold rvItem
  refine hoare_decCallR (hdr_keep hC rlp_item_header_mem) (vp_res (by decide) (by decide))
    fun s _ ⟨hvl, hff⟩ vs _ callee v st ⟨hm, hpt⟩ _ _ => ?_
  refine hoare_pre (P := fun t => VL t.locals ∧ FF p M0 t) ?_ fun t _ ht => by
    subst ht
    exact ⟨vl_upd hvl (by decide) (by decide) _, ff_keep hff hm hpt⟩
  refine hoare_decR (vp_res (by decide) (by decide)) fun s1 _ ⟨hvl1, hff1⟩ v1 _ _ => ?_
  refine hoare_pre (P := fun t => VL t.locals ∧ FF p M0 t) ?_ fun t _ ht => by
    subst ht
    exact ⟨vl_upd hvl1 (by decide) (by decide) _, hff1⟩
  refine hoare_decR (vp_res (by decide) (by decide)) fun s2 _ ⟨hvl2, hff2⟩ v2 _ hsh2 => ?_
  obtain ⟨Af, rfl⟩ := val_of_shapeEq_one hsh2
  refine hoare_pre (P := fun t => (VL t.locals ∧ t.locals.lookup (nm "after") =
      some (.val (.word Af))) ∧ FF p M0 t) ?_ fun t _ ht => by
    subst ht
    exact ⟨⟨vl_upd hvl2 (by decide) (by decide) _, lk_set_self _ _ _⟩, hff2⟩
  refine hoare_ite ?_ (hoare_pre (vp_assign (by decide) (by decide)) fun _ _ h => ⟨h.1.1.1, h.1.2⟩)
  refine hoare_decCallR (MemSafe.allocSpec_scratch_alloc (σ := σ) hC) (vp_res (by decide) (by decide))
    fun u _ ⟨⟨⟨hvlu, hau⟩, hffu⟩, _⟩ avs havs callee' w st' hR _ _ => ?_
  rw [evs_cons (ev_cw _ 24) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨pu, hpu, hou, hmu, -⟩ := id hffu
  obtain ⟨hm', -, p', hp', ho', hmono, hv⟩ := hR (by simp [Good]) _ pu rfl hpu hou
  obtain ⟨q, rfl, -, ⟨-, hq2⟩, hfree⟩ := hv _ rfl
  simp only [BitVec.toNat_ofNat] at hq2 hfree
  refine hoare_pre (rv_push (q := q) (Af := Af) (by omega)
    fun a h1 h2 => not_alloc_of_mono hmu (hfree a h1 (by omega))) fun t _ ht => ?_
  subst ht
  refine ⟨⟨vl_upd hvlu (by decide) (by decide) _, lk_set_self _ _ _, ?_⟩,
    ff_ptrs hffu hpu hm' hp' ho' hmono⟩
  rw [lk_set_ne _ _ (by decide)]; exact hau

theorem rv_loop_body (hC : X.code.lookup = guestCode) {p : Ptrs} {M0 : MemSafe.Mem} :
    Hoare σ X (fun t => VL t.locals ∧ FF p M0 t) rvLoopBody (VP p M0) := by
  unfold rvLoopBody
  refine hoare_ite ?_ (hoare_pre (rv_item hC) fun _ _ h => h.1)
  refine hoare_pre (P := fun t => VL t.locals ∧ FF p M0 t) ?_ fun _ _ h => h.1
  refine hoare_ite (hoare_pre (vp_assign (by decide) (by decide)) fun _ _ h => h.1) ?_
  refine hoare_pre (P := fun t => VL t.locals ∧ FF p M0 t) ?_ fun _ _ h => h.1
  unfold rvPop
  refine hoare_seqN (R := fun t => VL t.locals ∧ FF p M0 t)
    (hoare_assign fun _ _ ⟨hv, hf⟩ v _ _ => ⟨rfl, vl_upd hv (by decide) (by decide) v, hf⟩) ?_
  refine hoare_seqN (R := fun t => VL t.locals ∧ FF p M0 t)
    (hoare_assign fun t _ ⟨⟨⟨T, hT⟩, _⟩, hf⟩ v hv _ => ?_) ?_
  · obtain ⟨w, -, -, rfl⟩ := ev_load1_inv' hv
    exact ⟨rfl, ⟨⟨T, by rw [lk_set_ne _ _ (by decide)]; exact hT⟩, _, lk_set_self _ _ _⟩, hf⟩
  refine hoare_assign fun t _ ⟨⟨_, E, hE⟩, hf⟩ v hv _ => ?_
  obtain ⟨w, -, -, rfl⟩ := ev_load1_inv' hv
  exact ⟨rfl, ⟨⟨_, lk_set_self _ _ _⟩, E, by rw [lk_set_ne _ _ (by decide)]; exact hE⟩, hf⟩

theorem freshFoot_rlp_validate_items_body (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "_rlp_validate_items_body") (fun _ _ => True) (fun _ _ _ _ _ => True) := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_validate_items_body (by decide) hl
  unfold rvBody
  refine hoare_decL fpost_locals fun s1 _ hs1 v1 hv1 _ => ?_
  subst s1
  rw [ev_cw] at hv1
  cases hv1
  refine hoare_decL fpost_locals fun s2 _ hs2 v2 _ _ => ?_
  subst hs2
  refine hoare_decL fpost_locals fun s3 _ hs3 v3 _ hsh3 => ?_
  subst hs3
  obtain ⟨E, rfl⟩ := val_of_shapeEq_one hsh3
  refine hoare_decL fpost_locals fun s4 _ hs4 v4 _ _ => ?_
  subst hs4
  refine hoare_seqN (R := fun t => FF p s0.memory t) ?_
    (hoare_return fun t _ hf v _ => fpost_of_ff (ff_empty hf) fun _ _ => trivial)
  refine hoare_pre (P := fun t => VL t.locals ∧ FF p s0.memory t) ?_ fun t _ ht => ?_
  · refine hoare_while (fun _ h => h) (hoare_conseq (rv_loop_body hC) (fun _ _ h => h.1)
      fun r t _ _ ⟨hr, hv, hf⟩ => ⟨fun _ => ⟨hv, hf⟩, fun h => (by subst hr; exact absurd h (by simp)),
        fun h => (by subst hr; exact absurd h (by simp)),
        fun v h => (by subst hr; exact absurd h (by simp))⟩)
      fun _ _ h _ => ⟨rfl, h.2⟩
  · subst ht
    refine ⟨⟨⟨0, ?_⟩, E, ?_⟩, ff_refl hp hord⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide)]
      exact lk_set_self _ _ _

/-! ## `rlp_validate_items` -/

theorem freshFoot_rlp_validate_items (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_validate_items") (fun _ _ => True) (fun _ _ _ _ _ => True) := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_validate_items (by decide) hl
  unfold rviBody
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := MemSafe.AllocImpl.ptrsOf_some hp
  refine hoare_decCallL (MemSafe.markSpec'_scratch_mark (σ := σ) hC) fpost_locals
    fun s _ hs0 avs havs callee' v st hR _ _ => ?_
  subst hs0
  rw [evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) rfl
  have hvw : v = .val (.word c) := MemSafe.mark_val_word (hv v rfl) hc
  subst hvw
  have hp1 : ptrsOf st = some ⟨a.toNat, b.toNat, c.toNat⟩ := by rw [ptrsOf_frame hg]; exact hp
  -- `mark = c` and the frame
  refine hoare_pre (P := fun t => t.locals.lookup (nm "mark") = some (.val (.word c)) ∧
      FF ⟨a.toNat, b.toNat, c.toNat⟩ s.memory t) ?_ fun t _ ht => by
    subst ht
    exact ⟨lk_set_self _ _ _, ff_refl' hp1 hord hm⟩
  refine hoare_decL fpost_locals fun s1 _ ⟨hmk, hff⟩ v1 _ _ => ?_
  have hmk1 : (setVarHOLFinite (nm "e") v1 s1).locals.lookup (nm "mark") = some (.val (.word c)) := by
    rw [lk_set_ne _ _ (by decide)]; exact hmk
  refine hoare_seqN (R := fun t => t.locals.lookup (nm "mark") = some (.val (.word c)) ∧
      FF ⟨a.toNat, b.toNat, c.toNat⟩ s.memory t) ?_ ?_
  · refine hoare_pre (P := fun t => t.locals.lookup (nm "mark") = some (.val (.word c)) ∧
        FF ⟨a.toNat, b.toNat, c.toNat⟩ s.memory t) ?_ fun t _ ht => by
      subst ht; exact ⟨hmk1, ff_locals _ hff⟩
    refine hoare_callH (freshFoot_rlp_validate_items_body hC)
      (fun u _ ⟨hmk2, hff2⟩ vs _ callee'' w st'' hR'' _ => ⟨fun _ => ⟨rfl, hmk2,
        ff_locals _ (ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True) (vs := vs) (st := st'') hff2 hR'' trivial).1⟩,
        fun k x hk => absurd hk (by simp)⟩)
      fun u _ _ _ _ _ _ _ _ _ => ?_
    exact hoare_seq (R := fun r _ => r = none) (hoare_callD (funSpec_true _) fun _ _ _ _ _ _ _ _ _ _ => rfl)
      (fun _ _ _ hr _ h => absurd h hr) hoare_raise
  -- `scratch_release(mark)`, then return
  refine hoare_seqN (R := fun t => FF ⟨a.toNat, b.toNat, c.toNat⟩ s.memory t) ?_
    (hoare_return fun t _ hf v _ => fpost_of_ff (ff_empty hf) fun _ _ => trivial)
  refine hoare_callD (MemSafe.releaseSpec_scratch_release (σ := σ) hC)
    fun u _ ⟨hmk2, hff2⟩ vs hvs callee'' w st'' hR'' _ => ?_
  rw [evs_cons (ev_lv' hmk2) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hm2, hgs, hgo⟩ := hR'' (by simp [Good]) c rfl
  refine ⟨rfl, ?_⟩
  obtain ⟨pu, hpu, hou, hmu, hwu⟩ := hff2
  obtain ⟨a', b', c', ha', hb', hc', rfl⟩ := MemSafe.AllocImpl.ptrsOf_some hpu
  obtain ⟨hu1, hu2, hu3, hu4, hu5, hu6, hu7, hu8⟩ := hou
  obtain ⟨m1, m2, m3⟩ := hmu
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := hord
  have hm2' : st''.memory = u.memory := hm2
  refine ⟨⟨a'.toNat, b'.toNat, c.toNat⟩, ?_, ⟨hu1, hu2, hu3, Nat.le_trans hu4 m3, o5, hu6,
    hu7, o8⟩, ⟨m1, m2, le_rfl⟩, fun x hx => hwu x (by rw [← hm2']; exact hx)⟩
  have e1 : st''.globals.lookup MemSafe.gHeap = some (.val (.word a')) := by
    rw [hgo _ (by decide)]; exact MemSafe.AllocImpl.lookup_of_gword ha'
  have e2 : st''.globals.lookup MemSafe.gFrame = some (.val (.word b')) := by
    rw [hgo _ (by decide)]; exact MemSafe.AllocImpl.lookup_of_gword hb'
  exact ptrsOf_mk (t := { st'' with locals := u.locals }) e1 e2 hgs

/-! ## `rlp_item_total`, `rlp_list_count` -/

theorem freshFoot_rlp_item_total (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_item_total") (fun _ _ => True) (fun _ _ _ _ _ => True) := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_item_total (by decide) hl
  unfold totalBody
  refine hoare_decCallL (hdr_keep hC rlp_item_header_mem) fpost_locals
    fun s _ hs0 _ _ callee' v st ⟨hm, hpt⟩ _ _ => ?_
  subst s
  refine hoare_pre (P := fun t => FF p s0.memory t) ?_ fun t _ ht => by
    subst ht; exact ff_keep (ff_refl hp hord) hm hpt
  refine hoare_seqN (R := fun t => FF p s0.memory t) ?_
    (hoare_return fun t _ hf v _ => fpost_of_ff (ff_empty hf) fun _ _ => trivial)
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨h, _⟩ => ⟨rfl, h⟩)
  exact hoare_callD (freshFoot_rlp_validate_items hC) fun u _ ⟨hff, _⟩ vs'' _ callee'' w st'' hR _ =>
    ⟨rfl, ff_locals _ (ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True) (vs := vs'')
      (st := st'') hff hR trivial).1⟩

theorem freshFoot_rlp_list_count (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_list_count") (fun _ _ => True) (fun _ _ _ _ _ => True) := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord _ => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_two code_rlp_list_count (by decide) hl
  unfold countBody
  refine hoare_decL fpost_locals fun s1 _ hs1 _ _ _ => ?_
  subst s1
  refine hoare_decL fpost_locals fun s2 _ hs2 _ _ _ => ?_
  subst s2
  refine hoare_seqN (R := fun t => FF p s0.memory t) ?_
    (hoare_return fun t _ hf v _ => fpost_of_ff (ff_empty hf) fun _ _ => trivial)
  refine hoare_pre (P := fun t => FF p s0.memory t) ?_ fun t _ ht => by
    subst ht; exact ff_locals _ (ff_locals _ (ff_refl hp hord))
  refine hoare_while (fun _ h => h) (hoare_conseq (Q := fun r t => r = none ∧ FF p s0.memory t) ?_
    (fun _ _ h => h.1) fun r t _ _ ⟨hr, hf⟩ => ⟨fun _ => hf,
      fun h => (by subst hr; exact absurd h (by simp)), fun h => (by subst hr; exact absurd h (by simp)),
      fun v h => (by subst hr; exact absurd h (by simp))⟩) fun _ _ h _ => ⟨rfl, h⟩
  unfold countLoopBody
  refine hoare_decCallL (freshFoot_rlp_item_total hC) (fun _ _ _ h => h)
    fun u _ hff vs'' _ callee'' w st'' hR _ _ => ?_
  have hff' := (ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True) (vs := vs'')
    (st := st'') hff hR trivial).1
  refine hoare_pre (P := fun t => FF p s0.memory t) ?_ fun t _ ht => by
    subst ht; exact ff_locals _ (ff_locals _ hff')
  exact hoare_seqN (hoare_assign fun t _ h _ _ _ => ⟨rfl, ff_locals _ h⟩)
    (hoare_assign fun t _ h _ _ _ => ⟨rfl, ff_locals _ h⟩)

end InitECandidate.Solver.Spec.Mpt.Leaves
