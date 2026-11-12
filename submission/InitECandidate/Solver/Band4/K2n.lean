import InitECandidate.Solver.MemSafe.Helpers.Nibbles
import InitECandidate.Solver.Spec.Inv.Memcpy
import InitECandidate.Solver.Spec.Mpt.DelPre

/-!
# `key_to_nibbles` writes nibbles (trie-inv)

```
fun 1 key_to_nibbles(1 key, 1 n, 1 out) {
  var i = 0;
  while i + 4 <=+ n { (four times) var b = ld8 (key + i + k); st8 out + 2i + 2k, b >>> 4;
                                    st8 out + 2i + 2k + 1, b & 15;  i = i + 4; }
  while i <+ n { var b = ld8 (key + i); st8 out + 2i, b >>> 4; st8 out + 2i + 1, b & 15; i = i + 1; }
  return 0; }
```

**`ret_key_to_nibbles`**: a returning `key_to_nibbles(K, N, O)` with `O + 2N < 2^64` leaves every
byte of `[O, O + 2N)` below `16`, read with the state's byte order (`NibOK`). Loop invariant:
the first `2 i` bytes are nibbles; a byte store changes only its own byte
(`byteOf_upd_set`). The stored values are `b >>> 4` and `b & 15` of a loaded byte `b < 256`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Band4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Helpers (k2nBody nibPair nibAddr keyN code_key_to_nibbles
  ev_nibAddr toNat_nib oN nN iN incI geK ltN ret0 shr offI)

variable {σ : Type} {X : Ctx 64}

/-! ## Bytes after a byte store -/

theorem k2n_rd_eq (M : MemSafe.Mem) (a : BitVec 64) : MemSafe.rd M a = Spec.Inv.rd M a := rfl

/-- The byte read at `a'` after a byte store at `a`. -/
theorem byteOf_upd_set {M : MemSafe.Mem} {be : Bool} {a a' b : BitVec 64} :
    Spec.Mpt.byteOf (Spec.Inv.upd M (panByteAlignHOL a)
      (panSetByteHOL a b (Spec.Inv.rd M (panByteAlignHOL a)) be)) be a' =
      if a' = a then b.toNat % 256 else Spec.Mpt.byteOf M be a' := by
  unfold Spec.Mpt.byteOf
  rw [k2n_rd_eq, k2n_rd_eq M]
  by_cases hal : panByteAlignHOL a' = panByteAlignHOL a
  · rw [hal, Spec.Inv.rd_upd_self]
    by_cases ha : a' = a
    · subst ha
      rw [if_pos rfl, Spec.Inv.getByte_setByte_self]
      simp
    · rw [if_neg ha, Spec.Inv.getByte_setByte_ne]
      intro hm
      apply ha
      have := Spec.Inv.align_eq_iff.mp hal
      apply BitVec.eq_of_toNat_eq
      omega
  · have ha : a' ≠ a := fun e => hal (by rw [e])
    rw [if_neg ha, Spec.Inv.rd_upd_ne hal]

/-! ## The invariant -/

/-- The first `c` bytes at `O` are nibbles (read with byte order `be`). -/
def NibOK (M : MemSafe.Mem) (be : Bool) (O : BitVec 64) (c : Nat) : Prop :=
  ∀ j, j < c → Spec.Mpt.byteOf M be (O + BitVec.ofNat 64 j) < 16

theorem nibOK_store {M : MemSafe.Mem} {be : Bool} {O : BitVec 64} {c : Nat}
    (_hc : O.toNat + c < 2 ^ 64) (h : NibOK M be O c) {x : BitVec 64} (hx : x.toNat < 16) :
    NibOK (Spec.Inv.upd M (panByteAlignHOL (O + BitVec.ofNat 64 c))
      (panSetByteHOL (O + BitVec.ofNat 64 c) (BitVec.ofNat 64 (BitVec.ofNat 8 x.toNat).toNat)
        (Spec.Inv.rd M (panByteAlignHOL (O + BitVec.ofNat 64 c))) be)) be O (c + 1) := by
  intro j hj
  rw [byteOf_upd_set]
  split
  · simp only [BitVec.toNat_ofNat]
    omega
  · rename_i hne
    have hjc : j ≠ c := fun e => hne (by rw [e])
    exact h j (by omega)

/-- Inside a block: `out = O`, `n = N`, `i = I`, `c` nibbles written. -/
def K2B (be : Bool) (O N I : BitVec 64) (c : Nat) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  u.locals.lookup oN = some (.val (.word O)) ∧ u.locals.lookup nN = some (.val (.word N)) ∧
    u.locals.lookup iN = some (.val (.word I)) ∧ u.be = be ∧ NibOK u.memory be O c

/-- The loop head. -/
def K2J (be : Bool) (O N : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ I : BitVec 64, K2B be O N I (2 * I.toNat) u ∧ I.toNat ≤ N.toNat

theorem k2B_resVar {be : Bool} {O N I : BitVec 64} {c : Nat} {b : MlS} (hbo : b ≠ oN)
    (hbn : b ≠ nN) (hbi : b ≠ iN) (old : Option (ValueHOL 64)) {u : PanSemStateFiniteExact 64 σ}
    (h : K2B be O N I c u) : K2B be O N I c { u with locals := u.locals.resVarEq (b, old) } := by
  obtain ⟨ho, hn, hi, hbe, hnib⟩ := h
  exact ⟨by rw [lookup_resVarEq_ne _ _ hbo]; exact ho, by rw [lookup_resVarEq_ne _ _ hbn]; exact hn,
    by rw [lookup_resVarEq_ne _ _ hbi]; exact hi, hbe, hnib⟩

theorem k2J_resVar {be : Bool} {O N : BitVec 64} {b : MlS} (hbo : b ≠ oN)
    (hbn : b ≠ nN) (hbi : b ≠ iN) (old : Option (ValueHOL 64)) {u : PanSemStateFiniteExact 64 σ}
    (h : K2J be O N u) : K2J be O N { u with locals := u.locals.resVarEq (b, old) } := by
  obtain ⟨I, hb, hle⟩ := h
  exact ⟨I, k2B_resVar hbo hbn hbi old hb, hle⟩

/-! ## Steps -/

theorem k2n_store {L : HolFiniteMapExact MlS (ValueHOL 64) → Prop} {be : Bool} {O N I : BitVec 64}
    {c : Nat} {a v : ExpHOL 64} (hc : O.toNat + c < 2 ^ 64)
    (ha : ∀ u : PanSemStateFiniteExact 64 σ, K2B be O N I c u → L u.locals →
      ev u a = some (.val (.word (O + BitVec.ofNat 64 c))))
    (hv : ∀ u : PanSemStateFiniteExact 64 σ, K2B be O N I c u → L u.locals →
      ∃ x : BitVec 64, ev u v = some (.val (.word x)) ∧ x.toNat < 16) :
    Hoare σ X (fun u => K2B be O N I c u ∧ L u.locals) (.storeByte a v)
      (fun r u => r = none ∧ K2B be O N I (c + 1) u ∧ L u.locals) := by
  refine Spec.Inv.hoare_storeByte fun u _ ⟨hk, hL⟩ w x mem hw hx hmem => ?_
  rw [ha u hk hL] at hw
  cases hw
  obtain ⟨x', hx', hx16⟩ := hv u hk hL
  rw [hx'] at hx
  cases hx
  obtain ⟨ho, hn, hi, hbe, hnib⟩ := hk
  obtain ⟨-, rfl⟩ := Spec.Inv.storeByte_eq hmem
  refine ⟨rfl, ⟨ho, hn, hi, hbe, ?_⟩, hL⟩
  rw [hbe]
  exact nibOK_store hc hnib hx16

theorem k2n_ev_shr {u : PanSemStateFiniteExact 64 σ} {b : MlS} {w : BitVec 64}
    (hb : u.locals.lookup b = some (.val (.word w))) (hw : w.toNat < 256) :
    ∃ x : BitVec 64, ev u (shr (lv b) 4) = some (.val (.word x)) ∧ x.toNat < 16 := by
  refine ⟨w >>> 4, ?_, ?_⟩
  · unfold shr
    rw [ev_shift (ev_lw hb) (ev_cw _ 4)]
    have hk' : (BitVec.ofNat 64 4).toNat = 4 := by rw [BitVec.toNat_ofNat]
    simp only [wordShiftHOL, hk']
    rw [if_neg (by omega)]
    rfl
  · have e : (w >>> 4).toNat = w.toNat >>> 4 := by simp
    rw [e, Nat.shiftRight_eq_div_pow]
    omega

theorem k2n_ev_and {u : PanSemStateFiniteExact 64 σ} {b : MlS} {w : BitVec 64}
    (hb : u.locals.lookup b = some (.val (.word w))) :
    ∃ x : BitVec 64, ev u (.op .and [lv b, cw 15]) = some (.val (.word x)) ∧ x.toNat < 16 := by
  refine ⟨w &&& BitVec.ofNat 64 15, ?_, ?_⟩
  · rw [ev_op2 (ev_lw hb) (ev_cw _ 15)]
    have : wordOpHOL .and [w, BitVec.ofNat 64 15] = some (w &&& BitVec.ofNat 64 15) := by
      show wordOp .and [w, BitVec.ofNat 64 15] = _
      simp only [wordOp, List.foldr, AndOp.and, Complement.complement]
      have e15 : (BitVec.ofNat 64 15).and (BitVec.not 0) = BitVec.ofNat 64 15 := by decide
      rw [e15]
      rfl
    rw [this]
    rfl
  · rw [BitVec.toNat_and]
    have : (BitVec.ofNat 64 15).toNat = 15 := by rw [BitVec.toNat_ofNat]
    rw [this]
    have := Nat.and_le_right (n := w.toNat) (m := 15)
    omega

theorem nib_addr_eq {O I : BitVec 64} {c : Nat} (h : O.toNat + 2 * I.toNat + c < 2 ^ 64) :
    O + (BitVec.ofNat 64 2 * I + BitVec.ofNat 64 c) = O + BitVec.ofNat 64 (2 * I.toNat + c) := by
  apply BitVec.eq_of_toNat_eq
  rw [toNat_nib h, Spec.Inv.add_ofNat_toNat (by omega)]
  omega

/-- One `nibPair` step `k` of a block of `K`. -/
theorem k2n_pair {b : MlS} (hbo : b ≠ oN) (hbn : b ≠ nN) (hbi : b ≠ iN) {k K : Nat} (hk : k < K)
    {be : Bool} {O N I : BitVec 64} (hIK : I.toNat + K ≤ N.toNat)
    (hON : O.toNat + 2 * N.toNat < 2 ^ 64) {rest : ProgHOL 64}
    {Q : PanSemStateFiniteExact 64 σ → Prop}
    (hQ : ∀ (u : PanSemStateFiniteExact 64 σ) old, Q u →
      Q { u with locals := u.locals.resVarEq (b, old) })
    (hrest : Hoare σ X (K2B be O N I (2 * I.toNat + 2 * k + 2)) rest (fun r u => r = none ∧ Q u)) :
    Hoare σ X (K2B be O N I (2 * I.toNat + 2 * k)) (nibPair b k rest)
      (fun r u => r = none ∧ Q u) := by
  unfold nibPair
  refine hoare_dec fun s _ hs v hv _ => ?_
  obtain ⟨w, rfl, hw⟩ := ev_loadByte_word hv
  have hKB : ∀ t : PanSemStateFiniteExact 64 σ, t = setVarHOLFinite b (.val (.word w)) s →
      K2B be O N I (2 * I.toNat + 2 * k) t ∧ t.locals.lookup b = some (.val (.word w)) := by
    intro t ht
    subst ht
    obtain ⟨ho, hn, hi, hbe, hnib⟩ := hs
    exact ⟨⟨by rw [lk_set_ne _ _ hbo]; exact ho, by rw [lk_set_ne _ _ hbn]; exact hn,
      by rw [lk_set_ne _ _ hbi]; exact hi, hbe, hnib⟩, lk_set_self _ _ _⟩
  refine hoare_pre (P := fun t => K2B be O N I (2 * I.toNat + 2 * k) t ∧
    t.locals.lookup b = some (.val (.word w))) ?_ (fun t _ ht => hKB t ht)
  have hadr : ∀ c, c < 2 * K → ∀ t : PanSemStateFiniteExact 64 σ, ∀ c',
      K2B be O N I c' t → ev t (nibAddr c) =
        some (.val (.word (O + BitVec.ofNat 64 (2 * I.toNat + c)))) := by
    intro c hc t c' ⟨ho, _, hi, _, _⟩
    rw [ev_nibAddr ho hi, nib_addr_eq (by omega)]
  refine Spec.Inv.hseq (R := fun u => K2B be O N I (2 * I.toNat + 2 * k + 1) u ∧
      u.locals.lookup b = some (.val (.word w)))
    (k2n_store (L := fun m => m.lookup b = some (.val (.word w))) (c := 2 * I.toNat + 2 * k)
      (by omega) (fun t h _ => hadr (2 * k) (by omega) t _ h)
      (fun t _ hL => k2n_ev_shr hL hw)) ?_
  refine Spec.Inv.hseq (R := fun u => K2B be O N I (2 * I.toNat + 2 * k + 2) u ∧
      u.locals.lookup b = some (.val (.word w)))
    (k2n_store (L := fun m => m.lookup b = some (.val (.word w))) (c := 2 * I.toNat + 2 * k + 1)
      (by omega) (fun t h _ => by
        rw [hadr (2 * k + 1) (by omega) t _ h]
        rfl)
      (fun t _ hL => k2n_ev_and hL)) ?_
  exact hoare_conseq hrest (fun _ _ h => h.1) (fun r u _ _ h => ⟨h.1, hQ _ _ h.2⟩)

/-- The increment `i += K` closes a block. -/
theorem k2n_inc {be : Bool} {O N I : BitVec 64} {K : Nat} (hIK : I.toNat + K ≤ N.toNat) :
    Hoare σ X (K2B be O N I (2 * I.toNat + 2 * K)) (incI iN K)
      (fun r u => r = none ∧ K2J be O N u) := by
  refine hoare_assign fun u _ ⟨ho, hn, hi, hbe, hnib⟩ v hv _ => ?_
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hv
  cases hv
  have hN := N.isLt
  have ht : (I + BitVec.ofNat 64 K).toNat = I.toNat + K := Spec.Inv.add_ofNat_toNat (by omega)
  refine ⟨rfl, I + BitVec.ofNat 64 K, ⟨by rw [lk_set_ne _ _ (by decide)]; exact ho,
    by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _, hbe, ?_⟩, by omega⟩
  rw [ht]
  intro j hj
  exact hnib j (by omega)

/-! ## The loops and the body -/

theorem k2n_loop4 {be : Bool} {O N : BitVec 64} (hON : O.toNat + 2 * N.toNat < 2 ^ 64) :
    Hoare σ X (K2J be O N)
      (.while (geK nN iN 4) (nibPair (nm "b0") 0 (nibPair (nm "b1") 1 (nibPair (nm "b2") 2
        (nibPair (nm "b3") 3 (incI iN 4))))))
      (fun r u => r = none ∧ K2J be O N u) := by
  refine hoare_while (fun _ h => h) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  intro u hu ⟨⟨I, hb, hle⟩, hc⟩ ht
  have h4 : I.toNat + 4 ≤ N.toNat :=
    MemSafe.Helpers.geK_true (by decide) (by omega) hle hb.2.1 hb.2.2.1 hc
  have H : Hoare σ X (K2B be O N I (2 * I.toNat + 2 * 0))
      (nibPair (nm "b0") 0 (nibPair (nm "b1") 1 (nibPair (nm "b2") 2
        (nibPair (nm "b3") 3 (incI iN 4))))) (fun r u => r = none ∧ K2J be O N u) := by
    refine k2n_pair (by decide) (by decide) (by decide) (by decide : 0 < 4) h4 hON
      (fun _ old h => k2J_resVar (by decide) (by decide) (by decide) old h) ?_
    refine k2n_pair (by decide) (by decide) (by decide) (by decide : 1 < 4) h4 hON
      (fun _ old h => k2J_resVar (by decide) (by decide) (by decide) old h) ?_
    · refine hoare_pre (k2n_pair (by decide) (by decide) (by decide) (by decide : 2 < 4) h4 hON
        (fun _ old h => k2J_resVar (by decide) (by decide) (by decide) old h) ?_) (fun _ _ h => h)
      refine hoare_pre (k2n_pair (by decide) (by decide) (by decide) (by decide : 3 < 4) h4 hON
        (fun _ old h => k2J_resVar (by decide) (by decide) (by decide) old h) ?_) (fun _ _ h => h)
      exact hoare_pre (k2n_inc h4) (fun _ _ h => by
        rw [show 2 * I.toNat + 2 * 3 + 2 = 2 * I.toNat + 2 * 4 by omega] at h; exact h)
  have := H u hu (by rw [show 2 * I.toNat + 2 * 0 = 2 * I.toNat by omega]; exact hb) ht
  refine ⟨fun _ => this.2, fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun hr => absurd (this.1.symm.trans hr) (by simp),
    fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩

theorem k2n_loop1 {be : Bool} {O N : BitVec 64} (hON : O.toNat + 2 * N.toNat < 2 ^ 64) :
    Hoare σ X (K2J be O N) (.while (ltN iN nN) (nibPair (nm "b") 0 (incI iN 1)))
      (fun r u => r = none ∧ K2B be O N N (2 * N.toNat) u) := by
  refine hoare_while (Q := fun r u => r = none ∧ K2B be O N N (2 * N.toNat) u)
    (fun _ h => h) ?_ ?_
  · intro u hu ⟨⟨I, hb, hle⟩, hc⟩ ht
    have h1 : I.toNat + 1 ≤ N.toNat := MemSafe.Helpers.ltN_true hb.2.1 hb.2.2.1 hc
    have H : Hoare σ X (K2B be O N I (2 * I.toNat + 2 * 0)) (nibPair (nm "b") 0 (incI iN 1))
        (fun r u => r = none ∧ K2J be O N u) :=
      k2n_pair (by decide) (by decide) (by decide) (by decide : 0 < 1) h1 hON
        (fun _ old h => k2J_resVar (by decide) (by decide) (by decide) old h)
        (hoare_pre (k2n_inc h1) (fun _ _ h => by
          rw [show 2 * I.toNat + 2 * 0 + 2 = 2 * I.toNat + 2 * 1 by omega] at h; exact h))
    have := H u hu (by rw [show 2 * I.toNat + 2 * 0 = 2 * I.toNat by omega]; exact hb) ht
    refine ⟨fun _ => this.2, fun hr => absurd (this.1.symm.trans hr) (by simp),
      fun hr => absurd (this.1.symm.trans hr) (by simp),
      fun v hr => absurd (this.1.symm.trans hr) (by simp)⟩
  · intro u _ ⟨I, hb, hle⟩ hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
    rw [ev_lw hb.2.2.1] at hx
    rw [ev_lw hb.2.1] at hy
    cases hx
    cases hy
    have hNI := lower_false hxy
    have e : I = N := BitVec.eq_of_toNat_eq (by omega)
    subst e
    exact ⟨rfl, hb⟩

/-- **`key_to_nibbles` writes `2 N` nibbles at `O`.** -/
theorem ret_key_to_nibbles (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "key_to_nibbles") (fun vs s r t => ∀ K N O : BitVec 64,
      vs = [.val (.word K), .val (.word N), .val (.word O)] → O.toNat + 2 * N.toNat < 2 ^ 64 →
      ∀ v, r = .returned v → t.be = s.be ∧ NibOK t.memory s.be O (2 * N.toNat)) := by
  intro vs body callee rs hl s hs hloc r hr K N O hvs hON v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, C, hABC, -, -, -, hA, hB, hC'⟩ :=
    Spec.Inv.lookupCode_three_full code_key_to_nibbles (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have H : Hoare σ X (fun u => u = s) k2nBody (fun r t => ∀ v, r = some (.returned v) →
      t.be = s.be ∧ NibOK t.memory s.be O (2 * N.toNat)) := by
    unfold k2nBody
    refine hoare_dec fun s1 _ hs1 v1 hv1 _ => ?_
    subst hs1
    rw [ev_cw] at hv1
    cases hv1
    have h0 : K2J s1.be O N (setVarHOLFinite iN (.val (.word (BitVec.ofNat 64 0))) s1) := by
      refine ⟨BitVec.ofNat 64 0, ⟨?_, ?_, lk_set_self _ _ _, rfl, fun j hj => by simp at hj⟩, by simp⟩
      · rw [lk_set_ne _ _ (by decide), hloc]; exact hC'
      · rw [lk_set_ne _ _ (by decide), hloc]; exact hB
    refine hoare_pre (P := K2J s1.be O N) ?_ (fun t _ ht => by subst ht; exact h0)
    refine Spec.Inv.hseq (k2n_loop4 hON) (Spec.Inv.hseq (k2n_loop1 hON) ?_)
    refine hoare_return fun t _ hb v' _ => ?_
    intro v'' _
    exact ⟨hb.2.2.2.1, hb.2.2.2.2⟩
  have := H s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at this
  exact this v rfl

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.byteOf_upd_set
#print axioms InitECandidate.Solver.Band4.ret_key_to_nibbles
