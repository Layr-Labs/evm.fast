import InitECandidate.Solver.MemSafe.Bal.ListKit

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The tracked footprint: list header / array cells of the entry typing, or unallocated at entry. -/
def luPW (Γ0 : Gam) (p0 : Ptrs) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ Inc.LaPW Γ0 a) ∨ ¬ p0.Allocated a.toNat

/-- The post of the body: a returned word is the first slot of an element (`E` bytes) of a list array. -/
def LuQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (E : Nat)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ' t ∧
    ∃ w, v = .val (.word w) ∧ ∃ x ∈ Γ', IsLstA x.ty ∧ ∃ k, x.HasSlot k ∧ w = x.cell k ∧
      8 * k + E ≤ x.size

theorem luQ_locals {H : Hooks σ} (hH : HooksLawful guestC H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    {E : Nat} (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : LuQ H Γ0 s0 p0 E r t) :
    LuQ H Γ0 s0 p0 E r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, hr⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hr⟩

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L0 : Obj}

/-- The loop invariant: nothing but `i` changes. -/
def LuI (s0 : State σ) (L0 : Obj) (IDX : BitVec 64) (u : State σ) : Prop :=
  u.memory = s0.memory ∧ u.globals = s0.globals ∧ u.memaddrs = s0.memaddrs ∧ u.be = s0.be ∧
  u.locals.lookup (nm "l") = some (.val (.word L0.base)) ∧
  u.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) ∧
  u.locals.lookup (nm "idx") = some (.val (.word IDX)) ∧
  u.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))) ∧
  u.locals.lookup (nm "p") = some (.val (.word (lP s0.memory L0))) ∧
  ∃ I : BitVec 64, u.locals.lookup (nm "i") = some (.val (.word I)) ∧
    I.toNat ≤ (lN s0.memory L0).toNat

theorem trk_of_luI (hH : HooksLawful guestC H) (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {PW : BitVec 64 → Prop} {IDX : BitVec 64} {u : State σ} (h : LuI s0 L0 IDX u) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ0 u :=
  Struct.trk_congr hH (Struct.trk_refl hG0 hp0) h.1 h.2.1 h.2.2.1 h.2.2.2.1

/-- The tail: push, store the index, return the slot. -/
theorem lu_tail (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0' : Layout guestC p0 Γ0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) {IDX : BitVec 64} :
    Hoare σ X (LuI s0 L0 IDX) luTail (LuQ H Γ0 s0 p0 (lstE L0.ty)) := by
  have hH := hF.hH
  unfold luTail
  refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumSpec_lst_push hF hM hLH) (Frames.funSpec_dom _))
    (luQ_locals hH) fun s _ hI vs' hvs callee v st hRR _ _ => ?_
  obtain ⟨hS, hd, hbe⟩ := hRR
  obtain ⟨hm, hg, hma, hbe0, hl, hesz, hidx, -⟩ := hI
  obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  rw [Mpt.Leaves.ev_lv' hl] at ha1
  rw [Mpt.Leaves.ev_lv' hesz] at ha2
  cases ha1; cases ha2
  have hTs : Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ0 s :=
    Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hg hma hbe0
  have hGe : G guestC H Γ0 (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s0) hH hm hg hma hbe0 hG0
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p0 :=
    (Frames.ptrsOf_congr hg).trans hp0
  obtain ⟨Γ1, q1, q2, hc, hpost⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ0 hGe
    ⟨p0, hpe, Inc.argsOK_any2⟩ ⟨L0, hL0, hLt, rfl⟩
  have hq1 : p0 = q1 := Option.some.inj (hpe.symm.trans hc.1)
  subst hq1
  have hT1 := Struct.trk_call hTs hord0 hL0' rfl rfl hc (fun g _ => by simp [lpSigA])
    (fun a ha => absurd ha Inc.argCells_any2)
    (fun a hpc ⟨L', hL', hL't, _, hcl⟩ => Or.inl ⟨hpc, Or.inl ⟨L', hL', hL't, hcl⟩⟩) hd hbe
  obtain ⟨L', hL', hL't, hL'b, hR⟩ := hpost v rfl
  have hLL : L' = L0 := by
    have hb : L0.base = L'.base := by
      simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq,
        HolWordLab.word.injEq] at hL'b
      exact hL'b
    exact base_eq (gamOK_of_layout hL0') hL0 hL' hb.symm
  subst hLL
  obtain ⟨w, rfl, x, hx, hxt, k, hxk, rfl, hxe⟩ := lpR_slotE hR.1 (Struct.trk_G hT1) hLt
  refine hoare_seq (R := fun r t => r = none ∧ Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ1 t ∧
      t.locals.lookup (nm "e") = some (.val (.word (x.cell k)))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => x.cell k) (fun _ => IDX) ?_ ?_ ?_
    · intro t _ ht w hw
      subst ht
      rw [lp_ev_lv (lk_set_self _ _ _)] at hw
      cases hw; rfl
    · intro t _ ht w hw
      subst ht
      rw [lp_ev_lv (by rw [lk_set_ne _ _ (show nm "e" ≠ nm "idx" by decide)]; exact hidx)] at hw
      cases hw; rfl
    · intro t _ ht
      subst ht
      refine ⟨rfl, ?_, lk_set_self _ _ _⟩
      refine trk_astore hH hLH (Struct.trk_congr (t' := setVarHOLFinite (nm "e")
        (.val (.word (x.cell k))) { st with locals := s.locals }) hH hT1 rfl rfl rfl rfl) hx hxt hxk ?_ IDX
      rcases Inc.back_cell hord0 hL0' hT1 hx hxk with ⟨o0, ho0, hob, hot, hok, hce⟩ | hna
      · exact Or.inl ⟨⟨o0, ho0, _, hok, lstA_prot (hot ▸ hxt) _, hce⟩,
          Or.inr ⟨o0, ho0, hot ▸ hxt, _, hok, hce⟩⟩
      · exact Or.inr hna
  · refine hoare_return fun t _ ⟨_, hT, hle⟩ w hw => ?_
    rw [lp_ev_lv hle] at hw
    cases hw
    intro v' hv'
    cases hv'
    exact ⟨Γ1, Struct.trk_congr hH hT rfl rfl rfl rfl, _, rfl, x, hx, hxt, k, hxk, rfl, hxe⟩

/-- Facts about the entry list. -/
theorem lu_small (hLH : LstHooks H) (hG0 : G guestC H Γ0 s0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) :
    (lN s0.memory L0).toNat < 2 ^ 32 := by
  obtain ⟨x, hx, -, -, hxs, hnc, hhi⟩ := lst_arr hLH hG0 hL0 hLt
  obtain ⟨hE0, -, -⟩ := lstE_pos _ hLt
  have hse : scratchEnd < 2 ^ 32 := by decide
  have h1 : (lC s0.memory L0).toNat ≤ lstE L0.ty * (lC s0.memory L0).toNat :=
    Nat.le_mul_of_pos_left _ hE0
  unfold Obj.hi at hhi
  omega

/-- The loop: it returns the matching slot, or ends with the invariant. -/
theorem lu_loop (hH : HooksLawful guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys)
    {IDX : BitVec 64} :
    Hoare σ X (LuI s0 L0 IDX) luLoop (fun r t => (r = none ∧ LuI s0 L0 IDX t) ∨
      ((∃ v, r = some (.returned v)) ∧ LuQ H Γ0 s0 p0 (lstE L0.ty) r t)) := by
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ hLt
  obtain ⟨x, hx, hxt, hxb, hxs, hnc, hhi⟩ := lst_arr hLH hG0 hL0 hLt
  have hN32 := lu_small hLH hG0 hL0 hLt
  unfold luLoop
  refine hoare_while (I := LuI s0 L0 IDX) (fun s h => h) ?_ (fun s _ h _ => Or.inl ⟨rfl, h⟩)
  refine hoare_seq (R := fun r t => (r = none ∧ LuI s0 L0 IDX t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < (lN s0.memory L0).toNat) ∨
      ((∃ v, r = some (.returned v)) ∧ LuQ H Γ0 s0 p0 (lstE L0.ty) r t)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_return fun t _ ⟨⟨hI, hc⟩, w, hw, hw0⟩ v hv => ?_
      obtain ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩ := hI
      obtain ⟨w', hw', hne'⟩ := hc
      obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
      rw [Mpt.Leaves.ev_lv' hi] at ha1
      rw [Mpt.Leaves.ev_lv' hn] at hb1
      cases ha1; cases hb1
      have hN := lu_small hLH hG0 hL0 hLt
      have hlt' : I.toNat < (lN s0.memory L0).toNat :=
        (lt_signed (by omega) (by omega)).1 hlt
      unfold luAddr at hv
      rw [ev_add2 (Mpt.Leaves.ev_lv' hpp) (ev_mul2 (Mpt.Leaves.ev_lv' hi) (Mpt.Leaves.ev_lv' hesz))] at hv
      cases hv
      obtain ⟨h1, h2, h3⟩ := lst_elem hE8 hE0 hE64 hxs hhi (I := I) (cap := (lC s0.memory L0).toNat)
        (by omega)
      refine Or.inr ⟨⟨_, rfl⟩, fun v' hv' => ?_⟩
      cases hv'
      refine ⟨Γ0, Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hg hma hbe, _, rfl, x, hx, hxt,
        _, h1, ?_, h2⟩
      rw [← h3, hxb]
    · refine hoare_skip fun t _ ⟨⟨hI, hc⟩, hfalse⟩ => ?_
      obtain ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩ := hI
      obtain ⟨w', hw', hne'⟩ := hc
      obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
      rw [Mpt.Leaves.ev_lv' hi] at ha1
      rw [Mpt.Leaves.ev_lv' hn] at hb1
      cases ha1; cases hb1
      have hN := lu_small hLH hG0 hL0 hLt
      have hlt' : I.toNat < (lN s0.memory L0).toNat :=
        (lt_signed (by omega) (by omega)).1 hlt
      exact Or.inl ⟨rfl, ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩, I, hi, hlt'⟩
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨⟨v, hv⟩, hq⟩
    · exact absurd h hr
    · subst hv
      refine ⟨fun h' => (by cases h'), fun h' => (by cases h'), fun h' => (by cases h'), fun v' h' => ?_⟩
      cases h'
      exact Or.inr ⟨⟨v, rfl⟩, hq⟩
  · refine hoare_assign fun t _ hR w hw _ => ?_
    rcases hR with ⟨-, hI, I, hi, hlt⟩ | ⟨⟨v, hv⟩, -⟩
    · obtain ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I', hi', hIN⟩ := hI
      have hII : I = I' := by
        have := hi.symm.trans hi'
        simpa using this
      subst hII
      rw [ev_add2 (Mpt.Leaves.ev_lv' hi') (ev_cw _ 1)] at hw
      cases hw
      have hN := lu_small hLH hG0 hL0 hLt
      have h1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_add1 (by omega)
      refine ⟨fun _ => ⟨hm, hg, hma, hbe, ?_, ?_, ?_, ?_, ?_, _, lk_set_self _ _ _, by rw [h1]; omega⟩,
        fun h' => (by cases h'), fun h' => (by cases h'), fun v' h' => (by cases h')⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hl
      · rw [lk_set_ne _ _ (by decide)]; exact hesz
      · rw [lk_set_ne _ _ (by decide)]; exact hidx
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · rw [lk_set_ne _ _ (by decide)]; exact hpp
    · cases hv

/-- The body from the entry state. -/
theorem lu_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0' : Layout guestC p0 Γ0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) {IDX : BitVec 64}
    (hl : s0.locals.lookup (nm "l") = some (.val (.word L0.base)))
    (he : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))))
    (hx : s0.locals.lookup (nm "idx") = some (.val (.word IDX))) :
    Hoare σ X (fun u => u = s0) luBody (LuQ H Γ0 s0 p0 (lstE L0.ty)) := by
  have hH := hF.hH
  unfold luBody
  refine Mpt.Leaves.hoare_decL (luQ_locals hH) fun u _ hu v hv _ => ?_
  subst u
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hl) (ev_cw _ 8)) hv
  subst hv'
  refine Mpt.Leaves.hoare_decL (luQ_locals hH) fun u _ hu v2 hv2 _ => ?_
  subst u
  have hl1 : (setVarHOLFinite (nm "n") (.val (.word (rd s0.memory (L0.base + BitVec.ofNat 64 8)))) s0).locals.lookup (nm "l")
      = some (.val (.word L0.base)) := (lk_set_ne _ _ (by decide)).trans hl
  have hv2' := lp_ev_ld (ev_add2 (lp_ev_lv hl1) (ev_cw _ 0)) hv2
  subst hv2'
  refine Mpt.Leaves.hoare_decL (luQ_locals hH) fun u _ hu v3 hv3 _ => ?_
  subst u
  rw [ev_cw] at hv3
  cases hv3
  refine hoare_seq (R := fun r t => (r = none ∧ LuI s0 L0 IDX t) ∨
      ((∃ v, r = some (.returned v)) ∧ LuQ H Γ0 s0 p0 (lstE L0.ty) r t)) ?_ ?_ ?_
  · refine hoare_pre (lu_loop hH hLH hG0 hp0 hL0 hLt) fun u _ hu => ?_
    subst hu
    have hN : rd s0.memory (L0.base + BitVec.ofNat 64 8) = lN s0.memory L0 := rfl
    have hP : rd s0.memory (L0.base + BitVec.ofNat 64 0) = lP s0.memory L0 := rfl
    refine ⟨rfl, rfl, rfl, rfl, ?_, ?_, ?_, ?_, ?_, _, lk_set_self _ _ _, by simp⟩
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "l" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "l" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "l" by decide)]
      exact hl
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "esz" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "esz" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "esz" by decide)]
      exact he
    · simp only [lk_set_ne _ _ (show nm "i" ≠ nm "idx" by decide),
        lk_set_ne _ _ (show nm "p" ≠ nm "idx" by decide), lk_set_ne _ _ (show nm "n" ≠ nm "idx" by decide)]
      exact hx
    · rw [← hN]
      simp only [lk_set_ne _ _ (show nm "i" ≠ nm "n" by decide), lk_set_ne _ _ (show nm "p" ≠ nm "n" by decide)]
      exact lk_set_self _ _ _
    · rw [← hP]
      simp only [lk_set_ne _ _ (show nm "i" ≠ nm "p" by decide)]
      exact lk_set_self _ _ _
  · intro r t _ hr _ h
    rcases h with ⟨h, -⟩ | ⟨-, hq⟩
    · exact absurd h hr
    · exact hq
  · refine hoare_pre (lu_tail hF hM hLH hG0 hp0 hord0 hL0' hL0 hLt (IDX := IDX)) fun t _ h => ?_
    rcases h with ⟨-, h⟩ | ⟨⟨v, hv⟩, -⟩
    · exact h
    · cases hv

end body

/-- Preconditions: a list header, its element size, an arbitrary index. -/
def LuPre (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) : Prop :=
  ∃ L ∈ Γ, L.ty ∈ lstTys ∧ ∃ idx : BitVec 64,
    vs = [.val (.word L.base), .val (.word (BitVec.ofNat 64 (lstE L.ty))), .val (.word idx)]

def luSig : Sig := ⟨[.any, .any, .any], [], [], true⟩

/-- A returned word is the first slot of an element of a list array (`E` bytes). -/
def LuPost (vs : List (ValueHOL 64)) (_ : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (_ : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ∃ L ∈ Γ, L.ty ∈ lstTys ∧ vs[0]? = some (.val (.word L.base)) ∧
    ∃ w, v = .val (.word w) ∧ ∃ x ∈ Γ', IsLstA x.ty ∧ ∃ k, x.HasSlot k ∧ w = x.cell k ∧
      8 * k + lstE L.ty ≤ x.size

/-- **`lst_upsert_idx(l, esz, idx)`**: for a list header `l` of `Γ` and its element size, writes only
list header cells and list array cells; a return is the first slot of an element of a list array. -/
theorem sumSpec_lst_upsert_idx {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) :
    SumSpecA σ X guestC H (nm "lst_upsert_idx") luSig LuPre (fun _ _ Γ a => Inc.LaPW Γ a) LuPost := by
  refine sumSpecA_of_returns (noExc_lst_upsert_idx hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hH := hF.hH
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C, rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.Inv.lookupCode_three_full code_lst_upsert_idx (by decide) (by decide) (by decide) hl'
  obtain ⟨L0, hL0, hLt, IDX, hvs⟩ := hpre
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl⟩ := hvs
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0', -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hle : s0.locals.lookup (nm "l") = some (.val (.word L0.base)) := by rw [hloc]; exact hA
  have hee : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))) := by
    rw [hloc]; exact hB
  have hxx : s0.locals.lookup (nm "idx") = some (.val (.word IDX)) := by rw [hloc]; exact hC
  have H' := lu_hoare hF hM hLH hG0 hp0 hord0 hL0' hL0 hLt hle hee hxx s0 hs rfl
    (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT, w, rfl, x, hx, hxt, k, hxk, rfl, hxe⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := luSig) (PWs := fun a => ProtCell guestC Γ0 a ∧ Inc.LaPW Γ0 a)
    (vs := [.val (.word L0.base), .val (.word (BitVec.ofNat 64 (lstE L0.ty))), .val (.word IDX)])
    (r := r) hT hp0 (fun h => by simp [luSig] at h)
    (fun _ _ w _ i rt w' hi _ => by simp [luSig] at hi)
  refine ⟨Γ', p0, p', hc, fun v' hv' => ?_⟩
  rw [hv] at hv'
  cases hv'
  exact ⟨L0, hL0, hLt, rfl, _, rfl, x, hx, hxt, k, hxk, rfl, hxe⟩


end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_lst_upsert_idx
