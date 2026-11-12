import InitECandidate.Solver.Spec.Inv.FirstDiff
import InitECandidate.Solver.Spec.Inv.HtabNew
import InitECandidate.Solver.Spec.Inv.HtabFrame

/-!
# `htab_grow`: the arrays move to fresh, twice larger blocks

`growBody_hoare`: from a table with heap pointer `H0` (8-aligned, `≤ HEAP_END`) whose arrays lie
outside the free heap `[H0, HEAP_END)`, a returning `htab_grow(T)` allocates three blocks
`[H0, H0 + sK)`, `[H0 + sK, .. + sN)`, `[.., .. + sO)` (keys, nodes, order, each for `2 cap + 1`
entries), copies the old arrays word for word into their first `cap + 1` entries, points the
header at them and doubles the capacity (`GrowRaw`). `growRaw_*` turn this into table facts.

`grow_arr` is the shared step `var x = alloc(n); memcpy(x, t[off], m); st t + off, x; ...`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Inv
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-! ## The code -/

/-- `(ncap + 1) * k` -/
def gAlloc (k : ExpHOL 64) : ExpHOL 64 := .panop .mul [.op .add [lv (nm "ncap"), cw 1], k]
/-- `(nodecap + 1) * k` -/
def gCopySz (k : ExpHOL 64) : ExpHOL 64 := .panop .mul [.op .add [lv (nm "nodecap"), cw 1], k]
/-- `memcpy(x, t[off], (nodecap + 1) * k)` -/
def gCopy (x : String) (off : Nat) (k : ExpHOL 64) : ProgHOL 64 :=
  callD (nm "memcpy") [lv (nm x), tLoad off, gCopySz k]

def gArr (x : String) (off : Nat) (k : ExpHOL 64) (rest : ProgHOL 64) : ProgHOL 64 :=
  .decCall (nm x) .one (nm "alloc") [gAlloc k]
    (.seq (gCopy x off k) (.seq (.store (tAddr off) (lv (nm x))) rest))

def growTail : ProgHOL 64 :=
  .seq (.store (tAddr 16) (.panop .mul [tLoad 16, cw 2]))
    (.seq (.store (tAddr 80) (lv (nm "ncap"))) (.return (cw 0)))

def growBody : ProgHOL 64 :=
  .dec (nm "nodecap") .one (tLoad 80)
    (.dec (nm "ncap") .one (.panop .mul [lv (nm "nodecap"), cw 2])
      (.dec (nm "stride") .one (tLoad 8)
        (gArr "keys" 32 (lv (nm "stride")) (gArr "nodes" 40 (cw 32) (gArr "order" 48 (cw 8) growTail)))))

def growParams : List (MlS × ShapeHOL) := [(nm "t", .one)]

theorem entry_htab_grow : fnEntry Guest.Software.guestFn_htab_grow =
    (nm "htab_grow", growParams, growBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_htab_grow : guestCode (nm "htab_grow") = some (growParams, growBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 137) (by decide)) ⟨_, rfl⟩
    entry_htab_grow

/-! ## Calling `memcpy` -/

section calls
variable {σ : Type} {X : Ctx 64}

theorem hoare_callD_memcpy (hC : X.code.lookup = guestCode) {P : PanSemStateFiniteExact 64 σ → Prop}
    {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop} {eD eS eN : ExpHOL 64}
    (h : ∀ s, InCtx s X → P s → ∀ vD vS vN : ValueHOL 64, ev s eD = some vD → ev s eS = some vS →
      ev s eN = some vN → ∃ D S N : BitVec 64, vD = .val (.word D) ∧ vS = .val (.word S) ∧
      vN = .val (.word N) ∧ MCPre D S N ∧
      ∀ t : PanSemStateFiniteExact 64 σ, CopyPost s t D S N → t.locals = s.locals → InCtx t X →
        Q none t) :
    Hoare σ X P (callD (nm "memcpy") [eD, eS, eN]) Q := by
  refine hoare_callD (funSpec_memcpy hC) fun s hs hp vs hvs callee v st hR hst => ?_
  obtain ⟨a, r1, rfl, ha, hr1⟩ := evs_cons_inv hvs
  obtain ⟨b, r2, rfl, hb, hr2⟩ := evs_cons_inv hr1
  obtain ⟨c, r3, rfl, hc, hr3⟩ := evs_cons_inv hr2
  have hr : r3 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr3; exact (Option.some.inj hr3).symm
  subst hr
  obtain ⟨D, S, N, rfl, rfl, rfl, hP, hk⟩ := h s hs hp a b c ha hb hc
  have hcp := hR D S N rfl hP v rfl
  exact hk _ ⟨hcp.1, hcp.2.1, hcp.2.2.1, hcp.2.2.2⟩ rfl hst

end calls

/-! ## One array -/

/-- The effect of one array step on memory: the header cell `T + off` now holds `P`, the block
`[P, P + n)` holds the words of `[Src, Src + n)` (both in the domain), nothing else changed. -/
def GrowArr (m m' : Mem) (d : BitVec 64 → Prop) (T : BitVec 64) (off : Nat) (P Src : BitVec 64)
    (n : Nat) : Prop :=
  m' (T + BitVec.ofNat 64 off) = .word P ∧
  (∀ k : Nat, 8 * k < n → m' (P + BitVec.ofNat 64 (8 * k)) = m (Src + BitVec.ofNat 64 (8 * k)) ∧
    d (P + BitVec.ofNat 64 (8 * k)) ∧ d (Src + BitVec.ofNat 64 (8 * k))) ∧
  ∀ a, ¬ InR a P n → a ≠ T + BitVec.ofNat 64 off → m' a = m a

section arr
variable {σ : Type} {X : Ctx 64}

/-- The locals of `htab_grow` after its three declarations. -/
def GL (u : PanSemStateFiniteExact 64 σ) (T C S : BitVec 64) : Prop :=
  DLk u "t" T ∧ DLk u "nodecap" C ∧ DLk u "ncap" (C * BitVec.ofNat 64 2) ∧ DLk u "stride" S

theorem grow_arr (hC : X.code.lookup = guestCode) {x : String} {off elt : Nat} {kE : ExpHOL 64}
    {rest : ProgHOL 64} {Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop}
    {u : PanSemStateFiniteExact 64 σ} {T C S P0 Src : BitVec 64}
    (hx : nm x ≠ nm "t" ∧ nm x ≠ nm "nodecap" ∧ nm x ≠ nm "ncap" ∧ nm x ≠ nm "stride")
    (hgl : GL u T C S)
    (hkE : ∀ t : PanSemStateFiniteExact 64 σ, GL t T C S → ev t kE = some (.val (.word (BitVec.ofNat 64 elt))))
    (hel8 : elt % 8 = 0) (hC32 : C.toNat ≤ 2 ^ 32) (hel : elt ≤ 2 ^ 20)
    (hhp : u.globals.lookup hpN = some (.val (.word P0))) (hP0 : P0.toNat ≤ heapEnd)
    (hP08 : P0.toNat % 8 = 0)
    (hsrc : u.memory (T + BitVec.ofNat 64 off) = .word Src) (hSrc8 : Src.toNat % 8 = 0)
    (hSrcN : Src.toNat + (C.toNat + 1) * elt ≤ 2 ^ 64)
    (hdisj : ∀ a : BitVec 64, InR a Src ((C.toNat + 1) * elt) → ¬ (P0.toNat ≤ a.toNat ∧ a.toNat < heapEnd))
    (hTo : ¬ (P0.toNat ≤ (T + BitVec.ofNat 64 off).toNat ∧ (T + BitVec.ofNat 64 off).toNat < heapEnd))
    (hk : ∀ u' : PanSemStateFiniteExact 64 σ,
      u'.locals = (setVarHOLFinite (nm x) (.val (.word P0)) u).locals →
      u'.globals.lookup hpN = some (.val (.word (P0 + BitVec.ofNat 64 ((2 * C.toNat + 1) * elt)))) →
      (∀ g, g ≠ hpN → u'.globals.lookup g = u.globals.lookup g) → u'.memaddrs = u.memaddrs →
      u'.be = u.be → P0.toNat + (2 * C.toNat + 1) * elt ≤ heapEnd →
      GrowArr u.memory u'.memory u.memaddrs T off P0 Src ((C.toNat + 1) * elt) →
      Hoare σ X (fun t => t = u') rest
        (fun r t => Q r { t with locals := t.locals.resVarEq (nm x, u.locals.lookup (nm x)) })) :
    Hoare σ X (fun t => t = u) (gArr x off kE rest) Q := by
  have hhe : heapEnd = 2952790016 := rfl
  have hsz : (2 * C.toNat + 1) * elt < 2 ^ 62 := by
    have : (2 * C.toNat + 1) * elt ≤ (2 * 2 ^ 32 + 1) * 2 ^ 20 := Nat.mul_le_mul (by omega) hel
    omega
  have hNle : (C.toNat + 1) * elt ≤ (2 * C.toNat + 1) * elt := Nat.mul_le_mul_right _ (by omega)
  have hC2 : (C * BitVec.ofNat 64 2).toNat = 2 * C.toNat := by
    rw [toNat_mul_lt (by simp; omega)]; simp; omega
  have hgA : ∀ t : PanSemStateFiniteExact 64 σ, GL t T C S →
      ev t (gAlloc kE) = some (.val (.word (BitVec.ofNat 64 ((2 * C.toNat + 1) * elt)))) := by
    intro t ht
    rw [gAlloc, ev_mul2 (ev_add2 (ev_lv_w ht.2.2.1) (ev_cw t 1)) (hkE t ht)]
    have e1 : (C * BitVec.ofNat 64 2 + BitVec.ofNat 64 1).toNat = 2 * C.toNat + 1 := by
      rw [toNat_add_lt (by rw [hC2]; simp; omega), hC2]; simp
    have e2 : (BitVec.ofNat 64 elt).toNat = elt := by simp; omega
    congr 3
    apply BitVec.eq_of_toNat_eq
    rw [toNat_mul_lt (by rw [e1, e2]; omega), e1, e2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  have hNz : (BitVec.ofNat 64 ((2 * C.toNat + 1) * elt)).toNat = (2 * C.toNat + 1) * elt := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
  refine hoare_decCall_alloc hC (fun t ht => ⟨P0, _, ht ▸ hhp, hP0, hP08, hgA t (ht ▸ hgl),
    by rw [hNz, Nat.mul_mod, hel8]; simp⟩) ?_
  intro t _ ht P0' Nz st hP0' hsz' hsm hshp hsgl hsbe hsd hsum
  subst ht
  rw [hhp] at hP0'
  cases hP0'
  rw [hgA _ hgl] at hsz'
  cases hsz'
  rw [hNz] at hsum
  -- the state after the allocation
  have hgl1 : GL (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }) T C S := by
    obtain ⟨h1, h2, h3, h4⟩ := hgl
    exact ⟨by unfold DLk; rw [lk_set_ne _ _ hx.1]; exact h1,
      by unfold DLk; rw [lk_set_ne _ _ hx.2.1]; exact h2,
      by unfold DLk; rw [lk_set_ne _ _ hx.2.2.1]; exact h3,
      by unfold DLk; rw [lk_set_ne _ _ hx.2.2.2]; exact h4⟩
  have hx1 : DLk (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }) x P0 := by
    unfold DLk; exact lk_set_self _ _ _
  have hm1 : (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }).memory =
    t.memory := hsm
  have hl1 : (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }).locals =
    (setVarHOLFinite (nm x) (.val (.word P0)) t).locals := rfl
  have hg1 : (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }).globals =
    st.globals := rfl
  have hd1 : (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }).memaddrs =
    t.memaddrs := hsd
  have hb1 : (setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals }).be =
    t.be := hsbe
  generalize setVarHOLFinite (nm x) (.val (.word P0)) { st with locals := t.locals } = u1 at hgl1 hx1 hm1 hl1 hg1 hd1 hb1 ⊢
  -- the copy
  have hN : (C.toNat + 1) * elt < 2 ^ 62 := by
    have : (C.toNat + 1) * elt ≤ (2 * C.toNat + 1) * elt := Nat.mul_le_mul_right _ (by omega)
    omega
  refine hoare_seq (R := fun r v => r = none ∧ v.locals = u1.locals ∧ v.globals = u1.globals ∧
      v.memaddrs = u1.memaddrs ∧ v.be = u1.be ∧
      CopyPost u1 v P0 Src (BitVec.ofNat 64 ((C.toNat + 1) * elt))) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_callD_memcpy hC fun v _ hv vD vS vN hD hS hN => ?_
    subst hv
    rw [ev_lv_w hx1] at hD
    have hS' := ev_tLoad_inv hgl1.1 hS
    rw [hm1, hsrc] at hS'
    rw [gCopySz, ev_mul2 (ev_add2 (ev_lv_w hgl1.2.1) (ev_cw _ 1)) (hkE _ hgl1)] at hN
    have hN' : (C + BitVec.ofNat 64 1) * BitVec.ofNat 64 elt = BitVec.ofNat 64 ((C.toNat + 1) * elt) := by
      apply BitVec.eq_of_toNat_eq
      have e1 : (C + BitVec.ofNat 64 1).toNat = C.toNat + 1 := by
        rw [toNat_add_lt (by simp; omega)]; simp
      have e2 : (BitVec.ofNat 64 elt).toNat = elt := by simp; omega
      rw [toNat_mul_lt (by rw [e1, e2]; omega), e1, e2, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
    rw [hN'] at hN
    have hNn : (BitVec.ofNat 64 ((C.toNat + 1) * elt)).toNat = (C.toNat + 1) * elt := by
      rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
    refine ⟨P0, Src, _, (Option.some.inj hD).symm, hS', (Option.some.inj hN).symm,
      ⟨by rw [hNn]; omega, by rw [hNn]; omega, by rw [hNn]; omega, fun a h1 h2 => ?_⟩,
      fun t' hcp hloc _ => ⟨rfl, hloc, hcp.2.2.1, hcp.1, hcp.2.1, hcp⟩⟩
    rw [hNn] at h1 h2
    unfold CellIn at h1 h2
    exact hdisj a ⟨by omega, by omega⟩ ⟨by omega, by omega⟩
  · refine hoare_seq (R := fun r v => r = none ∧ v.locals = u1.locals ∧ v.globals = u1.globals ∧
        v.memaddrs = u1.memaddrs ∧ v.be = u1.be ∧
        GrowArr t.memory v.memory t.memaddrs T off P0 Src ((C.toNat + 1) * elt)) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 off) (fun _ => P0) ?_ ?_ ?_
      · rintro v _ ⟨-, hl, -⟩ w hw
        have : DLk v "t" T := by unfold DLk; rw [hl]; exact hgl1.1
        rw [ev_tAddr this] at hw; exact (word_inj hw).symm
      · rintro v _ ⟨-, hl, -⟩ w hw
        have : DLk v x P0 := by unfold DLk; rw [hl]; exact hx1
        rw [ev_lv_w this] at hw; exact (Option.some.inj hw).symm
      · rintro v _ ⟨-, hl, hg, hd, hbe, hcp⟩
        have hNn : (BitVec.ofNat 64 ((C.toNat + 1) * elt)).toNat = (C.toNat + 1) * elt := by
          rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
        have hdu : u1.memaddrs = t.memaddrs := hd1
        refine ⟨rfl, hl, hg, hd, hbe, ?_, fun k hk => ?_, fun a ha hne => ?_⟩
        · show upd v.memory _ _ _ = _; unfold upd; rw [if_pos rfl]
        · have hne : P0 + BitVec.ofNat 64 (8 * k) ≠ T + BitVec.ofNat 64 off := by
            intro e; apply hTo; rw [← e, toNat_add_lt (by simp; omega)]; simp; omega
          have hw := copyPost_words hcp ⟨by rw [hNn]; omega, by rw [hNn]; omega, by rw [hNn]; omega,
            fun a h1 h2 => by
              unfold CellIn at h1 h2; rw [hNn] at h1 h2
              exact hdisj a ⟨by omega, by omega⟩ ⟨by omega, by omega⟩⟩ hP08 hSrc8
            (by rw [hNn, Nat.mul_mod, hel8]; simp)
            (k := k) (by rw [hNn]; exact hk)
          show upd v.memory _ _ _ = _ ∧ _
          rw [upd_ne hne, hw.1, hm1]
          rw [hdu] at hw
          exact ⟨rfl, hw.2⟩
        · show upd v.memory _ _ a = _
          rw [upd_ne hne, copyPost_out hcp (by unfold CellIn; rw [hNn]; intro h; apply ha; exact
            ⟨by omega, h.2⟩), hm1]
    · rintro v hv ⟨-, hl, hg, hd, hbe, hga⟩ ht
      refine hk v (hl.trans hl1) (by rw [hg, hg1]; exact hshp) (fun g hgn => by rw [hg, hg1]; exact hsgl g hgn)
        (hd.trans hd1) (hbe.trans hb1) hsum hga v hv rfl ht

/-- What a returning `htab_grow` did, step by step: three array moves, then the capacity
stores. -/
def GrowRaw (s0 u : PanSemStateFiniteExact 64 σ) (T H0 C S K0 N0 O0 : BitVec 64) : Prop :=
  let sK := (2 * C.toNat + 1) * S.toNat
  let sN := (2 * C.toNat + 1) * 32
  let sO := (2 * C.toNat + 1) * 8
  ∃ m1 m2 m3 : Mem, GrowArr s0.memory m1 s0.memaddrs T 32 H0 K0 ((C.toNat + 1) * S.toNat) ∧
    GrowArr m1 m2 s0.memaddrs T 40 (H0 + BitVec.ofNat 64 sK) N0 ((C.toNat + 1) * 32) ∧
    GrowArr m2 m3 s0.memaddrs T 48 (H0 + BitVec.ofNat 64 sK + BitVec.ofNat 64 sN) O0
      ((C.toNat + 1) * 8) ∧
    (∃ w16, u.memory = upd (upd m3 (T + BitVec.ofNat 64 16) w16) (T + BitVec.ofNat 64 80)
      (C * BitVec.ofNat 64 2)) ∧
    u.globals.lookup hpN = some (.val (.word (H0 + BitVec.ofNat 64 sK + BitVec.ofNat 64 sN +
      BitVec.ofNat 64 sO))) ∧
    (∀ g, g ≠ hpN → u.globals.lookup g = s0.globals.lookup g) ∧ u.memaddrs = s0.memaddrs ∧
    u.be = s0.be ∧ H0.toNat + sK + sN + sO ≤ heapEnd

theorem gl_set {u : PanSemStateFiniteExact 64 σ} {T C S : BitVec 64} {x : String} {w : BitVec 64}
    (hx : nm x ≠ nm "t" ∧ nm x ≠ nm "nodecap" ∧ nm x ≠ nm "ncap" ∧ nm x ≠ nm "stride")
    (h : GL u T C S) {u' : PanSemStateFiniteExact 64 σ}
    (hl : u'.locals = (setVarHOLFinite (nm x) (.val (.word w)) u).locals) : GL u' T C S := by
  obtain ⟨h1, h2, h3, h4⟩ := h
  exact ⟨by unfold DLk; rw [hl, lk_set_ne _ _ hx.1]; exact h1,
    by unfold DLk; rw [hl, lk_set_ne _ _ hx.2.1]; exact h2,
    by unfold DLk; rw [hl, lk_set_ne _ _ hx.2.2.1]; exact h3,
    by unfold DLk; rw [hl, lk_set_ne _ _ hx.2.2.2]; exact h4⟩

theorem inR_hdr {T : BitVec 64} {k : Nat} (ht : T.toNat + 88 ≤ 2 ^ 64) (hk : k < 88) :
    InR (T + BitVec.ofNat 64 k) T 88 := by
  unfold InR; rw [hA_toNat ht hk]; omega

/-- The three array moves and the tail, from the state after the declarations. -/
theorem grow_rest (hC : X.code.lookup = guestCode) (s0 u3 : PanSemStateFiniteExact 64 σ)
    {T H0 : BitVec 64} (hl : Lay s0.memory T) (hN8 : (hdr s0.memory T 40).toNat % 8 = 0)
    (hO8 : (hdr s0.memory T 48).toNat % 8 = 0)
    (hS20 : (hdr s0.memory T 8).toNat ≤ 2 ^ 20) (hC32 : CAP s0.memory T ≤ 2 ^ 32)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (hH0 : H0.toNat ≤ heapEnd)
    (hH8 : H0.toNat % 8 = 0)
    (hdisj : ∀ a, TableRegion s0.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd))
    (hgl : GL u3 T (hdr s0.memory T 80) (hdr s0.memory T 8)) (hm3 : u3.memory = s0.memory)
    (hg3 : u3.globals = s0.globals) (hd3 : u3.memaddrs = s0.memaddrs) (hb3 : u3.be = s0.be) :
    Hoare σ X (fun t => t = u3) (gArr "keys" 32 (lv (nm "stride")) (gArr "nodes" 40 (cw 32)
      (gArr "order" 48 (cw 8) growTail))) (fun r t => ∀ v, r = some (.returned v) →
      GrowRaw s0 t T H0 (hdr s0.memory T 80) (hdr s0.memory T 8) (hdr s0.memory T 32)
        (hdr s0.memory T 40) (hdr s0.memory T 48)) := by
  have hhe : heapEnd = 2952790016 := rfl
  generalize hCd : hdr s0.memory T 80 = C at hgl ⊢
  generalize hSd : hdr s0.memory T 8 = S at hgl hS20 ⊢
  have hCc : C.toNat = CAP s0.memory T := by rw [← hCd]; rfl
  rw [← hCc] at hC32
  have hreg := fun {a : BitVec 64} (h : TableRegion s0.memory T a) => hdisj a h
  -- numeric facts
  have hS8 : S.toNat % 8 = 0 := by rw [← hSd]; exact hl.S8
  have hKN : (hdr s0.memory T 32).toNat + (C.toNat + 1) * S.toNat ≤ 2 ^ 64 := by
    have := hl.hK; rw [Nat.mul_comm, hCc, ← hSd]; exact this
  have hNN : (hdr s0.memory T 40).toNat + (C.toNat + 1) * 32 ≤ 2 ^ 64 := by
    have := hl.hN; rw [Nat.mul_comm, hCc]; exact this
  have hON : (hdr s0.memory T 48).toNat + (C.toNat + 1) * 8 ≤ 2 ^ 64 := by
    have := hl.hO; rw [Nat.mul_comm, hCc]; exact this
  have hTr : ∀ k, k < 88 → ¬ (H0.toNat ≤ (T + BitVec.ofNat 64 k).toNat ∧
      (T + BitVec.ofNat 64 k).toNat < heapEnd) := fun k hk => hreg (Or.inl (inR_hdr hl.ht hk))
  have hsK : (2 * C.toNat + 1) * S.toNat ≤ (2 * 2 ^ 32 + 1) * 2 ^ 20 :=
    Nat.mul_le_mul (by omega) hS20
  have hKle : (C.toNat + 1) * S.toNat ≤ (2 * C.toNat + 1) * S.toNat := Nat.mul_le_mul_right _ (by omega)
  -- keys
  refine grow_arr hC (x := "keys") (off := 32) (elt := S.toNat) (kE := lv (nm "stride")) (P0 := H0)
    (Src := hdr s0.memory T 32) (by decide) hgl
    (fun t ht => by rw [ev_lv_w ht.2.2.2, BitVec.ofNat_toNat, BitVec.setWidth_eq]) hS8 hC32 hS20
    (by rw [hg3]; exact hhp) hH0 hH8 (by rw [hm3, mem_word s0.memory (T + BitVec.ofNat 64 32)]; rfl)
    hl.K8 hKN
    (fun a ha => hreg (Or.inr (Or.inr (Or.inr ⟨ha.1, by rw [hSd, ← hCc, Nat.mul_comm]; exact ha.2⟩))))
    (hTr 32 (by decide)) fun u4 hl4 hp4 hg4 hd4 hb4 hsum4 hga4 => ?_
  have hgl4 := gl_set (by decide) hgl hl4
  have hP1 : (H0 + BitVec.ofNat 64 ((2 * C.toNat + 1) * S.toNat)).toNat =
      H0.toNat + (2 * C.toNat + 1) * S.toNat := by
    rw [toNat_add_lt (by simp; omega)]; simp; omega
  -- nodes
  refine grow_arr hC (x := "nodes") (off := 40) (elt := 32) (kE := cw 32)
    (P0 := H0 + BitVec.ofNat 64 ((2 * C.toNat + 1) * S.toNat)) (Src := hdr s0.memory T 40)
    (by decide) hgl4
    (fun t _ => ev_cw t 32) (by decide) hC32 (by decide) hp4 (by rw [hP1]; omega)
    (by rw [hP1]; have := Nat.mul_mod (2 * C.toNat + 1) S.toNat 8; rw [hS8] at this; simp at this; omega)
    (by
      rw [hga4.2.2 _ (fun h => hTr 40 (by decide) ⟨h.1, by have := h.2; omega⟩)
        (hdrNe hl (by decide) (by decide) (by decide)), hm3, mem_word s0.memory (T + BitVec.ofNat 64 40)];
      rfl)
    hN8 hNN
    (fun a ha hb => hreg (Or.inr (Or.inl ⟨ha.1, by rw [← hCc, Nat.mul_comm]; exact ha.2⟩))
      ⟨by rw [hP1] at hb; omega, hb.2⟩)
    (fun h => hTr 40 (by decide) ⟨by rw [hP1] at h; omega, h.2⟩) fun u5 hl5 hp5 hg5 hd5 hb5 hsum5 hga5 => ?_
  have hgl5 := gl_set (by decide) hgl4 hl5
  have hP2 : (H0 + BitVec.ofNat 64 ((2 * C.toNat + 1) * S.toNat) +
      BitVec.ofNat 64 ((2 * C.toNat + 1) * 32)).toNat =
      H0.toNat + (2 * C.toNat + 1) * S.toNat + (2 * C.toNat + 1) * 32 := by
    rw [toNat_add_lt (by rw [hP1]; simp; omega), hP1]; simp; omega
  have hNle : (C.toNat + 1) * 32 ≤ (2 * C.toNat + 1) * 32 := Nat.mul_le_mul_right _ (by omega)
  -- order
  refine grow_arr hC (x := "order") (off := 48) (elt := 8) (kE := cw 8)
    (P0 := H0 + BitVec.ofNat 64 ((2 * C.toNat + 1) * S.toNat) + BitVec.ofNat 64 ((2 * C.toNat + 1) * 32))
    (Src := hdr s0.memory T 48) (by decide) hgl5
    (fun t _ => ev_cw t 8) (by decide) hC32 (by decide) hp5 (by rw [hP2]; omega)
    (by rw [hP2]; have := Nat.mul_mod (2 * C.toNat + 1) S.toNat 8; rw [hS8] at this; simp at this; omega)
    (by
      rw [hga5.2.2 _ (fun h => by
          unfold InR at h; rw [hP1] at h; exact hTr 48 (by decide) ⟨by omega, by omega⟩)
        (hdrNe hl (by decide) (by decide) (by decide)),
        hga4.2.2 _ (fun h => hTr 48 (by decide) ⟨h.1, by have := h.2; omega⟩)
        (hdrNe hl (by decide) (by decide) (by decide)), hm3, mem_word s0.memory (T + BitVec.ofNat 64 48)];
      rfl)
    hO8 hON
    (fun a ha hb => hreg (Or.inr (Or.inr (Or.inl ⟨ha.1, by rw [← hCc, Nat.mul_comm]; exact ha.2⟩)))
      ⟨by rw [hP2] at hb; omega, hb.2⟩)
    (fun h => hTr 48 (by decide) ⟨by rw [hP2] at h; omega, h.2⟩) fun u6 hl6 hp6 hg6 hd6 hb6 hsum6 hga6 => ?_
  have hgl6 := gl_set (by decide) hgl5 hl6
  -- the tail
  refine hseq (R := fun t => t.memory = upd u6.memory (T + BitVec.ofNat 64 16)
      (rd u6.memory (T + BitVec.ofNat 64 16) * BitVec.ofNat 64 2) ∧ t.locals = u6.locals ∧
      t.globals = u6.globals ∧ t.memaddrs = u6.memaddrs ∧ t.be = u6.be) ?_ ?_
  · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 16)
      (fun _ => rd u6.memory (T + BitVec.ofNat 64 16) * BitVec.ofNat 64 2) ?_ ?_ ?_
    · rintro t _ rfl w hw
      rw [ev_tAddr hgl6.1] at hw; exact (word_inj hw).symm
    · rintro t _ rfl v hv
      obtain ⟨x, y, hx, hy, rfl⟩ := ev_mul2_inv hv
      have := ev_tLoad_w hgl6.1 hx
      rw [ev_cw] at hy; cases hy
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
      rw [this]
    · rintro t _ rfl
      exact ⟨rfl, rfl, rfl, rfl, rfl, rfl⟩
  · refine hseq (R := fun t => t.memory = upd (upd u6.memory (T + BitVec.ofNat 64 16)
      (rd u6.memory (T + BitVec.ofNat 64 16) * BitVec.ofNat 64 2)) (T + BitVec.ofNat 64 80)
        (C * BitVec.ofNat 64 2) ∧ t.globals = u6.globals ∧ t.memaddrs = u6.memaddrs ∧ t.be = u6.be) ?_ ?_
    · refine hoare_store_w (fun _ => T + BitVec.ofNat 64 80) (fun _ => C * BitVec.ofNat 64 2) ?_ ?_ ?_
      · rintro t _ ⟨-, hl, -⟩ w hw
        have : DLk t "t" T := by unfold DLk; rw [hl]; exact hgl6.1
        rw [ev_tAddr this] at hw; exact (word_inj hw).symm
      · rintro t _ ⟨-, hl, -⟩ w hw
        have : DLk t "ncap" (C * BitVec.ofNat 64 2) := by unfold DLk; rw [hl]; exact hgl6.2.2.1
        rw [ev_lv_w this] at hw; exact (Option.some.inj hw).symm
      · rintro t _ ⟨hm, -, hg, hd, hb⟩
        refine ⟨rfl, ?_, hg, hd, hb⟩
        show upd t.memory _ _ = _
        rw [hm]
    · refine hoare_return fun t _ ⟨hm, hg, hd, hb⟩ v _ => fun v' _ => ?_
      refine ⟨u4.memory, u5.memory, u6.memory, by rw [← hd3]; rw [hm3] at hga4; exact hga4,
        by rw [← hd3, ← hd4]; exact hga5, by rw [← hd3, ← hd4, ← hd5]; exact hga6, ⟨_, hm⟩, ?_, ?_, ?_, ?_, ?_⟩
      · show t.globals.lookup hpN = _
        rw [hg]; exact hp6
      · intro g hgn
        show t.globals.lookup g = _
        rw [hg, hg6 g hgn, hg5 g hgn, hg4 g hgn, hg3]
      · show t.memaddrs = _
        rw [hd, hd6, hd5, hd4, hd3]
      · show t.be = _
        rw [hb, hb6, hb5, hb4, hb3]
      · rw [hP2] at hsum6; omega

/-- **The body of `htab_grow`.** -/
theorem growBody_hoare (hC : X.code.lookup = guestCode) (s0 : PanSemStateFiniteExact 64 σ)
    {T H0 : BitVec 64} (hT : DLk s0 "t" T) (hsep : Sep s0.memory T)
    (hS20 : (hdr s0.memory T 8).toNat ≤ 2 ^ 20) (hC32 : CAP s0.memory T ≤ 2 ^ 32)
    (hhp : s0.globals.lookup hpN = some (.val (.word H0))) (hH0 : H0.toNat ≤ heapEnd)
    (hH8 : H0.toNat % 8 = 0)
    (hdisj : ∀ a, TableRegion s0.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) :
    Hoare σ X (fun t => t = s0) growBody (fun r t => ∀ v, r = some (.returned v) →
      GrowRaw s0 t T H0 (hdr s0.memory T 80) (hdr s0.memory T 8) (hdr s0.memory T 32)
        (hdr s0.memory T 40) (hdr s0.memory T 48)) := by
  have hl := lay_of_sep hsep
  have hN8 : (hdr s0.memory T 40).toNat % 8 = 0 := by unfold Sep at hsep; exact hsep.2.1
  have hO8 : (hdr s0.memory T 48).toNat % 8 = 0 := by unfold Sep at hsep; exact hsep.2.2.1
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  have e := ev_tLoad_w hT hv
  subst e
  refine hoare_dec fun u1 _ hu1 v hv _ => ?_
  have hu1' : u1 = setVarHOLFinite (nm "nodecap") (.val (.word (hdr u.memory T 80))) u := hu1
  subst hu1'
  rw [ev_mul2 (ev_lv_w (u := setVarHOLFinite (nm "nodecap") (.val (.word (hdr u.memory T 80))) u)
    (by lks)) (ev_cw _ 2)] at hv
  cases hv
  refine hoare_dec fun u2 _ hu2 v hv _ => ?_
  have hu2' : u2 = setVarHOLFinite (nm "ncap") (.val (.word (hdr u.memory T 80 * BitVec.ofNat 64 2)))
      (setVarHOLFinite (nm "nodecap") (.val (.word (hdr u.memory T 80))) u) := hu2
  subst hu2'
  have e := ev_tLoad_w (u := setVarHOLFinite (nm "ncap")
      (.val (.word (hdr u.memory T 80 * BitVec.ofNat 64 2)))
      (setVarHOLFinite (nm "nodecap") (.val (.word (hdr u.memory T 80))) u)) (by lks) hv
  subst e
  exact hoare_post (grow_rest hC u _ hl hN8 hO8 hS20 hC32 hhp hH0 hH8 hdisj
    ⟨by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl⟩ rfl rfl rfl rfl)
    fun r t _ _ h => h

end arr

/-! ## The specification -/

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`htab_grow` moves the arrays.** -/
theorem funSpec_grow (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "htab_grow") (fun vs s r u => ∀ T H0 : BitVec 64, vs = [.val (.word T)] →
      Sep s.memory T → (hdr s.memory T 8).toNat ≤ 2 ^ 20 → CAP s.memory T ≤ 2 ^ 32 →
      s.globals.lookup hpN = some (.val (.word H0)) → H0.toNat ≤ heapEnd → H0.toNat % 8 = 0 →
      (∀ a, TableRegion s.memory T a → ¬ (H0.toNat ≤ a.toNat ∧ a.toNat < heapEnd)) →
      ∀ v, r = .returned v →
      GrowRaw s u T H0 (hdr s.memory T 80) (hdr s.memory T 8) (hdr s.memory T 32)
        (hdr s.memory T 40) (hdr s.memory T 48)) := by
  intro vs body callee rs hl s hs hloc r hr T H0 hvs hsep hS20 hC32 hhp hH0 hH8 hdisj v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, hA, hla⟩ := lookupCode_one code_htab_grow hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hT : DLk s "t" T := by unfold DLk; rw [hloc]; exact hla
  have H := growBody_hoare (X := X) hC s hT hsep hS20 hC32 hhp hH0 hH8 hdisj s hs rfl
    (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  exact H _ rfl

end spec

end InitECandidate.Solver.Spec.Inv
