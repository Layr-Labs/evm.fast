import InitECandidate.Solver.Spec.Mpt.Leaves.Compact
import InitECandidate.Solver.Band4.K2nFrame
import InitECandidate.Solver.MemSafe.Hooks.RecNib
import InitECandidate.Solver.MemSafe.Alloc

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `compact_to_nibbles`: the value spec (stage 2b)

`funSpec_ctn_val`: a returning `compact_to_nibbles(P, N)` (`0 < N < 2^60`, from an ordered allocator)
returns `<out, len, leaf>` where `out` is the fresh `alloc(2 N)` block (8-aligned, in the heap, unallocated
at the entry, allocated at the exit), `len ≤ 2 N`, the byte order is kept, and every byte of
`[out, out + len)` is a nibble. (On even paths the last bytes of the block are unwritten, which is why
only `[out, out + len)` is claimed.)
-/

namespace InitECandidate.Solver.MemSafe.Dn
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd rd)

variable {σ : Type} {X : Ctx 64}

/-- The facts a returning `compact_to_nibbles` gives. -/
def CtnRet (s t : State σ) (p p' : Ptrs) (N : BitVec 64) (v : ValueHOL 64) : Prop :=
  ∃ out len leaf : BitVec 64, v = .rStruct [.val (.word out), .val (.word len), .val (.word leaf)] ∧
    ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧ t.be = s.be ∧
    out.toNat % 8 = 0 ∧ heapBase ≤ out.toNat ∧ out.toNat + 2 * N.toNat ≤ p'.hp ∧
    (∀ a : Nat, out.toNat ≤ a → a < out.toNat + 2 * N.toNat → ¬ p.Allocated a) ∧
    len.toNat ≤ 2 * N.toNat ∧
    ∀ j, j < len.toNat → Hooks.byteAt t.memory s.be (out + BitVec.ofNat 64 j) < 16

/-- The locals of the tail, with `c0` and `is_leaf`. -/
structure CtnX (L : HolFiniteMapExact MlS (ValueHOL 64)) (A N Q C0 IL : BitVec 64) : Prop where
  base : CtnL L A N Q
  c0 : L.lookup (nm "c0") = some (.val (.word C0))
  leaf : L.lookup (nm "is_leaf") = some (.val (.word IL))

theorem ctnX_set {L : HolFiniteMapExact MlS (ValueHOL 64)} {A N Q C0 IL : BitVec 64}
    (h : CtnX L A N Q C0 IL) {x : MlS} (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (h3 : x ≠ nm "out")
    (h4 : x ≠ nm "c0") (h5 : x ≠ nm "is_leaf") (v : ValueHOL 64) :
    CtnX (L.update (x, v)) A N Q C0 IL :=
  ⟨ctnL_set h.base h1 h2 h3 v, by rw [lookup_update_ne _ _ h4]; exact h.c0,
    by rw [lookup_update_ne _ _ h5]; exact h.leaf⟩


theorem byteAt_eq (m : MemSafe.Mem) (be : Bool) (a : BitVec 64) :
    Hooks.byteAt m be a = Spec.Mpt.byteOf m be a := rfl

theorem byte_after_store {M : MemSafe.Mem} {be : Bool} {Q x : BitVec 64} (hx : x.toNat < 16) :
    Spec.Mpt.byteOf (Spec.Inv.upd M (panByteAlignHOL Q) (panSetByteHOL Q
      (BitVec.ofNat 64 (BitVec.ofNat 8 x.toNat).toNat) (Spec.Inv.rd M (panByteAlignHOL Q)) be)) be Q < 16 := by
  rw [Band4.byteOf_upd_set, if_pos rfl]
  simp only [BitVec.toNat_ofNat]
  omega

/-- The invariant after `var k = ...; if odd { ... }`. -/
def TK (be : Bool) (p : Ptrs) (A N Q C0 IL K : BitVec 64) (t : State σ) : Prop :=
  CtnX t.locals A N Q C0 IL ∧ t.locals.lookup (nm "k") = some (.val (.word K)) ∧ K.toNat ≤ 1 ∧
    t.be = be ∧ ptrsOf t = some p ∧ (K.toNat = 1 → Hooks.byteAt t.memory be Q < 16)

theorem tk_ite {be : Bool} {p : Ptrs} {A N Q C0 IL : BitVec 64} :
    Hoare σ X (fun t => CtnX t.locals A N Q C0 IL ∧ t.be = be ∧ ptrsOf t = some p ∧
        t.locals.lookup (nm "k") = some (.val (.word 0)))
      (.ite (.cmp .notEqual (lv (nm "odd")) (cw 0))
        (.seq (.storeByte (lv (nm "out")) (.op .and [lv (nm "c0"), cw 15]))
          (.assign .local (nm "k") (cw 1))) .skip)
      (fun r t => r = none ∧ ∃ K, TK be p A N Q C0 IL K t) := by
  refine hoare_ite ?_ (hoare_skip fun t _ ⟨⟨hX, hbe, hp, hk⟩, _⟩ => ?_)
  · refine Spec.Inv.hseq (R := fun t => CtnX t.locals A N Q C0 IL ∧ t.be = be ∧ ptrsOf t = some p ∧
        Hooks.byteAt t.memory be Q < 16) ?_ ?_
    · refine Spec.Inv.hoare_storeByte fun t _ ⟨⟨hX, hbe, hp, hk⟩, _⟩ w x mem hw hx hmem => ?_
      rw [ev_lw hX.base.out] at hw
      cases hw
      obtain ⟨x', hx', hx16⟩ := Band4.k2n_ev_and (u := t) hX.c0
      rw [hx'] at hx
      cases hx
      obtain ⟨-, rfl⟩ := Spec.Inv.storeByte_eq hmem
      refine ⟨rfl, hX, hbe, hp, ?_⟩
      show Hooks.byteAt _ be Q < 16
      rw [← hbe]
      exact byte_after_store hx16
    · refine hoare_assign fun t _ ⟨hX, hbe, hp, hb⟩ v hv _ => ?_
      rw [ev_cw] at hv
      cases hv
      refine ⟨rfl, BitVec.ofNat 64 1, ⟨ctnX_set hX (by decide) (by decide) (by decide) (by decide) (by decide) _,
        lk_set_self _ _ _, by simp, hbe, hp, fun _ => hb⟩⟩
  · exact ⟨rfl, 0, hX, hk, by simp, hbe, hp, fun h => by simp at h⟩


/-- The tail's return: the call and the `return`. -/
theorem ctn_call_ret (hC : X.code.lookup = guestCode) {be : Bool} {p : Ptrs} {A N Q C0 IL : BitVec 64}
    (hN0 : N.toNat ≠ 0) (hN : N.toNat < 2 ^ 60) (hQe : Q.toNat + 2 * N.toNat ≤ heapEnd) :
    Hoare σ X (fun t => ∃ K, TK be p A N Q C0 IL K t)
      (.seq (.call (some (none, none)) (nm "key_to_nibbles")
          [.op .add [lv (nm "p"), cw 1], .op .sub [lv (nm "n"), cw 1],
            .op .add [lv (nm "out"), lv (nm "k")]])
        (.return (.rstruct [lv (nm "out"),
          .op .add [lv (nm "k"), .panop .mul [cw 2, .op .sub [lv (nm "n"), cw 1]]],
          lv (nm "is_leaf")])))
      (fun r t => ∀ w, r = some (.returned w) → ∃ len : BitVec 64,
        w = .rStruct [.val (.word Q), .val (.word len), .val (.word IL)] ∧ len.toNat ≤ 2 * N.toNat ∧
        ptrsOf t = some p ∧ t.be = be ∧
        ∀ j, j < len.toNat → Hooks.byteAt t.memory be (Q + BitVec.ofNat 64 j) < 16) := by
  have hE := Hooks.heapEnd_lt
  refine Spec.Inv.hseq (R := fun t => ∃ K, CtnX t.locals A N Q C0 IL ∧
      t.locals.lookup (nm "k") = some (.val (.word K)) ∧ K.toNat ≤ 1 ∧ t.be = be ∧ ptrsOf t = some p ∧
      ∀ j, j < K.toNat + 2 * (N.toNat - 1) → Hooks.byteAt t.memory be (Q + BitVec.ofNat 64 j) < 16) ?_ ?_
  · refine hoare_callD (((MemSafe.Helpers.foot_key_to_nibbles hC : FunSpec _ _ _ _).and
      (Band4.ret_key_to_nibbles_frame hC))) ?_
    intro t _ ⟨K, hX, hK, hK1, hbe, hp, hbyte⟩ vs hvs callee v st ⟨hR1, hR2⟩ _
    rw [evs_cons (ev_add2 (ev_lv' hX.base.p) (ev_cw _ 1)) (evs_cons (ev_sub2 (ev_lv' hX.base.n) (ev_cw _ 1))
      (evs_cons (ev_add2 (ev_lv' hX.base.out) (ev_lv' hK)) evs_nil))] at hvs
    simp only [Option.some.injEq] at hvs
    subst hvs
    have hN1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 := by
      rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)]; simp
    have hQK : (Q + K).toNat = Q.toNat + K.toNat := by
      rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    have hON : (Q + K).toNat + 2 * (N - BitVec.ofNat 64 1).toNat < 2 ^ 64 := by
      rw [hN1, hQK]; omega
    obtain ⟨hgl, -⟩ := hR1 (by simp [Good]) ⟨Q + K, N - BitVec.ofNat 64 1, rfl, rfl, Or.inr (by
      rw [hN1, hQK]; simp only [heapEnd, scratchEnd] at hQe ⊢; omega)⟩
    obtain ⟨hbe2, hnib0, hfr0⟩ := hR2 _ _ _ rfl hON v rfl
    have hbe3 : st.be = t.be := hbe2
    have hnib : Band4.NibOK st.memory st.be (Q + K) (2 * (N.toNat - 1)) := by
      rw [← hN1]; rw [hbe3]; exact hnib0
    have hfr : ∀ a : BitVec 64, (a.toNat < (Q + K).toNat ∨ (Q + K).toNat + 2 * (N.toNat - 1) ≤ a.toNat) →
        Spec.Mpt.byteOf st.memory st.be a = Spec.Mpt.byteOf t.memory st.be a := by
      intro a ha
      rw [← hN1] at ha
      have h := hfr0 a ha
      change Spec.Mpt.byteOf st.memory t.be a = Spec.Mpt.byteOf t.memory t.be a at h
      rw [hbe3]; exact h
    refine ⟨rfl, K, hX, hK, hK1, ?_, ?_, ?_⟩
    · show st.be = be
      rw [hbe3]; exact hbe
    · show ptrsOf st = some p
      rw [Spec.Mpt.ptrsOf_frame hgl]; exact hp
    · intro j hj
      show Hooks.byteAt st.memory be _ < 16
      have hbe2' : st.be = be := hbe3.trans hbe
      rw [byteAt_eq, ← hbe2']
      by_cases hj0 : j < K.toNat
      · have hj1 : j = 0 ∧ K.toNat = 1 := by omega
        obtain ⟨rfl, hK1'⟩ := hj1
        have hq := hbyte hK1'
        have := hfr Q (Or.inl (by rw [hQK]; omega))
        have e0 : Q + BitVec.ofNat 64 0 = Q := by simp
        rw [e0, this, hbe3]
        have hq' := hq
        rw [byteAt_eq, ← hbe] at hq'
        exact hq'
      · have := hnib (j - K.toNat) (by omega)
        have e : Q + K + BitVec.ofNat 64 (j - K.toNat) = Q + BitVec.ofNat 64 j := by
          apply BitVec.eq_of_toNat_eq
          simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
          omega
        rw [e] at this
        exact this
  · refine hoare_return fun t _ ⟨K, hX, hK, hK1, hbe, hp, hby⟩ v hv w hw => ?_
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    have h2 : ev t (.panop .mul [cw 2, .op .sub [lv (nm "n"), cw 1]]) =
        some (.val (.word (BitVec.ofNat 64 2 * (N - BitVec.ofNat 64 1)))) :=
      ev_mul2 (ev_cw _ 2) (ev_sub2 (ev_lv' hX.base.n) (ev_cw _ 1))
    have h3 := ev_add2 (ev_lv' hK) h2
    rw [ev_rstruct (evs_cons (ev_lw hX.base.out) (evs_cons h3 (evs_cons (ev_lw hX.leaf) evs_nil)))] at hv
    cases hv
    have hN1 : (N - BitVec.ofNat 64 1).toNat = N.toNat - 1 := by
      rw [BitVec.toNat_sub_of_le (by rw [BitVec.le_def]; simp; omega)]; simp
    have hm : (BitVec.ofNat 64 2 * (N - BitVec.ofNat 64 1)).toNat = 2 * (N.toNat - 1) := by
      rw [BitVec.toNat_mul, BitVec.toNat_ofNat, hN1, Nat.mod_eq_of_lt (by omega),
        Nat.mod_eq_of_lt (by omega)]
    have hl : (K + BitVec.ofNat 64 2 * (N - BitVec.ofNat 64 1)).toNat = K.toNat + 2 * (N.toNat - 1) := by
      rw [BitVec.toNat_add, hm, Nat.mod_eq_of_lt (by omega)]
    refine ⟨_, rfl, by rw [hl]; omega, ?_, ?_, ?_⟩
    · show ptrsOf (emptyLocalsHOLFinite t) = some p
      exact hp
    · exact hbe
    · rw [hl]; exact hby


/-- The whole tail, including `var k = 0`. -/
theorem ctn_tail_all (hC : X.code.lookup = guestCode) {be : Bool} {p : Ptrs} {A N Q C0 IL : BitVec 64}
    (hN0 : N.toNat ≠ 0) (hN : N.toNat < 2 ^ 60) (hQe : Q.toNat + 2 * N.toNat ≤ heapEnd) :
    Hoare σ X (fun t => CtnX t.locals A N Q C0 IL ∧ t.be = be ∧ ptrsOf t = some p) ctnTail
      (fun r t => ∀ w, r = some (.returned w) → ∃ len : BitVec 64,
        w = .rStruct [.val (.word Q), .val (.word len), .val (.word IL)] ∧ len.toNat ≤ 2 * N.toNat ∧
        ptrsOf t = some p ∧ t.be = be ∧
        ∀ j, j < len.toNat → Hooks.byteAt t.memory be (Q + BitVec.ofNat 64 j) < 16) := by
  unfold ctnTail
  refine hoare_decL (fun r t L h => h) fun s _ ⟨hX, hbe, hp⟩ v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine Spec.Inv.hseq (R := fun t => ∃ K, TK be p A N Q C0 IL K t) ?_
    (ctn_call_ret hC hN0 hN hQe)
  refine hoare_conseq (tk_ite (X := X) (be := be) (p := p) (A := A) (N := N) (Q := Q) (C0 := C0) (IL := IL))
    (fun t _ ht => ?_) (fun r t _ _ h => h)
  subst ht
  refine ⟨ctnX_set hX (by decide) (by decide) (by decide) (by decide) (by decide) _, hbe, hp, lk_set_self _ _ _⟩


/-- The entry facts carried through the four scalar declarations. -/
def SS (s0 : State σ) (A N : BitVec 64) (t : State σ) : Prop :=
  t.locals.lookup (nm "p") = some (.val (.word A)) ∧ t.locals.lookup (nm "n") = some (.val (.word N)) ∧
    t.memory = s0.memory ∧ t.globals = s0.globals ∧ t.be = s0.be

theorem ss_set {s0 : State σ} {A N : BitVec 64} {t : State σ} (h : SS s0 A N t) {x : MlS}
    (h1 : x ≠ nm "p") (h2 : x ≠ nm "n") (v : ValueHOL 64) : SS s0 A N (setVarHOLFinite x v t) :=
  ⟨by rw [lk_set_ne _ _ h1]; exact h.1, by rw [lk_set_ne _ _ h2]; exact h.2.1,
    h.2.2.1, h.2.2.2.1, h.2.2.2.2⟩

theorem h2N_toNat {N : BitVec 64} (hN : N.toNat < 2 ^ 60) : (BitVec.ofNat 64 2 * N).toNat = 2 * N.toNat := by
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := 2) (by omega),
    Nat.mod_eq_of_lt (by omega)]

theorem ctn_mid (hC : X.code.lookup = guestCode) {s0 : State σ} {A N : BitVec 64} {p : Ptrs}
    (hN : N.toNat < 2 ^ 60) (hp : ptrsOf s0 = some p) (hord : p.Ordered) :
    Hoare σ X (fun t => SS s0 A N t ∧ N.toNat ≠ 0) ctnMid
      (fun r t => ∀ w, r = some (.returned w) → ∃ p', CtnRet s0 t p p' N w) := by
  refine hoare_pure fun hN0 => ?_
  unfold ctnMid
  have hE := Hooks.heapEnd_lt
  refine hoare_decL (fun r t L h => h) fun s _ hS v hv _ => ?_
  obtain ⟨C0, rfl, hC0⟩ := ev_loadByte_word hv
  refine hoare_decL (fun r t L h => h) (n := nm "first") fun s1 _ hs1 v1 hv1 _ => ?_
  subst hs1
  refine hoare_decL (fun r t L h => h) (n := nm "is_leaf") fun s2 _ hs2 v2 hv2 hsh2 => ?_
  subst hs2
  obtain ⟨IL, rfl⟩ := val_of_shapeEq_one hsh2
  refine hoare_decL (fun r t L h => h) (n := nm "odd") fun s3 _ hs3 v3 hv3 _ => ?_
  subst hs3
  -- the facts at the allocation
  have hS1 := ss_set hS (x := nm "c0") (by decide) (by decide) (.val (.word C0))
  have hS2 := ss_set hS1 (x := nm "first") (by decide) (by decide) v1
  have hS3 := ss_set hS2 (x := nm "is_leaf") (by decide) (by decide) (.val (.word IL))
  have hS4 := ss_set hS3 (x := nm "odd") (by decide) (by decide) v3
  have hc0 : (setVarHOLFinite (nm "odd") v3 (setVarHOLFinite (nm "is_leaf") (.val (.word IL))
      (setVarHOLFinite (nm "first") v1 (setVarHOLFinite (nm "c0") (.val (.word C0)) s)))).locals.lookup
      (nm "c0") = some (.val (.word C0)) := by
    rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  have hil : (setVarHOLFinite (nm "odd") v3 (setVarHOLFinite (nm "is_leaf") (.val (.word IL))
      (setVarHOLFinite (nm "first") v1 (setVarHOLFinite (nm "c0") (.val (.word C0)) s)))).locals.lookup
      (nm "is_leaf") = some (.val (.word IL)) := by
    rw [lk_set_ne _ _ (by decide)]
    exact lk_set_self _ _ _
  set s4 := setVarHOLFinite (nm "odd") v3 (setVarHOLFinite (nm "is_leaf") (.val (.word IL))
      (setVarHOLFinite (nm "first") v1 (setVarHOLFinite (nm "c0") (.val (.word C0)) s))) with hs4def
  refine hoare_decCallL (((MemSafe.allocSpec_alloc (σ := σ) hC)).and (MemSafe.funSpec_be' _))
    (fun r t L h => h) fun s5 _ hs5 vs hvs callee v st ⟨hR, hbe⟩ _ _ => ?_
  subst hs5
  rw [evs_cons (ev_mul2 (ev_cw _ 2) (ev_lv' hS4.2.1)) evs_nil] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hpS : ptrsOf (callEntryStateHOLFinite s4 callee) = some p := by
    have hg' : (callEntryStateHOLFinite s4 callee).globals = s0.globals := hS4.2.2.2.1
    exact (Spec.Mpt.ptrsOf_frame hg').trans hp
  obtain ⟨hm, hglob, p', hp', ho', hmono, hq⟩ := hR (by simp [Good]) _ p rfl hpS hord
  obtain ⟨Q, rfl, hQ8, ⟨hQ1, hQ2⟩, hfree⟩ := hq _ rfl
  rw [h2N_toNat hN] at hQ2 hfree
  have hQe : Q.toNat + 2 * N.toNat ≤ heapEnd := le_trans hQ2 ho'.2.1
  have hbe0 : st.be = s0.be := hbe.trans hS4.2.2.2.2
  refine hoare_conseq (ctn_tail_all hC hN0 hN hQe (be := s0.be) (p := p') (A := A) (N := N)
    (C0 := C0) (IL := IL) (Q := Q)) (fun t _ ht => ?_) (fun r t _ _ h => ?_)
  · subst ht
    refine ⟨⟨⟨?_, ?_, lk_set_self _ _ _⟩, ?_, ?_⟩, hbe0, hp'⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hS4.1
    · rw [lk_set_ne _ _ (by decide)]; exact hS4.2.1
    · rw [lk_set_ne _ _ (by decide)]; exact hc0
    · rw [lk_set_ne _ _ (by decide)]; exact hil
  · intro w hw
    obtain ⟨len, rfl, hl, hpt, hbe', hb⟩ := h w hw
    exact ⟨p', Q, len, IL, rfl, hpt, ho', hmono, hbe', hQ8, hQ1, hQ2, hfree, hl, hb⟩



/-- **`compact_to_nibbles`' value spec.** -/
theorem funSpec_ctn_val (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "compact_to_nibbles") (fun vs s0 r t => ∀ v, r = .returned v →
      ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] → N.toNat < 2 ^ 60 →
        ∀ p : Ptrs, ptrsOf s0 = some p → p.Ordered → ∃ p', CtnRet s0 t p p' N v) := by
  refine funSpec_of_hoare (R := fun vs s0 v t => ∀ P N : BitVec 64,
    vs = [.val (.word P), .val (.word N)] → N.toNat < 2 ^ 60 →
      ∀ p : Ptrs, ptrsOf s0 = some p → p.Ordered → ∃ p', CtnRet s0 t p p' N v) ?_
  intro vs body callee rs hl s0 hs0 hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_compact_to_nibbles (by decide) hl
  obtain ⟨Av, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨Nv, rfl⟩ := val_of_shapeEq_one hsB
  have hlp : s0.locals.lookup (nm "p") = some (.val (.word Av)) := by rw [hloc]; exact hA
  have hln : s0.locals.lookup (nm "n") = some (.val (.word Nv)) := by rw [hloc]; exact hB
  refine hoare_conseq (P := fun t => t = s0) (Q := fun r t => ∀ v, r = some (.returned v) →
      ∀ p : Ptrs, ptrsOf s0 = some p → p.Ordered → Nv.toNat < 2 ^ 60 → ∃ p', CtnRet s0 t p p' Nv v)
    ?_ (fun t _ h => h) (fun r t _ _ h v hv P N hvs hN p hp ho => ?_)
  swap
  · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    exact h v hv p hp ho hN
  refine hoare_ret_ptrs (R := fun p v t => ∃ p', CtnRet s0 t p p' Nv v) fun p hp ho hN => ?_
  unfold ctnBody
  refine hoare_guard_seq (funRet_mpt_fail hC) ?_
  refine hoare_pre (ctn_mid hC (A := Av) (N := Nv) hN hp ho) (fun t _ ⟨ht, hc⟩ => ?_)
  subst ht
  refine ⟨⟨hlp, hln, rfl, rfl, rfl⟩, ?_⟩
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
  rw [ev_lv, hln] at hx
  rw [ev_cw] at hy
  cases hx; cases hy
  intro h0
  have : Nv = 0 := BitVec.eq_of_toNat_eq (by simpa using h0)
  subst this
  simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hxy

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.funSpec_ctn_val
