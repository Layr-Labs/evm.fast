import InitECandidate.Solver.MemSafe.Bal.RemoveCode

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

/-- The post of the body: a return keeps the tracking. -/
def RmQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ' t

theorem rmQ_locals {H : Hooks σ} (hH : HooksLawful guestC H) {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
    (r : Option (PanSemResultExact 64)) (t : State σ) (L : HolFiniteMapExact MlS (ValueHOL 64))
    (h : RmQ H Γ0 s0 p0 r t) : RmQ H Γ0 s0 p0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl⟩

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {L0 : Obj}

/-- Before the header store: tracked, the list header in place, locals `l` and `n`. -/
def RmS (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (L0 : Obj) (u : State σ) : Prop :=
  u.locals.lookup (nm "l") = some (.val (.word L0.base)) ∧
  u.locals.lookup (nm "n") = some (.val (.word (lN s0.memory L0))) ∧
  1 ≤ (lN s0.memory L0).toNat ∧
  ∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ u ∧ ∃ L ∈ Γ, L.base = L0.base ∧ L.ty = L0.ty ∧
    lN u.memory L = lN s0.memory L0

/-- The match: `memcpy` of the last element over it, then shrink the list. -/
theorem rm_copy (hF : FoldOK σ X guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0' : Layout guestC p0 Γ0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) {IDX : BitVec 64} :
    Hoare σ X (fun u => LuI s0 L0 IDX u ∧ ∃ I : BitVec 64,
        u.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < (lN s0.memory L0).toNat)
      rmCopy (fun r t => r = none ∧ RmS H Γ0 s0 p0 L0 t) := by
  have hH := hF.hH
  obtain ⟨hE0, hE8, hE64⟩ := lstE_pos _ hLt
  obtain ⟨x, hx, hxt, hxb, hxs, hnc, hhi⟩ := lst_arr hLH hG0 hL0 hLt
  have hN32 := lu_small hLH hG0 hL0 hLt
  unfold rmCopy
  have hlo8 := (hL0'.1 x hx).1
  have hsz8 := (hL0'.1 x hx).2.1
  refine hoare_ite ?_ ?_
  · refine hoare_callD (FunSpec.and (Helpers.foot_memcpy hF.hX hF.hal)
      (Frames.funSpec_dom (σ := σ) (X := X) (nm "memcpy"))) ?_
    intro s hs ⟨⟨⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩, I', hi', hlt⟩, w, hw, hw0⟩
      vs hvs callee v st hR hst
    have hII : I = I' := by
      have := hi.symm.trans hi'
      simpa using this
    subst hII
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, r2, rfl, ha2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, r3, rfl, ha3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    unfold luAddr at ha1
    rw [ev_add2 (Mpt.Leaves.ev_lv' hpp) (ev_mul2 (Mpt.Leaves.ev_lv' hi) (Mpt.Leaves.ev_lv' hesz))] at ha1
    cases ha1
    rw [Mpt.Leaves.ev_lv' hesz] at ha3
    cases ha3
    obtain ⟨hf, hd, hbe'⟩ := hR
    have hlt' : I.toNat < (lC s0.memory L0).toNat := by omega
    obtain ⟨h1, h2, h3⟩ := lst_elem hE8 hE0 hE64 hxs hhi (I := I) (cap := (lC s0.memory L0).toNat) hlt'
    have hcellN : (x.cell (I.toNat * (lstE L0.ty / 8))).toNat = x.lo + 8 * (I.toNat * (lstE L0.ty / 8)) := by
      apply cellN
      have hse : scratchEnd < 2 ^ 32 := by decide
      unfold Obj.HasSlot at h1
      unfold Obj.hi at hhi
      simp only [Obj.lo]
      omega
    have hDn : (lP s0.memory L0 + I * BitVec.ofNat 64 (lstE L0.ty)).toNat + lstE L0.ty ≤ x.hi := by
      rw [← hxb, h3, hcellN]
      unfold Obj.hi Obj.lo
      omega
    have hDlo : x.lo ≤ (lP s0.memory L0 + I * BitVec.ofNat 64 (lstE L0.ty)).toNat := by
      rw [← hxb, h3, hcellN]; omega
    have hpre : Helpers.BufPre 0 2 [.val (.word (lP s0.memory L0 + I * BitVec.ofNat 64 (lstE L0.ty))), a2, .val (.word (BitVec.ofNat 64 (lstE L0.ty)))] := by
      refine ⟨_, _, rfl, rfl, Or.inr ?_⟩
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
      have : x.hi ≤ scratchEnd := hhi
      omega
    obtain ⟨hgl, hmod⟩ := hf (by simp [Good]) hpre
    obtain ⟨hord, hLay0⟩ : p0.Ordered ∧ Layout guestC p0 Γ0 := ⟨hord0, hL0'⟩
    have hcellpw : ∀ k', x.HasSlot k' → luPW Γ0 p0 (x.cell k') := by
      intro k' hk'
      rcases Inc.back_cell hord0 hL0' (Struct.trk_refl (PW := luPW Γ0 p0) hG0 hp0) hx hk' with
        ⟨o0, ho0, hob, hot, hok, hce⟩ | hna
      · exact Or.inl ⟨⟨o0, ho0, _, hok, lstA_prot (hot ▸ hxt) _, hce⟩,
          Or.inr ⟨o0, ho0, hot ▸ hxt, _, hok, hce⟩⟩
      · exact Or.inr hna
    have hhi64 : x.hi < 2 ^ 64 := by
      have : scratchEnd < 2 ^ 32 := by decide
      omega
    have hRcell : ∀ a, Helpers.BufR 0 2 [.val (.word (lP s0.memory L0 + I * BitVec.ofNat 64 (lstE L0.ty))), a2,
        .val (.word (BitVec.ofNat 64 (lstE L0.ty)))] a → ∃ k', x.HasSlot k' ∧ a = x.cell k' := by
      rintro a ⟨D', N', hD', hN', hov⟩
      simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ,
        Option.some.injEq] at hD' hN'
      subst hD'; subst hN'
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at hov
      exact overlap_cell hlo8 hsz8 hhi64 hDlo hDn hov
    have hTs : Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ0 s :=
      Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hg hma hbe
    have hT' := trk_arrR hH hLH hTs (t' := { st with locals := s.locals }) hmod hgl hd hbe'
      (fun a ha => by
        obtain ⟨k', hk', rfl⟩ := hRcell a ha
        exact ⟨x, hx, hxt, k', hk', rfl⟩)
      (fun a ha => by
        obtain ⟨k', hk', rfl⟩ := hRcell a ha
        exact hcellpw k' hk')
    refine ⟨rfl, hl, hn, by omega, Γ0, hT', L0, hL0, rfl, rfl, ?_⟩
    have := hdr_keep hord hLay0 (t := s) (t' := { st with locals := s.locals }) hmod
      (fun a ha => by
        obtain ⟨k', hk', rfl⟩ := hRcell a ha
        exact ⟨x, hx, hxt, k', hk', rfl⟩) hL0 hLt (j := 1) (by omega)
    show rd _ (L0.cell 1) = lN s0.memory L0
    rw [this]
    unfold lN; rw [hm]
  · refine hoare_skip fun u _ ⟨⟨⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩, I', hi', hlt⟩, hw⟩ => ?_
    refine ⟨rfl, hl, hn, by omega, Γ0, Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hm hg hma hbe,
      L0, hL0, rfl, rfl, ?_⟩
    unfold lN; rw [hm]

/-- The header store and the return. -/
theorem rm_store (hH : HooksLawful guestC H) (hLH : LstHooks H) (hL0' : Layout guestC p0 Γ0)
    (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) :
    Hoare σ X (RmS H Γ0 s0 p0 L0) rmStore
      (fun r t => (∃ v, r = some (.returned v)) ∧ RmQ H Γ0 s0 p0 r t) := by
  unfold rmStore
  refine hoare_seq (R := fun r u => r = none ∧ ∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (luPW Γ0 p0) Γ u)
    ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => L0.base + BitVec.ofNat 64 8)
      (fun _ => lN s0.memory L0 - BitVec.ofNat 64 1) ?_ ?_ ?_
    · rintro u _ ⟨hl, hn, h1, Γ, hT, L, hL, hLb, hLty, hN⟩ w hw
      rw [ev_add2 (lp_ev_lv hl) (ev_cw _ 8)] at hw
      cases hw; rfl
    · rintro u _ ⟨hl, hn, h1, Γ, hT, L, hL, hLb, hLty, hN⟩ v hv
      rw [ev_sub2 (lp_ev_lv hn) (ev_cw _ 1)] at hv
      cases hv; rfl
    · intro u _ ⟨hl, hn, h1, Γ, hT, L, hL, hLb, hLty, hN⟩
      have hLt' : L.ty ∈ lstTys := hLty ▸ hLt
      have hok := lst_hook hLH (Struct.trk_G hT) hL hLt'
      have ha : L0.base + BitVec.ofNat 64 8 = L.cell 1 := by rw [← hLb]; rfl
      have hne01 := lcell_ne (o := L) hok.1 (i := 0) (j := 1) (by omega) (by omega) (by omega)
      have hne21 := lcell_ne (o := L) hok.1 (i := 2) (j := 1) (by omega) (by omega) (by omega)
      have hsub : (lN s0.memory L0 - BitVec.ofNat 64 1).toNat = (lN s0.memory L0).toNat - 1 :=
        toNat_sub1 (by omega)
      have hok' : LstOK Γ (Spec.Inv.upd u.memory (L0.base + BitVec.ofNat 64 8)
          (lN s0.memory L0 - BitVec.ofNat 64 1)) L := by
        obtain ⟨hlo, hnc, hc0, harr⟩ := hok
        rw [ha]
        refine ⟨hlo, ?_, ?_, ?_⟩
        · rw [lN_upd_self, lC_upd hne21, hsub]
          have : (lN u.memory L).toNat = (lN s0.memory L0).toNat := by rw [hN]
          omega
        · rw [lC_upd hne21]; exact hc0
        · rw [lP_upd hne01, lC_upd hne21]; exact harr
      refine ⟨rfl, Γ, trk_lstore hH hLH hT hL hLt' (k := 1) (by omega) ha ?_ _ hok'⟩
      exact Or.inl ⟨⟨L0, hL0, 1, lst_slot hL0' hL0 hLt (by omega), lst_prot _ hLt 1, rfl⟩,
        Or.inl ⟨L0, hL0, hLt, Or.inr (Or.inl rfl)⟩⟩
  · refine hoare_return fun t _ ⟨_, Γ, hT⟩ w _ => ⟨⟨_, rfl⟩, fun v' hv' => ?_⟩
    exact ⟨Γ, Struct.trk_congr hH hT rfl rfl rfl rfl⟩


/-- The loop. -/
theorem rm_loop (hF : FoldOK σ X guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0' : Layout guestC p0 Γ0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) {IDX : BitVec 64} :
    Hoare σ X (LuI s0 L0 IDX) rmLoop (fun r t => (r = none ∧ LuI s0 L0 IDX t) ∨
      ((∃ v, r = some (.returned v)) ∧ RmQ H Γ0 s0 p0 r t)) := by
  have hH := hF.hH
  have hN32 := lu_small hLH hG0 hL0 hLt
  unfold rmLoop
  refine hoare_while (I := LuI s0 L0 IDX) (fun s h => h) ?_ (fun s _ h _ => Or.inl ⟨rfl, h⟩)
  refine hoare_seq (R := fun r t => (r = none ∧ LuI s0 L0 IDX t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ I.toNat < (lN s0.memory L0).toNat) ∨
      ((∃ v, r = some (.returned v)) ∧ RmQ H Γ0 s0 p0 r t)) ?_ ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_post (P := fun t => (LuI s0 L0 IDX t ∧ CondTrue t (.cmp .less (lv (nm "i")) (lv (nm "n"))))
          ∧ ∃ w, ev t (.cmp .equal (.load .one luAddr) (lv (nm "idx"))) = some (.val (.word w)) ∧ w ≠ 0)
        (hoare_seq (R := fun r t => r = none ∧ RmS H Γ0 s0 p0 L0 t) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
          (hoare_pre (rm_store hH hLH hL0' hL0 hLt) fun t _ h => h.2)) ?_
      · refine hoare_pre (rm_copy hF hLH hG0 hp0 hord0 hL0' hL0 hLt (IDX := IDX)) fun t _ ⟨⟨hI, hc⟩, _⟩ => ?_
        obtain ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩ := hI
        obtain ⟨w', hw', hne'⟩ := hc
        obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
        rw [Mpt.Leaves.ev_lv' hi] at ha1
        rw [Mpt.Leaves.ev_lv' hn] at hb1
        cases ha1; cases hb1
        have hlt' : I.toNat < (lN s0.memory L0).toNat :=
          (lt_signed (by omega) (by omega)).1 hlt
        exact ⟨⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩, I, hi, hlt'⟩
      · intro r t _ _ h
        exact Or.inr h
    · refine hoare_skip fun t _ ⟨⟨hI, hc⟩, hfalse⟩ => ?_
      obtain ⟨hm, hg, hma, hbe, hl, hesz, hidx, hn, hpp, I, hi, hIN⟩ := hI
      obtain ⟨w', hw', hne'⟩ := hc
      obtain ⟨a1, b1, ha1, hb1, hlt⟩ := cmp_true hw' hne'
      rw [Mpt.Leaves.ev_lv' hi] at ha1
      rw [Mpt.Leaves.ev_lv' hn] at hb1
      cases ha1; cases hb1
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
      have h1 : (I + BitVec.ofNat 64 1).toNat = I.toNat + 1 := toNat_add1 (by omega)
      refine ⟨fun _ => ⟨hm, hg, hma, hbe, ?_, ?_, ?_, ?_, ?_, _, lk_set_self _ _ _, by rw [h1]; omega⟩,
        fun h' => (by cases h'), fun h' => (by cases h'), fun v' h' => (by cases h')⟩
      · rw [lk_set_ne _ _ (by decide)]; exact hl
      · rw [lk_set_ne _ _ (by decide)]; exact hesz
      · rw [lk_set_ne _ _ (by decide)]; exact hidx
      · rw [lk_set_ne _ _ (by decide)]; exact hn
      · rw [lk_set_ne _ _ (by decide)]; exact hpp
    · cases hv


theorem rm_hoare (hF : FoldOK σ X guestC H) (hLH : LstHooks H)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0' : Layout guestC p0 Γ0) (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) {IDX : BitVec 64}
    (hl : s0.locals.lookup (nm "l") = some (.val (.word L0.base)))
    (he : s0.locals.lookup (nm "esz") = some (.val (.word (BitVec.ofNat 64 (lstE L0.ty)))))
    (hx : s0.locals.lookup (nm "idx") = some (.val (.word IDX))) :
    Hoare σ X (fun u => u = s0) rmBody (RmQ H Γ0 s0 p0) := by
  have hH := hF.hH
  unfold rmBody
  refine Mpt.Leaves.hoare_decL (rmQ_locals hH) fun u _ hu v hv _ => ?_
  subst u
  have hv' := lp_ev_ld (ev_add2 (lp_ev_lv hl) (ev_cw _ 8)) hv
  subst hv'
  refine Mpt.Leaves.hoare_decL (rmQ_locals hH) fun u _ hu v2 hv2 _ => ?_
  subst u
  have hl1 : (setVarHOLFinite (nm "n") (.val (.word (rd s0.memory (L0.base + BitVec.ofNat 64 8)))) s0).locals.lookup (nm "l")
      = some (.val (.word L0.base)) := (lk_set_ne _ _ (by decide)).trans hl
  have hv2' := lp_ev_ld (ev_add2 (lp_ev_lv hl1) (ev_cw _ 0)) hv2
  subst hv2'
  refine Mpt.Leaves.hoare_decL (rmQ_locals hH) fun u _ hu v3 hv3 _ => ?_
  subst u
  rw [ev_cw] at hv3
  cases hv3
  refine hoare_seq (R := fun r t => (r = none ∧ LuI s0 L0 IDX t) ∨
      ((∃ v, r = some (.returned v)) ∧ RmQ H Γ0 s0 p0 r t)) ?_ ?_ ?_
  · refine hoare_pre (rm_loop hF hLH hG0 hp0 hord0 hL0' hL0 hLt) fun u _ hu => ?_
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
  · refine hoare_return fun t _ h w _ => fun v' _ => ?_
    rcases h with ⟨-, hI⟩ | ⟨⟨v, hv⟩, -⟩
    · exact ⟨Γ0, Struct.trk_congr hH (Struct.trk_refl hG0 hp0) hI.1 hI.2.1 hI.2.2.1 hI.2.2.2.1⟩
    · cases hv

end body

/-- **`bal_list_remove_idx(l, esz, idx)`**: writes only list header cells and list array cells. -/
theorem sumSpec_bal_list_remove_idx {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hLH : LstHooks H) :
    SumSpecA σ X guestC H (nm "bal_list_remove_idx") luSig LuPre (fun _ _ Γ a => Inc.LaPW Γ a)
      (fun _ _ _ _ _ _ => True) := by
  refine sumSpecA_of_returns (noExc_bal_list_remove_idx hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hH := hF.hH
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, C, rfl, sa, sb, sc, hA, hB, hC⟩ :=
    Spec.Inv.lookupCode_three_full code_bal_list_remove_idx (by decide) (by decide) (by decide) hl'
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
  have H' := rm_hoare hF hLH hG0 hp0 hord0 hL0' hL0 hLt hle hee hxx s0 hs rfl
    (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨Γ', hT⟩ := H' v rfl
  obtain ⟨p', hc⟩ := Inc.trk_sumCoreA (sg := luSig) (PWs := fun a => ProtCell guestC Γ0 a ∧ Inc.LaPW Γ0 a)
    (vs := [.val (.word L0.base), .val (.word (BitVec.ofNat 64 (lstE L0.ty))), .val (.word IDX)])
    (r := r) hT hp0 (fun h => by simp [luSig] at h)
    (fun _ _ w _ i rt w' hi _ => by simp [luSig] at hi)
  exact ⟨Γ', p0, p', hc, trivial⟩

end InitECandidate.Solver.MemSafe.Bal

#print axioms InitECandidate.Solver.MemSafe.Bal.sumSpec_bal_list_remove_idx
