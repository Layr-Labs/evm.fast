import InitECandidate.Solver.Spec.Mpt.Decode.ResolveCode

/-!
# The footprint of `_resolve_step`

`freshFoot_resolve_step`: `_resolve_step` satisfies the loop's hypothesis
`FreshFoot … (ResPre W H) (ResQ H)`, given the footprints of its callees:

* `rlp_item`: fresh-only writes (`FreshFoot … True True`);
* `nodedb_lookup` (`NlPre W H` / `NlQ H`): from a state where `W db H M` holds with
  `heapBase ≤ H ≤ heap_ptr`, fresh-only writes, and a found entry `<1, p', n'>` has
  `[p', p' + n')` in the heap below `H`;
* `node_new_hashed`: proved (`freshFoot_node_new_hashed`); `mpt_fail`: never returns.
-/

namespace InitECandidate.Solver.Spec.Mpt.Dec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- `nodedb_lookup(db, h)`: `W db H M` with `heapBase ≤ H ≤ heap_ptr`. -/
def NlPre (W : BitVec 64 → Nat → Mem → Prop) (H : Nat) (vs : List (ValueHOL 64)) (s : State σ) :
    Prop :=
  ∃ (db : BitVec 64) (b : ValueHOL 64), vs = [.val (.word db), b] ∧
    ∃ p : Ptrs, ptrsOf s = some p ∧ heapBase ≤ H ∧ H ≤ p.hp ∧ W db H s.memory

/-- A found entry `<1, p', n'>` lies in the heap below `H`. -/
def NlQ (H : Nat) (_ : List (ValueHOL 64)) (_ _ : Ptrs) (_ : Mem) (v : ValueHOL 64) : Prop :=
  ∀ a b c : BitVec 64, v = .rStruct [.val (.word a), .val (.word b), .val (.word c)] → a ≠ 0 →
    heapBase ≤ b.toNat ∧ b.toNat + c.toNat ≤ H

theorem allocated_mono {p q : Ptrs} (h : p.Mono q) {a : Nat} (ha : p.Allocated a) : q.Allocated a := by
  unfold Ptrs.Allocated at *
  obtain ⟨h1, h2, h3⟩ := h
  omega

/-- The pointers moved monotonically from `p`, and memory changed only at cells unallocated
under `p`. -/
def Tk (p : Ptrs) (M0 : Mem) (t : State σ) : Prop :=
  ∃ q : Ptrs, ptrsOf t = some q ∧ q.Ordered ∧ p.Mono q ∧
    ∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat

theorem tk_callee {p q q' : Ptrs} {M0 : Mem} {t st : State σ} (hq : ptrsOf t = some q)
    (hmono : p.Mono q) (hf0 : ∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat)
    (hq' : ptrsOf st = some q') (hord' : q'.Ordered) (hm' : q.Mono q')
    (hf : ∀ a : BitVec 64, st.memory a ≠ t.memory a → ¬ q.Allocated a.toNat) : Tk p M0 st := by
  refine ⟨q', hq', hord', ?_, fun a ha => ?_⟩
  · obtain ⟨a1, a2, a3⟩ := hmono; obtain ⟨b1, b2, b3⟩ := hm'; exact ⟨by omega, by omega, by omega⟩
  · by_cases e : t.memory a = M0 a
    · exact fun hp => hf a (by rw [e]; exact ha) (allocated_mono hmono hp)
    · exact hf0 a e

theorem mono_of {p q : Ptrs} (h1 : p.Mono q) : p.hp ≤ q.hp := h1.1

/-- The post of `_resolve_step` for fixed entry pointers `p` and memory `M0`. -/
def RQ (H : Nat) (vs : List (ValueHOL 64)) (p : Ptrs) (M0 : Mem)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ p' : Ptrs, ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
    (∀ a : BitVec 64, t.memory a ≠ M0 a → ¬ p.Allocated a.toNat) ∧ ResQ H vs p p' t.memory v

theorem rq_return {H : Nat} {vs : List (ValueHOL 64)} {p : Ptrs} {M0 : Mem} {e : ExpHOL 64}
    {P : State σ → Prop} {v0 : ValueHOL 64}
    (hv : ∀ t, P t → ev t e = some v0) (hTk : ∀ t, P t → Tk p M0 t)
    (hQ : ∀ t, P t → ∀ (q : Ptrs) (M : Mem), ptrsOf t = some q → p.Mono q → ResQ H vs p q M v0) :
    Hoare σ X P (.return e) (fun r t => r ≠ none ∧ RQ H vs p M0 r t) := by
  refine hoare_return fun t _ hP v hv' => ⟨by simp, fun w hw => ?_⟩
  simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
  subst hw
  rw [hv t hP] at hv'
  cases hv'
  obtain ⟨q, hq, hord, hmono, hfr⟩ := hTk t hP
  exact ⟨q, (ptrsOf_frame rfl).trans hq, hord, hmono, hfr, hQ t hP q _ hq hmono⟩

theorem rq_post {H : Nat} {vs : List (ValueHOL 64)} {p : Ptrs} {M0 : Mem} {J : State σ → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (h : r ≠ none ∧ RQ H vs p M0 r t) :
    (r = none → J t) ∧ RQ H vs p M0 r t := ⟨fun e => absurd e h.1, h.2⟩

theorem ev_wv4 {s : State σ} {es : List (ExpHOL 64)} {a b c d : BitVec 64}
    (h : evs s es = some [.val (.word a), .val (.word b), .val (.word c), .val (.word d)]) :
    ev s (.rstruct es) = some (.rStruct [.val (.word a), .val (.word b), .val (.word c), .val (.word d)]) :=
  ev_rstruct h

theorem shape_valid {s : State σ} {x : MlS} {old v : ValueHOL 64} (hx : s.locals.lookup x = some old)
    (hv : isValidValueHOLExact s.toExact .local x v = true) :
    shapeEqHOL (shapeOfHOLExact v) (shapeOfHOLExact old) = true := by
  simp only [isValidValueHOLExact, lookupKvarHOLExact] at hv
  split at hv
  · rename_i old' hold
    have h2 : s.locals.lookup x = some old' := hold
    rw [hx] at h2
    cases h2
    exact hv
  · simp at hv

/-- **`_resolve_step`'s footprint.** -/
theorem freshFoot_resolve_step (hC : X.code.lookup = guestCode) {W : BitVec 64 → Nat → Mem → Prop}
    (hW : WFrame W) {H : Nat}
    (hri : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    (hnl : FreshFoot σ X (nm "nodedb_lookup") (NlPre W H) (NlQ H)) :
    FreshFoot σ X (nm "_resolve_step") (ResPre W H) (ResQ H) := by
  refine funSpec_of_hoare fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, Cc, rfl, hsA, hsB, hsC, hA, hB, hCc⟩ :=
    lookupCode_three code_resolve_step (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hsB
  obtain ⟨Cc, rfl⟩ := val_of_shapeEq_one hsC
  intro s hs hs0 htr v hv p hp hord hpre
  subst hs0
  obtain ⟨db, P, n, hvs, hPb, hPn, p0, hp0, hHp, hWm⟩ := hpre
  have hHb : heapBase ≤ H := by omega
  rw [hp] at hp0; cases hp0
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  set vs := [ValueHOL.val (.word A), .val (.word B), .val (.word Cc)]
  suffices HH : Hoare σ X (fun t => t = s) rsBody (RQ H vs p s.memory) from HH s hs rfl htr v hv
  -- locals kept from the entry
  let Lk : State σ → Prop := fun t => t.locals.lookup (nm "db") = some (.val (.word A)) ∧
    t.locals.lookup (nm "p") = some (.val (.word B)) ∧ t.locals.lookup (nm "n") = some (.val (.word Cc))
  have hLk0 : Lk s := ⟨by rw [hloc]; exact hA, by rw [hloc]; exact hB, by rw [hloc]; exact hCc⟩
  have lk_set : ∀ t (y : MlS) v', y ≠ nm "db" → y ≠ nm "p" → y ≠ nm "n" → Lk t →
      Lk (setVarHOLFinite y v' t) := fun t y v' h1 h2 h3 ⟨a1, a2, a3⟩ =>
    ⟨by rw [lk_set_ne _ _ h1]; exact a1, by rw [lk_set_ne _ _ h2]; exact a2,
      by rw [lk_set_ne _ _ h3]; exact a3⟩
  have hWt : ∀ t : State σ, (∀ a : BitVec 64, t.memory a ≠ s.memory a → ¬ p.Allocated a.toNat) →
      W A H t.memory := by
    intro t hf
    refine hW _ _ _ _ hWm fun a h1 h2 => ?_
    by_contra hne
    exact hf a hne (Or.inl ⟨h1, by omega⟩)
  unfold rsBody
  refine hoare_dec fun s1 _ hs1 vit hvit _ => ?_
  subst s1
  rw [ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
    (evs_cons (ev_cw _ 0) evs_nil))))] at hvit
  cases hvit
  refine hoare_conseq (Q := RQ H vs p s.memory) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  refine hoare_dec fun s2 _ hs2 ve hve _ => ?_
  subst hs2
  rw [ev_cw] at hve; cases hve
  refine hoare_conseq (Q := RQ H vs p s.memory) ?_ (fun _ _ h => h) (fun r t _ _ h => h)
  set s2 := setVarHOLFinite (nm "e") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "it") (.rStruct [.val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0))]) s)
  have hit2 : s2.locals.lookup (nm "it") = some (.rStruct [.val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0)), .val (.word (BitVec.ofNat 64 0)),
      .val (.word (BitVec.ofNat 64 0))]) := by
    rw [lk_set_ne _ _ (by decide), lk_set_self]
  have hLk2 : Lk s2 := lk_set _ _ _ (by decide) (by decide) (by decide)
    (lk_set _ _ _ (by decide) (by decide) (by decide) hLk0)
  -- the state after the `rlp_item` call
  let J : State σ → Prop := fun t => Tk p s.memory t ∧ Lk t ∧ ∃ i0 i1 i2 i3 : BitVec 64,
    t.locals.lookup (nm "it") = some (.rStruct [.val (.word i0), .val (.word i1), .val (.word i2),
      .val (.word i3)])
  refine hoare_seq (R := fun r t => (r = none → J t) ∧ RQ H vs p s.memory r t) ?_
    (fun _ _ _ _ _ h => h.2) ?_
  · unfold rsCall
    refine hoare_callH hri ?_ ?_
    · intro t _ ht vs' _ callee' v' st hR _
      subst ht
      refine ⟨fun h => absurd h (by simp), fun k x hkx hval => ?_⟩
      simp only [Option.some.injEq, Prod.mk.injEq] at hkx
      obtain ⟨rfl, rfl⟩ := hkx
      refine ⟨fun _ => ?_, fun w hw => by cases hw⟩
      have hp2 : ptrsOf s2 = some p := (ptrsOf_frame rfl).trans hp
      obtain ⟨q', hq', hord', hm', hf, -⟩ := hR _ rfl p hp2 hord trivial
      have hsh := shape_valid hit2 hval
      simp only [shapeOf_rStruct, List.map, shapeOf_val] at hsh
      obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 4) hsh
      match ws, hwl with
      | [i0, i1, i2, i3], _ =>
        refine ⟨tk_callee hp2 ⟨le_rfl, le_rfl, le_rfl⟩ (fun _ h => absurd rfl h) ((ptrsOf_frame rfl).trans hq')
          hord' hm' hf, lk_set _ _ _ (by decide) (by decide) (by decide) hLk2, i0, i1, i2, i3,
          lk_set_self _ _ _⟩
    · intro t _ ht vs' _ callee' v' st _ _
      exact hoare_callD (funSpec_of_funRet (funRet_mpt_fail hC)) fun _ _ _ _ _ _ w _ hR _ =>
        (hR w rfl).elim
  -- the item: a string (`rsStr`) or an embedded list
  refine hoare_seq (R := fun r t => (r = none → J t) ∧ RQ H vs p s.memory r t) ?_
    (fun _ _ _ _ _ h => h.2) ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨hJ, _⟩, _⟩ => ⟨fun _ => hJ rfl, fun _ h => by cases h⟩)
    intro t hctx ⟨⟨hJ, _⟩, hc⟩
    obtain ⟨hTk, hLk, i0, i1, i2, i3, hit⟩ := hJ rfl
    refine (?_ : Hoare σ X (fun u => u = t) rsStr
      (fun r t => (r = none → J t) ∧ RQ H vs p s.memory r t)) t hctx rfl
    have hi1 : ev t (.rfield 1 (lv (nm "it"))) = some (.val (.word i1)) := ev_rfield_w hit rfl
    unfold rsStr
    refine hoare_seq (R := fun r u => (r = none → u = t) ∧ (r ≠ none → (r = none → J u) ∧
        RQ H vs p s.memory r u)) ?_ (fun _ _ _ hr _ h => h.2 hr) ?_
    · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, _⟩ => ⟨fun _ => hu, fun h => absurd rfl h⟩)
      refine hoare_post (rq_return (fun u ⟨hu, _⟩ => by
          subst hu; exact ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0)
            (evs_cons (ev_cw _ 0) evs_nil))))) (fun u ⟨hu, _⟩ => hu ▸ hTk) ?_)
        (fun r u _ _ h => ⟨fun e => absurd e h.1, fun _ => rq_post h⟩)
      intro _ _ q M _ _
      exact ⟨0, 0, 0, 0, rfl, fun _ => Or.inl rfl, fun h => absurd rfl h⟩
    refine hoare_guard_seq (funRet_mpt_fail hC) ?_
    refine hoare_decCallS hnl fun u _ ⟨⟨hu, _⟩, _⟩ vs' hvs' callee' vr st hR _ hsh => ?_
    have hu' := hu rfl
    subst u
    obtain ⟨q, hq, hordq, hmq, hfq⟩ := hTk
    obtain ⟨vdb, r1, rfl, hv1, hr1⟩ := evs_cons_inv hvs'
    obtain ⟨vh, r2, rfl, hv2, hr2⟩ := evs_cons_inv hr1
    simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
    subst hr2
    rw [ev_lv, hLk.1] at hv1
    cases hv1
    obtain ⟨q', hq', hord', hm', hf', hnlq⟩ := hR _ rfl q hq hordq
      ⟨A, vh, rfl, q, hq, hHb, by have := mono_of hmq; omega, hWt _ hfq⟩
    obtain ⟨ws, hwl, rfl⟩ := eq_wv_of_shapeEq' (k := 3) hsh
    match ws, hwl with
    | [r0, r1, r2], _ =>
    have hnlq' : r0 ≠ 0 → heapBase ≤ r1.toNat ∧ r1.toNat + r2.toNat ≤ H := hnlq r0 r1 r2 rfl
    set t0 := setVarHOLFinite (nm "r") (wv [r0, r1, r2]) { st with locals := t.locals }
    have hTk0 : Tk p s.memory t0 :=
      tk_callee hq hmq hfq ((ptrsOf_frame rfl).trans hq') hord' hm' hf'
    have hit0 : t0.locals.lookup (nm "it") = some (.rStruct [.val (.word i0), .val (.word i1),
        .val (.word i2), .val (.word i3)]) := by rw [lk_set_ne _ _ (by decide)]; exact hit
    have hr0 : t0.locals.lookup (nm "r") = some (wv [r0, r1, r2]) := lk_set_self _ _ _
    refine hoare_conseq (P := fun u => u = t0) (Q := fun r u => r ≠ none ∧ RQ H vs p s.memory r u) ?_
      (fun _ _ h => h) (fun r u _ _ h => rq_post h)
    unfold rsNode
    refine hoare_seq (R := fun r u => (r = none ∧ u = t0 ∧ r0 ≠ 0) ∨ (r ≠ none ∧ RQ H vs p s.memory r u))
      ?_ (fun _ _ _ hr _ h => by rcases h with h | h; exact absurd h.1 hr; exact h) ?_
    · refine hoare_ite ?_ (hoare_skip fun u _ ⟨hu, hc⟩ => Or.inl ⟨rfl, hu, by
        subst hu; have := ne_of_else (ev_rfield_w hr0 rfl) hc; simpa using this⟩)
      refine hoare_decCallS (freshFoot_node_new_hashed hC) fun u _ ⟨hu, _⟩ vs'' _ callee'' vn st'' hR' _ _ => ?_
      subst hu
      have hpt0 : ptrsOf t0 = some q' := (ptrsOf_frame rfl).trans hq'
      obtain ⟨q'', hq'', hord'', hm'', hf'', e, rfl, he1, he2⟩ := hR' _ rfl q' hpt0 hord' trivial
      refine hoare_conseq (P := fun u => u = setVarHOLFinite (nm "hn") (.val (.word e))
          { st'' with locals := t0.locals }) ?_ (fun _ _ h => h) (fun r u _ _ h => Or.inr h)
      obtain ⟨q0, hq0, hord0, hm0, hf0⟩ := hTk0
      rw [hpt0] at hq0; cases hq0
      refine rq_return (fun u hu => by
          subst hu
          exact ev_rstruct (evs_cons (ev_cw _ 0) (evs_cons (by rw [ev_lv]; exact lk_set_self _ _ _)
            (evs_cons (ev_cw _ 0) (evs_cons (ev_cw _ 0) evs_nil)))))
        (fun u hu => by
          subst hu
          exact tk_callee hpt0 hm0 hf0 ((ptrsOf_frame rfl).trans hq'') hord'' hm'' hf'') ?_
      intro u hu q3 M hq3 _
      subst hu
      have hq3' : some q3 = some q'' := hq3.symm.trans ((ptrsOf_frame rfl).trans hq'')
      cases hq3'
      refine ⟨0, e, 0, 0, rfl, fun _ => Or.inr ⟨?_, he2⟩, fun h => absurd rfl h⟩
      have := mono_of hmq; have := mono_of hm'; omega
    · intro u hctx h
      rcases h with ⟨_, hu, hr0ne⟩ | ⟨h, _⟩
      · subst hu
        refine rq_return (P := fun u => u = t0) (fun u hu => by
            subst hu
            exact ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (ev_rfield_w hr0 rfl)
              (evs_cons (ev_rfield_w hr0 rfl) (evs_cons (ev_rfield_w hit0 rfl) evs_nil)))))
          (fun u hu => hu ▸ hTk0) ?_ t0 hctx rfl
        intro _ _ q3 M _ _
        exact ⟨1, r1, r2, i1, rfl, fun h => absurd h (by decide), fun _ => hnlq' hr0ne⟩
      · exact absurd rfl h
  · refine hoare_post (rq_return (v0 := .rStruct [.val (.word (BitVec.ofNat 64 1)), .val (.word B),
        .val (.word Cc), .val (.word (BitVec.ofNat 64 0))]) (fun t ⟨hJ, _⟩ => ?_)
        (fun t ⟨hJ, _⟩ => (hJ rfl).1) ?_)
      (fun _ _ _ _ h => h.2)
    · obtain ⟨-, ⟨-, hp', hn'⟩, -⟩ := hJ rfl
      exact ev_rstruct (evs_cons (ev_cw _ 1) (evs_cons (by rw [ev_lv]; exact hp')
        (evs_cons (by rw [ev_lv]; exact hn') (evs_cons (ev_cw _ 0) evs_nil))))
    · intro _ _ q M _ _
      exact ⟨1, B, Cc, 0, rfl, fun h => absurd h (by decide), fun _ => ⟨hPb, hPn⟩⟩

/-- **`_decode_witness_node_body`** under `DecPre W`, with `_resolve_step`'s footprint
discharged: the remaining hypotheses are the footprints of `_decode_step`, `rlp_item` and
`nodedb_lookup`. -/
theorem decode_witness_node_body_costP' (hC : X.code.lookup = guestCode)
    {W : BitVec 64 → Nat → Mem → Prop} (hW : WFrame W)
    (hds' : ∀ H, FreshFoot σ X (nm "_decode_step") (DecPreS H) (DecQ H))
    (hri' : FreshFoot σ X (nm "rlp_item") (fun _ _ => True) (fun _ _ _ _ _ => True))
    (hnl' : ∀ H, FreshFoot σ X (nm "nodedb_lookup") (NlPre W H) (NlQ H))
    {Bds Brs Bri Bnx Bf : Nat}
    (hds : CalleeCost σ X (nm "_decode_step") Bds) (hrs : CalleeCost σ X (nm "_resolve_step") Brs)
    (hri : CalleeCost σ X (nm "rlp_item") Bri) (hnx : CalleeCost σ X (nm "node_new_ext") Bnx)
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) :
    Inv.CalleeCostP σ X (nm "_decode_witness_node_body") (DecPre W) (decB Bds Brs Bri Bnx Bf) :=
  decode_witness_node_body_costP hC hW hds' (fun H => freshFoot_resolve_step hC hW hri' (hnl' H)) hri'
    hds hrs hri hnx hf

end InitECandidate.Solver.Spec.Mpt.Dec
