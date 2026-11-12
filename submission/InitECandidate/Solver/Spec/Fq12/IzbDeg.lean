import InitECandidate.Solver.Spec.Fq12.Loops
import InitECandidate.Solver.Spec.Fq12.BePreserved
import InitECandidate.Solver.Spec.Rlp

/-!
# `is_zero_bytes` and `fq_poly_deg`

* `funSpec_izb`: `is_zero_bytes(p, n)` returns `1` when the `n` bytes at `p` are zero and
  `0` when one of them is nonzero (`ByteZ`, `ByteNZ`, read in the entry state), and
  writes no memory.
* `funSpec_deg`: `fq_poly_deg(a, 13)` returns a `d` with `DegFacts s a d` in the entry
  state `s`, and writes no memory.
-/

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem ev_loadByte_rdB {s : PanSemStateFiniteExact 64 σ} {e : ExpHOL 64} {a x : BitVec 64}
    (he : ev s e = some (.val (.word a))) (h : ev s (.loadByte e) = some (.val (.word x))) :
    ∃ b, rdB s a = some b ∧ x = BitVec.ofNat 64 b.toNat := by
  simp only [ev, evalHOLExact] at he h
  rw [he] at h
  dsimp only at h
  obtain ⟨b, hb, hx⟩ := Option.map_eq_some_iff.mp h
  refine ⟨b, hb, ?_⟩
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx
  exact hx.symm

theorem neq_true {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x y = true) : x ≠ y := by
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using h

theorem neq_false {x y : BitVec 64}
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual x y = false) : x = y := by
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using h

theorem ofNat_uint8_ne {b : UInt8} (h : BitVec.ofNat 64 b.toNat ≠ 0) : b ≠ 0 := by
  rintro rfl
  exact h rfl

theorem ofNat_uint8_eq {b : UInt8} (h : BitVec.ofNat 64 b.toNat = 0) : b = 0 := by
  have h1 := congrArg BitVec.toNat h
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := UInt8.toNat_lt b; omega)] at h1
  exact UInt8.toNat_inj.mp (by simpa using h1)

/-- What a returning `is_zero_bytes(p, n)` call did. -/
def IzbR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ p n : BitVec 64, vs = [.val (.word p), .val (.word n)] ∧ t.memory = s0.memory ∧
    ((v = .val (.word 1) ∧ ∀ i : BitVec 64, i.toNat < n.toNat → ByteZ s0 (p + i)) ∨
      (v = .val (.word 0) ∧ ∃ i : BitVec 64, i.toNat < n.toNat ∧ ByteNZ s0 (p + i)))

theorem rdB_eq_of {s t : PanSemStateFiniteExact 64 σ} (hm : t.memory = s.memory)
    (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be) (x : BitVec 64) : rdB t x = rdB s x := by
  unfold rdB
  rw [hm, hbe]
  have : t.memaddrs = s.memaddrs := hd
  revert this
  generalize t.memaddrs = D
  intro h
  subst h
  rfl

/-- The facts the scan of `is_zero_bytes` keeps, with the scanned length `iv`. -/
def IzbJ (s0 : PanSemStateFiniteExact 64 σ) (P N iv : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "p") = some (.val (.word P)) ∧
  t.locals.lookup (nm "n") = some (.val (.word N)) ∧
  t.locals.lookup (nm "i") = some (.val (.word iv)) ∧ iv.toNat ≤ N.toNat ∧
  (∀ j : BitVec 64, j.toNat < iv.toNat → ByteZ s0 (P + j)) ∧
  t.memory = s0.memory ∧ t.memaddrs = s0.memaddrs ∧ t.be = s0.be

theorem funSpec_izb (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "is_zero_bytes") (fun vs s r t => ∀ v, r = .returned v → IzbR vs s v t) := by
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 hs0 hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_is_zero_bytes (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst s
  cases hv
  have hp0 : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hla
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlb
  let Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop := fun r t =>
    (r = none → (∀ j : BitVec 64, j.toNat < N.toNat → ByteZ s0 (P + j)) ∧
      t.memory = s0.memory) ∧
    (∀ v, r = some (.returned v) → IzbR [.val (.word P), .val (.word N)] s0 v t)
  refine hoare_seq (R := Q) (hoare_pre (P := fun t => ∃ iv, IzbJ s0 P N iv t) ?_ ?_)
    (fun r t _ _ _ h v hv => h.2 v hv) ?_
  · refine hoare_while (fun s h => h) ?_ ?_
    · -- the body, for a fixed scanned length `iv < n`
      refine hoare_pre (P := fun t => ∃ iv, iv.toNat < N.toNat ∧ IzbJ s0 P N iv t) ?_ ?_
      · refine hoare_exists fun iv => hoare_pure fun hlt => ?_
        refine hoare_seq (R := fun r t => (r = none ∧ IzbJ s0 P N iv t ∧ ByteZ s0 (P + iv)) ∨
            (∃ v, r = some (.returned v) ∧ Q r t)) ?_ ?_ ?_
        · refine hoare_ite ?_ ?_
          · refine hoare_return fun t _ ⟨hJ, w, hw, hw0⟩ v hv => ?_
            obtain ⟨hp, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
            obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
            rw [ev_cw] at hy; cases hy
            obtain ⟨b, hb, rfl⟩ := ev_loadByte_rdB (ev_add2 (ev_lw hp) (ev_lw hi)) hx
            have hb0 := ofNat_uint8_ne (neq_true hxy)
            rw [ev_cw] at hv; cases hv
            refine Or.inr ⟨_, rfl, nofun, fun v hv => ?_⟩
            simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
            subst hv
            refine ⟨P, N, rfl, by simp [emptyLocalsHOLFinite, hm], Or.inr ⟨rfl, iv, hlt, b, ?_, hb0⟩⟩
            rw [← rdB_eq_of hm hd hbe]; exact hb
          · refine hoare_skip fun t _ ⟨hJ, hc⟩ => Or.inl ⟨rfl, hJ, ?_⟩
            obtain ⟨hp, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
            obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
            rw [ev_cw] at hy; cases hy
            obtain ⟨b, hb, rfl⟩ := ev_loadByte_rdB (ev_add2 (ev_lw hp) (ev_lw hi)) hx
            have hb0 := ofNat_uint8_eq (neq_false hxy)
            subst hb0
            show rdB s0 (P + iv) = some 0
            rw [← rdB_eq_of hm hd hbe]; exact hb
        · intro r t _ hr _ h
          rcases h with ⟨h, -⟩ | ⟨v, rfl, hq⟩
          · exact absurd h hr
          · refine ⟨nofun, nofun, nofun, fun _ _ => hq⟩
        · refine hoare_assign fun t _ h v hv _ => ?_
          rcases h with ⟨-, hJ, hz1⟩ | ⟨v, h, -⟩
          · obtain ⟨hp, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
            rw [ev_add2 (ev_lw hi) (ev_cw _ 1)] at hv
            cases hv
            have hsucc : (iv + BitVec.ofNat 64 1).toNat = iv.toNat + 1 := by
              rw [BitVec.toNat_add, BitVec.toNat_ofNat]
              have := N.isLt
              rw [Nat.mod_eq_of_lt (a := 1) (by omega), Nat.mod_eq_of_lt (by omega)]
            refine ⟨fun _ => ⟨iv + BitVec.ofNat 64 1, ?_⟩, nofun,
              nofun, fun _ => nofun⟩
            refine ⟨by rw [lk_set_ne _ _ (by decide)]; exact hp,
              by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _, by omega, ?_,
              hm, hd, hbe⟩
            intro j hj
            rw [hsucc] at hj
            by_cases hji : j.toNat < iv.toNat
            · exact hz j hji
            · have : j = iv := BitVec.eq_of_toNat_eq (by omega)
              subst this; exact hz1
          · cases h
      · intro t _ ⟨⟨iv, hJ⟩, w, hw, hw0⟩
        obtain ⟨hp, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_lw hi] at hx; cases hx
        rw [ev_lw hn] at hy; cases hy
        exact ⟨iv, lower_true hxy, hp, hn, hi, hiv, hz, hm, hd, hbe⟩
    · -- exit: `i ≥ n`
      intro t _ ⟨iv, hp, hn, hi, hiv, hz, hm, hd, hbe⟩ hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_lw hi] at hx; cases hx
      rw [ev_lw hn] at hy; cases hy
      have := lower_false hxy
      exact ⟨fun _ => ⟨fun j hj => hz j (by omega), hm⟩, fun _ => nofun⟩
  · intro t _ ht
    subst ht
    refine ⟨BitVec.ofNat 64 0, by rw [lk_set_ne _ _ (by decide)]; exact hp0,
      by rw [lk_set_ne _ _ (by decide)]; exact hn0, lk_set_self _ _ _, by simp, ?_, rfl, rfl, rfl⟩
    intro j hj; simp at hj
  · refine hoare_return fun t _ hq v hv => ?_
    rw [ev_cw] at hv; cases hv
    obtain ⟨hz, hm⟩ := hq.1 rfl
    intro v hv
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
    subst hv
    exact ⟨P, N, rfl, by simp [emptyLocalsHOLFinite, hm], Or.inl ⟨rfl, hz⟩⟩

/-! ## `fq_poly_deg` -/

/-- Every function keeps the endianness flag. -/
theorem funSpec_be (f : MlS) : FunSpec σ X f (fun _ s _ t => t.be = s.be) := by
  intro vs body callee rs hl s hs hloc r hr
  exact be_preserved s body

/-- What a returning `fq_poly_deg(a, n)` call did. -/
def DegR (vs : List (ValueHOL 64)) (s0 : PanSemStateFiniteExact 64 σ) (v : ValueHOL 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ A N : BitVec 64, vs = [.val (.word A), .val (.word N)] ∧ t.memory = s0.memory ∧
    (N = 13 → ∃ d, v = .val (.word d) ∧ DegFacts s0 A d)

def DegJ (s0 : PanSemStateFiniteExact 64 σ) (A N iv : BitVec 64)
    (t : PanSemStateFiniteExact 64 σ) : Prop :=
  t.locals.lookup (nm "a") = some (.val (.word A)) ∧
  t.locals.lookup (nm "n") = some (.val (.word N)) ∧
  t.locals.lookup (nm "i") = some (.val (.word iv)) ∧ iv.toNat ≤ N.toNat ∧
  (∀ k : BitVec 64, iv.toNat ≤ k.toNat → k.toNat < N.toNat → SlotZ s0 A k) ∧
  t.memory = s0.memory ∧ t.memaddrs = s0.memaddrs ∧ t.be = s0.be

theorem funSpec_deg (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "fq_poly_deg") (fun vs s r t => ∀ v, r = .returned v → DegR vs s v t) := by
  have hizb := (funSpec_izb (σ := σ) hC).and (funSpec_be (σ := σ) (X := X) (nm "is_zero_bytes"))
  apply funSpec_of_hoare
  intro vs body callee rs hl s0 hs0 hloc
  rw [hC] at hl
  obtain ⟨rfl, -, A', B', rfl, hA, hB, hla, hlb⟩ := lookupCode_two code_fq_poly_deg (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hB
  have ha0 : s0.locals.lookup (nm "a") = some (.val (.word A)) := by rw [hloc]; exact hla
  have hn0 : s0.locals.lookup (nm "n") = some (.val (.word N)) := by rw [hloc]; exact hlb
  refine hoare_dec fun s _ hs v hv _ => ?_
  subst s
  rw [ev_lw hn0] at hv
  cases hv
  let Q : Option (PanSemResultExact 64) → PanSemStateFiniteExact 64 σ → Prop := fun r t =>
    (r = none → (∀ k : BitVec 64, k.toNat < N.toNat → SlotZ s0 A k) ∧ t.memory = s0.memory) ∧
    (∀ v, r = some (.returned v) → DegR [.val (.word A), .val (.word N)] s0 v t)
  refine hoare_seq (R := Q) (hoare_pre (P := fun t => ∃ iv, DegJ s0 A N iv t) ?_ ?_)
    (fun r t _ _ _ h v hv => h.2 v hv) ?_
  · refine hoare_while (fun s h => h) ?_ ?_
    · refine hoare_pre (P := fun t => ∃ iv, 0 < iv.toNat ∧ DegJ s0 A N iv t) ?_ ?_
      · refine hoare_exists fun iv => hoare_pure fun hpos => ?_
        have hsub1 : (iv - BitVec.ofNat 64 1).toNat = iv.toNat - 1 := by
          rw [BitVec.toNat_sub, BitVec.toNat_ofNat]; omega
        refine hoare_seq (R := fun r t => r = none ∧
            t.locals.lookup (nm "a") = some (.val (.word A)) ∧
            t.locals.lookup (nm "n") = some (.val (.word N)) ∧
            t.locals.lookup (nm "i") = some (.val (.word (iv - BitVec.ofNat 64 1))) ∧
            iv.toNat ≤ N.toNat ∧
            (∀ k : BitVec 64, iv.toNat ≤ k.toNat → k.toNat < N.toNat → SlotZ s0 A k) ∧
            t.memory = s0.memory ∧ t.memaddrs = s0.memaddrs ∧ t.be = s0.be)
          ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoare_assign fun t _ hJ v hv _ => ?_
          obtain ⟨ha, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
          rw [ev_sub2 (ev_lw hi) (ev_cw _ 1)] at hv
          cases hv
          exact ⟨rfl, by rw [lk_set_ne _ _ (by decide)]; exact ha,
            by rw [lk_set_ne _ _ (by decide)]; exact hn, lk_set_self _ _ _, hiv, hz, hm, hd, hbe⟩
        · refine hoare_decCallS hizb ?_
          intro t _ ⟨_, ha, hn, hi, hiv, hz, hm, hd, hbe⟩ vs hvs callee v st hR hst _
          have hargs : evs t [slotE (lv (nm "a")) (lv (nm "i")), cw 32] =
              some [.val (.word (A + (iv - BitVec.ofNat 64 1) * BitVec.ofNat 64 32)),
                .val (.word (BitVec.ofNat 64 32))] :=
            evs_cons (ev_add2 (ev_lw ha) (ev_mul2 (ev_lw hi) (ev_cw _ 32))) (evs_cons (ev_cw _ 32) evs_nil)
          rw [hargs] at hvs
          cases hvs
          obtain ⟨p, n, hpn, hmem, hres⟩ := hR.1 v rfl
          have hbe' := hR.2
          simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hpn
          obtain ⟨rfl, rfl⟩ := hpn
          have hm' : st.memory = s0.memory := by rw [hmem]; exact hm
          have hbe2 : st.be = s0.be := by rw [hbe']; exact hbe
          have hd2 : st.memaddrs = s0.memaddrs := by rw [hst.2.1, hs0.2.1]
          have hent : ∀ x, rdB (callEntryStateHOLFinite t callee) x = rdB s0 x :=
            rdB_eq_of hm hd hbe
          have h32 : (BitVec.ofNat 64 32 : BitVec 64).toNat = 32 := rfl
          -- the restored continuation state reads `a`, `n`, `i` from `t`
          have hloc' : ∀ u : PanSemStateFiniteExact 64 σ, u = setVarHOLFinite (nm "z") v
              { st with locals := t.locals } → ∀ x, x ≠ nm "z" →
              (u.locals.resVarEq (nm "z", t.locals.lookup (nm "z"))).lookup x = t.locals.lookup x ∧
              u.locals.lookup x = t.locals.lookup x := by
            intro u hu x hx
            subst hu
            refine ⟨?_, ?_⟩
            · rw [lookup_resVarEq_ne _ _ (Ne.symm hx), lk_set_ne _ _ (Ne.symm hx)]
            · rw [lk_set_ne _ _ (Ne.symm hx)]
          have hkn : (iv - BitVec.ofNat 64 1).toNat < N.toNat := by omega
          refine hoare_ite ?_ ?_
          · -- `z == 0`: a nonzero byte, return `i`
            refine hoare_return fun u _ ⟨hu, w, hw, hw0⟩ v' hv' => ?_
            have hzv : u.locals.lookup (nm "z") = some v := by rw [hu]; exact lk_set_self _ _ _
            rcases hres with ⟨rfl, -⟩ | ⟨rfl, j, hj, hnz⟩
            · rw [ev_cmp (ev_lw hzv) (ev_cw _ 0)] at hw
              simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hw
              exact absurd hw.symm hw0
            · rw [ev_lv, (hloc' u hu (nm "i") (by decide)).2, hi] at hv'
              cases hv'
              refine ⟨nofun, nofun, nofun, fun v'' hv'' => ?_⟩
              refine ⟨nofun, fun v3 hv3 => ?_⟩
              simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv'' hv3
              subst hv''
              subst hv3
              refine ⟨A, N, rfl, by simp [emptyLocalsHOLFinite, hu, setVarHOLFinite, hm'], ?_⟩
              intro hN
              subst hN
              refine ⟨_, rfl, Or.inr ⟨hkn, ⟨j, by rw [h32] at hj; exact hj, ?_⟩, ?_⟩⟩
              · obtain ⟨b, hb, hb0⟩ := hnz
                exact ⟨b, by rw [← hent]; exact hb, hb0⟩
              · intro k hk1 hk2
                exact hz k (by omega) hk2
          · -- `z == 1`: the coefficient is zero, continue below
            refine hoare_skip fun u _ ⟨hu, hc⟩ => ?_
            have hzv : u.locals.lookup (nm "z") = some v := by rw [hu]; exact lk_set_self _ _ _
            rcases hres with ⟨rfl, hzero⟩ | ⟨rfl, -⟩
            · refine ⟨fun _ => ⟨iv - BitVec.ofNat 64 1, ?_⟩, nofun, nofun, fun _ => nofun⟩
              refine ⟨by rw [(hloc' u hu _ (by decide)).1]; exact ha,
                by rw [(hloc' u hu _ (by decide)).1]; exact hn,
                by rw [(hloc' u hu _ (by decide)).1]; exact hi, by omega, ?_, ?_, ?_, ?_⟩
              · intro k hk1 hk2
                by_cases hk : k.toNat = (iv - BitVec.ofNat 64 1).toNat
                · have : k = iv - BitVec.ofNat 64 1 := BitVec.eq_of_toNat_eq hk
                  subst this
                  intro j hj
                  show rdB s0 _ = some 0
                  rw [← hent]
                  exact hzero j (by rw [h32]; exact hj)
                · exact hz k (by omega) hk2
              · rw [hu]; exact hm'
              · rw [hu]; exact hd2
              · rw [hu]; exact hbe2
            · rw [ev_cmp (ev_lw hzv) (ev_cw _ 0)] at hc
              simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      · intro t _ ⟨⟨iv, hJ⟩, w, hw, hw0⟩
        obtain ⟨ha, hn, hi, hiv, hz, hm, hd, hbe⟩ := hJ
        obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
        rw [ev_cw] at hx; cases hx
        rw [ev_lw hi] at hy; cases hy
        exact ⟨iv, by have := lower_true hxy; simpa using this, ha, hn, hi, hiv, hz, hm, hd, hbe⟩
    · intro t _ ⟨iv, ha, hn, hi, hiv, hz, hm, hd, hbe⟩ hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx; cases hx
      rw [ev_lw hi] at hy; cases hy
      have := lower_false hxy
      simp only [BitVec.toNat_ofNat, Nat.zero_mod] at this
      exact ⟨fun _ => ⟨fun k hk => hz k (by omega) hk, hm⟩, fun _ => nofun⟩
  · intro t _ ht
    subst ht
    exact ⟨N, by rw [lk_set_ne _ _ (by decide)]; exact ha0,
      by rw [lk_set_ne _ _ (by decide)]; exact hn0, lk_set_self _ _ _, le_refl _,
      fun k h1 h2 => absurd h2 (by omega), rfl, rfl, rfl⟩
  · refine hoare_return fun t _ hq v hv => ?_
    rw [ev_sub2 (ev_cw _ 0) (ev_cw _ 1)] at hv
    cases hv
    obtain ⟨hz, hm⟩ := hq.1 rfl
    intro v hv
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hv
    subst hv
    refine ⟨A, N, rfl, by simp [emptyLocalsHOLFinite, hm], fun hN => ⟨_, rfl, Or.inl ⟨rfl, ?_⟩⟩⟩
    intro k hk
    exact hz k (by rw [hN]; exact hk)

end InitECandidate.Solver.Spec.Fq12
