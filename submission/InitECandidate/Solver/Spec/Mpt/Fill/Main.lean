import InitECandidate.Solver.Spec.Mpt.Fill.Cost

/-!
# **The tick bound of `_node_rlp_fill`**, under `FillPre`

`node_rlp_fill_costP`: a conditional table entry (`Spec.Inv.CalleeCostP`) for `FillPre`
(allocator ordered; the root is a LEAF/EXT/BRANCH node of a node set `Nd` with the trie facts
`TrieOK`), given `NullSafe X`, the callee hypotheses `BeginSpec` / `FinishSpec` and the
all-states callee costs. Bound `fillB = (fillM + 1) * (fillBodyB + 1) + (Bm + Ba + Bbeg + Br + 4)`,
`fillM = 521216`.

The entry (`scratch_mark`, `scratch_alloc(48)`, the three record stores and
`_node_rlp_begin(fr, node)`) establishes `FInv Nd hp sp` with a one-record chain, where `hp`,
`sp` are the allocator pointers at entry.
-/

namespace InitECandidate.Solver.Spec.Mpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd gHeap gFrame gScratch gword)

/-- **The bound.** -/
def fillB (Bn Ba Bbeg Bfin Bm Br : Nat) : Nat :=
  (fillM + 1) * (fillBodyB Bn Ba Bbeg Bfin + 1) + (Bm + Ba + Bbeg + Br + 4)

theorem safe_high {s : PanSemStateFiniteExact 64 σ} {Nd : BitVec 64 → Prop} {HP lo : Nat}
    {x : BitVec 64} (h : x.toNat < heapBase ∨ HP ≤ x.toNat) : SafeW s Nd HP lo lo x := by
  rcases h with h | h
  · exact Or.inr (Or.inr (Or.inl h))
  · by_cases h2 : x.toNat < lo
    · exact Or.inr (Or.inr (Or.inr (Or.inl ⟨h, h2⟩)))
    · exact Or.inr (Or.inr (Or.inr (Or.inr (by omega))))

/-- The facts after the entry's `_node_rlp_begin(fr, node)`. -/
def EntryPost (Nd : BitVec 64 → Prop) (HP0 S0 : Nat) (q : BitVec 64)
    (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ p'' : Ptrs, ptrsOf u = some p'' ∧ p''.Ordered ∧ HP0 ≤ p''.hp ∧ heapBase ≤ HP0 ∧
    p''.sp ≤ q.toNat ∧ q.toNat + 48 ≤ S0 ∧ S0 ≤ scratchEnd ∧ q ≠ 0 ∧ TrieOK u Nd HP0 ∧
    u.locals.lookup (nm "fr") = some (.val (.word q)) ∧ RecF u Nd HP0 p''.hp false q ∧
    rd u.memory q = 0

theorem finv_of_entry {Nd : BitVec 64 → Prop} {HP0 S0 : Nat} {q : BitVec 64}
    {u : PanSemStateFiniteExact 64 σ} (h : EntryPost Nd HP0 S0 q u) :
    FInv Nd HP0 S0 (setVarHOLFinite (nm "top") (.val (.word q)) u) := by
  obtain ⟨p'', hp, hord, h0, hb0, hsp, hq48, hS0, hq0, htr, -, hrec, hlink⟩ := h
  refine ⟨p'', hp, hord, h0, hb0, by omega, hS0, trieOK_of_eq (by have := hord.2.1; omega) rfl rfl htr,
    q, 1, lk_set_self _ _ _, hq0, hsp, hq48, recF_of_eq rfl rfl hrec, ?_⟩
  exact hlink

/-- **`_node_rlp_fill`** under `FillPre`. -/
theorem node_rlp_fill_costP (hC : X.code.lookup = guestCode) (hNS : MemSafe.NullSafe X)
    (hbeg : BeginSpec σ X) (hfin : FinishSpec σ X) {Bn Ba Bbeg Bfin Bm Br : Nat}
    (hn : CalleeCost σ X (nm "_node_needs_rlp") Bn) (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hb : CalleeCost σ X (nm "_node_rlp_begin") Bbeg)
    (hf : CalleeCost σ X (nm "_node_rlp_finish") Bfin)
    (hm : CalleeCost σ X (nm "scratch_mark") Bm) (hr : CalleeCost σ X (nm "scratch_release") Br) :
    Inv.CalleeCostP σ X (nm "_node_rlp_fill") FillPre (fillB Bn Ba Bbeg Bfin Bm Br) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_node_rlp_fill hl
  refine Inv.CostP.mono (B := 1 + Bm + (1 + Ba + (0 + (0 + (0 + ((1 + Bbeg + 0) +
    ((fillM + 1) * (fillBodyB Bn Ba Bbeg Bfin + 1) + ((1 + Br + 0) + 0)))))))) ?_
    (by unfold fillB; omega)
  unfold fillMain
  -- `var mark = scratch_mark()`
  refine costP_decCall hm ((MemSafe.markSpec'_scratch_mark hC).and (funSpec_be _))
    fun s _ ⟨hloc, N0, hvs0, p, hp, hord, Nd, htr, hNd, hrk⟩ vs hvs callee1 v st ⟨hM, hbeM⟩ _ => ?_
  simp only [List.cons.injEq, and_true] at hvs0
  subst hvs0
  have hnode : s.locals.lookup (nm "node") = some (.val (.word N0)) := by rw [hloc]; exact hA
  rw [evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hmM, hgM, -⟩ := hM (by simp [Good]) rfl
  set t1 := setVarHOLFinite (nm "mark") v { st with locals := s.locals }
  have hp1 : ptrsOf t1 = some p := by rw [← hp]; exact ptrsOf_frame hgM
  have hm1 : t1.memory = s.memory := hmM
  have hg1 : t1.globals = s.globals := hgM
  -- `var fr = scratch_alloc(48)`
  refine costP_decCall ha ((MemSafe.allocSpec_scratch_alloc hC).and (funSpec_be _))
    fun t _ ht vs hvs callee2 v2 st2 ⟨hA2, hbe2⟩ _ => ?_
  subst ht
  rw [evs_cons (ev_cw _ 48) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  obtain ⟨hmA, hgA, p', hp', hord', hmono, hq⟩ := hA2 (by simp [Good]) _ p rfl hp1 hord
  obtain ⟨q, rfl, -, ⟨hl1, hl2⟩, hfree⟩ := hq _ rfl
  simp only [BitVec.toNat_ofNat] at hl2 hfree
  have hhp := hord.2.1
  have hspE := heapEnd_le_sp hord
  have hspE' := heapEnd_le_sp hord'
  have hm1' := hmono.1
  have hm3' := hmono.2.2
  have hS := scratchEnd_lt
  have hS0 := hord.2.2.2.2.1
  have hq48 : q.toNat + 48 ≤ p.sp := by
    by_contra hlt
    exact hfree (q.toNat + 47) (by omega) (by omega) (Or.inr (Or.inr ⟨by omega, by omega⟩))
  have hgk : ∀ g, g ≠ gScratch → st2.globals.lookup g = s.globals.lookup g := fun g hg => by
    rw [hgA g hg]; exact congrArg (fun G => G.lookup g) hg1
  set t2 := setVarHOLFinite (nm "fr") (.val (.word q)) { st2 with locals := t1.locals } with ht2
  have hfr : t2.locals.lookup (nm "fr") = some (.val (.word q)) := lk_set_self _ _ _
  have hnode2 : t2.locals.lookup (nm "node") = some (.val (.word N0)) := by
    rw [lk_set_ne _ _ (by decide)]
    show (setVarHOLFinite _ _ _).locals.lookup _ = _
    rw [lk_set_ne _ _ (by decide)]; exact hnode
  have hm2 : t2.memory = s.memory := hmA.trans hm1
  have hbe2' : t2.be = s.be := hbe2.trans hbeM
  have hp2 : ptrsOf t2 = some p' := hp'
  have hb0 := hord.1
  obtain ⟨n1, n2, n3, -⟩ := htr.1 N0 hNd
  have hN0h : N0.toNat < heapEnd := by have := nsz_ge (rd s.memory N0); omega
  let M3 : MemSafe.Mem := upd (upd (upd s.memory (q + BitVec.ofNat 64 0) (.word (BitVec.ofNat 64 0)))
    (q + BitVec.ofNat 64 8) (.word N0)) (q + BitVec.ofNat 64 16) (.word (BitVec.ofNat 64 0))
  have hM3 : ∀ x : BitVec 64, M3 x ≠ s.memory x → q.toNat ≤ x.toNat ∧ x.toNat < q.toNat + 48 := by
    have hq0 : (q + BitVec.ofNat 64 0).toNat = q.toNat := toNat_add_k (by omega)
    have hq8 : (q + BitVec.ofNat 64 8).toNat = q.toNat + 8 := toNat_add_k (by omega)
    have hq16 : (q + BitVec.ofNat 64 16).toNat = q.toNat + 16 := toNat_add_k (by omega)
    intro x hx
    simp only [M3, upd] at hx
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    split at hx
    · rename_i e; subst e; omega
    exact absurd rfl hx
  -- the record and `_node_rlp_begin`, then `var top = fr`
  unfold fillK
  refine Inv.costP_seq (Inv.costP_of_cost (cost_store _ _)) (R := fun t => t.locals = t2.locals ∧
      t.globals = t2.globals ∧ t.be = t2.be ∧
      t.memory = upd s.memory (q + BitVec.ofNat 64 0) (.word (BitVec.ofNat 64 0)))
    (hoare_pre (hoare_post (st_stepB (V := BitVec.ofNat 64 0) hfr (fun t _ => ev_cw t 0))
      fun _ _ _ _ h _ => h.2) fun t _ ht => by subst ht; exact ⟨rfl, rfl, rfl, hm2⟩) ?_
  refine Inv.costP_seq (Inv.costP_of_cost (cost_store _ _)) (R := fun t => t.locals = t2.locals ∧
      t.globals = t2.globals ∧ t.be = t2.be ∧
      t.memory = upd (upd s.memory (q + BitVec.ofNat 64 0) (.word (BitVec.ofNat 64 0)))
        (q + BitVec.ofNat 64 8) (.word N0))
    (hoare_post (st_stepB hfr (fun t h => by rw [ev_lv, h]; exact hnode2)) fun _ _ _ _ h _ => h.2) ?_
  refine Inv.costP_seq (Inv.costP_of_cost (cost_store _ _)) (R := fun t => t.locals = t2.locals ∧
      t.globals = t2.globals ∧ t.be = t2.be ∧ t.memory = M3)
    (hoare_post (st_stepB (V := BitVec.ofNat 64 0) hfr (fun t _ => ev_cw t 0))
      fun _ _ _ _ h _ => h.2) ?_
  refine Inv.costP_seq (Inv.costP_of_cost (cost_call (Bh := 0) hb nohandler))
    (R := EntryPost Nd p.hp p.sp q) ?_ ?_
  · refine hoare_callD (hbeg.and (funSpec_be _)) fun u _ ⟨hl, hg, hbe, hmu⟩ vs hvs callee3 v3 st3
      ⟨hR, hbe3⟩ _ => fun _ => ?_
    rw [evs_cons (by rw [ev_lv, hl]; exact hfr) (evs_cons (by rw [ev_lv, hl]; exact hnode2) evs_nil)]
      at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hpu : ptrsOf u = some p' := by rw [ptrsOf_frame hg]; exact hp2
    have hk1u : gword u gKst = gword s gKst := by
      rw [gword_of_eq hg]; exact gword_glob (by rw [show t2.globals = st2.globals from rfl]; exact hgk _ (by decide))
    have hk2u : gword u gKpad = gword s gKpad := by
      rw [gword_of_eq hg]; exact gword_glob (by rw [show t2.globals = st2.globals from rfl]; exact hgk _ (by decide))
    have hwu : ∀ x, u.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp p.sp x := fun x hx => by
      rw [hmu] at hx
      obtain ⟨a1, a2⟩ := hM3 x hx
      exact safe_high (Or.inr (by omega))
    obtain ⟨hSSu, -, -⟩ := safe_keeps htr (le_refl _) hhp hspE hspE hwu
    have htru : TrieOK u Nd p.hp := trieOK_frame hhp htr hSSu hk1u hk2u
    have hkN : rd u.memory N0 = rd s.memory N0 := rd_eq (by
      rw [hmu]; simp only [M3, upd]
      rw [if_neg (by rintro rfl; rw [toNat_add_k (by omega)] at hN0h; omega),
        if_neg (by rintro rfl; rw [toNat_add_k (by omega)] at hN0h; omega),
        if_neg (by rintro rfl; rw [toNat_add_k (by omega)] at hN0h; omega)])
    obtain ⟨⟨p'', hp'', hord'', hhp'', hsp'', hk1, hk2⟩, hfoot, hrc, hcb⟩ :=
      hR v3 rfl q N0 p' rfl hpu hord' (by omega) (by omega)
        ⟨Nd, trieOK_mono (by omega) htru, hNd, by show RecKind (rd u.memory N0); rw [hkN]; exact hrk⟩
    set w := ({ st3 with locals := u.locals } : PanSemStateFiniteExact 64 σ)
    have hallq : ∀ k : Nat, k < 48 → p'.sp ≤ (q + BitVec.ofNat 64 k).toNat ∧
        (q + BitVec.ofNat 64 k).toNat < scratchEnd := fun k hk => by
      rw [toNat_add_k (by omega)]; exact ⟨by omega, by omega⟩
    have hkeep : ∀ k : Nat, k < 24 → w.memory (q + BitVec.ofNat 64 k) = u.memory (q + BitVec.ofNat 64 k) :=
      fun k hk => by
        by_contra hne
        have hq' := toNat_add_k (a := q) (k := k) (by omega)
        rcases hfoot _ hne with e | e | e | e
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 24 = q + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)] at this
          omega
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 32 = q + BitVec.ofNat 64 32 from rfl, toNat_add_k (by omega)] at this
          omega
        · have := congrArg BitVec.toNat e
          rw [hq', show q + 40 = q + BitVec.ofNat 64 40 from rfl, toNat_add_k (by omega)] at this
          omega
        · exact e.2 (hallq k (by omega))
    have hww : ∀ x, w.memory x ≠ s.memory x → SafeW s Nd p.hp p.sp p.sp x := fun x hx => by
      by_cases h3 : w.memory x = u.memory x
      · exact hwu x (by rw [← h3]; exact hx)
      · rcases hfoot x h3 with e | e | e | e
        · subst e; refine safe_high (Or.inr ?_)
          rw [show q + 24 = q + BitVec.ofNat 64 24 from rfl, toNat_add_k (by omega)]; omega
        · subst e; refine safe_high (Or.inr ?_)
          rw [show q + 32 = q + BitVec.ofNat 64 32 from rfl, toNat_add_k (by omega)]; omega
        · subst e; refine safe_high (Or.inr ?_)
          rw [show q + 40 = q + BitVec.ofNat 64 40 from rfl, toNat_add_k (by omega)]; omega
        · unfold Unlive at e
          simp only [not_and, not_lt] at e
          refine safe_high ?_
          by_cases hx1 : x.toNat < heapBase
          · exact Or.inl hx1
          · exact Or.inr (by have := e.1 (by omega); omega)
    obtain ⟨hSSw, -, -⟩ := safe_keeps htr (le_refl _) hhp hspE hspE hww
    have hNw : rd w.memory N0 = rd s.memory N0 := by
      have := nsz_ge (rd s.memory N0)
      exact rd_eq (hSSw N0 hNd N0 (structCell_base (by omega)))
    have h8 : rd w.memory (q + 8) = N0 := by
      rw [show q + 8 = q + BitVec.ofNat 64 8 from rfl, rd_eq (hkeep 8 (by decide)), hmu]
      simp [M3, upd, rd]
    refine ⟨p'', hp'', hord'', le_trans hm1' hhp'', hb0, by omega, hq48, hS0, ?_,
      trieOK_frame hhp htr hSSw (hk1.trans hk1u) (hk2.trans hk2u), ?_, ⟨?_, ?_, nofun, ?_, ?_, ?_⟩, ?_⟩
    · intro e; subst e; simp at hl1; have : 0 < heapEnd := by unfold heapEnd; decide
      omega
    · show (u.locals).lookup _ = _; rw [hl]; exact hfr
    · rw [h8]; exact hNd
    · rw [h8, hNw]; exact hrk
    · rw [show q + 16 = q + BitVec.ofNat 64 16 from rfl, rd_eq (hkeep 16 (by decide)), hmu]
      simp [M3, upd, rd]
    · rw [h8]; exact rc_of_eq rfl rfl hrc
    · rw [h8]
      intro hk3
      obtain ⟨p3, hp3, c1, c2⟩ := hcb hk3
      rw [hp''] at hp3; cases hp3
      unfold cbCell
      exact ⟨le_trans hm1' (align_ge hord'.2.2.2.2.2.1 c1), lt_of_le_of_lt (align_le _) c2⟩
    · have := hkeep 0 (by decide)
      simp only [BitVec.add_zero] at this
      rw [rd_eq this, hmu]
      simp [M3, upd, rd]
  -- `var top = fr`, the loop, the release
  refine Inv.costP_dec fun u _ hu v hv _ => ?_
  obtain ⟨-, -, -, -, -, -, -, -, -, -, hfru, -, -⟩ := id hu
  rw [ev_lv, hfru] at hv
  cases hv
  refine Inv.costP_seq (R := fun _ => True)
    (Inv.CostP.pre (fillLoop_costP (Nd := Nd) (HP0 := p.hp) (S0 := p.sp) hC hNS hbeg hfin hn ha hb hf)
      fun t _ ht => by subst ht; exact finv_of_entry hu)
    (fun _ _ _ _ _ => trivial)
    (Inv.costP_seq (R := fun _ => True) (Inv.costP_of_cost (cost_call (Bh := 0) hr nohandler))
      (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (cost_return _)))

end InitECandidate.Solver.Spec.Mpt
