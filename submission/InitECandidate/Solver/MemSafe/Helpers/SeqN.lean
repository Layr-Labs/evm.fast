import InitECandidate.Solver.MemSafe.Helpers.Bytes

set_option autoImplicit false

/-!
# Loops in the locals-invariant style

Loop bodies that only assign locals and store complete normally. Their posts are
`LN Rf s0 J r t := r = none ∧ LPre Rf s0 J t`.

* `hoareG_assignN`, `hoareG_seqN`, `hoareG_stPN`, `hoareG_stByteN` (a byte store at an address
  the invariant bounds);
* `hoareG_whileN`: from a body triple, the loop keeps `J` and exits with the condition zero.
-/

namespace InitECandidate.Solver.MemSafe.Helpers
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- Normal completion with the invariant. -/
def LN (Rf : BitVec 64 → Prop) (s0 : State σ) (J : Locals → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  r = none ∧ LPre Rf s0 J t

theorem hoareG_assignN {n : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LN Rf s0 L') :=
  hoareG_assign fun s hs hp v hv _ => ⟨rfl, h s hs hp.1 v hv, hp.2⟩

theorem hoareG_seqN {a b : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L1 L2 L3 : Locals → Prop}
    (ha : HoareG σ X (LPre Rf s0 L1) a (LN Rf s0 L2))
    (hb : HoareG σ X (LPre Rf s0 L2) b (LN Rf s0 L3)) :
    HoareG σ X (LPre Rf s0 L1) (.seq a b) (LN Rf s0 L3) :=
  hoareG_seq ha (fun _ _ _ hr _ h => absurd h.1 hr) (hoareG_pre hb fun _ _ h => h.2)

/-- A byte store at an address `w` that the invariant puts in `Rf`'s aligned cell. -/
theorem hoareG_stByteN {a e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L : Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s a = some (.val (.word w)) →
      Rf (panByteAlignHOL w)) :
    HoareG σ X (LPre Rf s0 L) (.storeByte a e) (LN Rf s0 L) := by
  refine hoareG_storeByte fun t hs hpre w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  exact ⟨rfl, hpre.1, hpre.2.1,
    hpre.2.2.trans (hm.mono fun b hb => hb ▸ h t hs hpre.1 w ha)⟩

/-- **A loop** whose body completes normally keeping `J`. -/
theorem hoareG_whileN {c : ExpHOL 64} {body : ProgHOL 64} {Rf : BitVec 64 → Prop}
    {s0 : State σ} {J J' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (fun s => LPre Rf s0 J s ∧ CondTrue s c) body (LN Rf s0 J))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (LPre Rf s0 J) (.while c body) (LQ Rf s0 J' Ret) := by
  refine hoareG_while (fun t h => h) ?_
    (fun s hs h hc => ⟨h.2, fun _ => hexit s hs h.1 hc, fun _ h => nomatch h⟩)
  intro t hs hpre hgood
  obtain ⟨hr, hJ⟩ := hb t hs hpre hgood
  rw [hr]
  exact ⟨fun _ => hJ, (fun h => nomatch h), (fun h => nomatch h), (fun r' h => nomatch h)⟩

/-- The value of a word local. -/
theorem lk_word {m : Locals} {x : MlS} (h : ∃ w : BitVec 64, m.lookup x = some (.val (.word w))) :
    ∃ w : BitVec 64, m.lookup x = some (.val (.word w)) := h

/-- `var x = e; body` in the locals-invariant style. -/
theorem hoareG_decL {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LQ Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.1 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => hout _ _ hp.1 (hq.2.1 hr), hq.2.2⟩

theorem toNat_subc {I : BitVec 64} {c : Nat} (h : c ≤ I.toNat) :
    (I - BitVec.ofNat 64 c).toNat = I.toNat - c := by
  have hc : c < 2 ^ 64 := by have := I.isLt; omega
  rw [BitVec.toNat_sub, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hc]
  have := I.isLt
  rw [show 2 ^ 64 - c + I.toNat = 2 ^ 64 + (I.toNat - c) by omega, Nat.add_mod_left,
    Nat.mod_eq_of_lt (by omega)]

theorem toNat_add2 {D I : BitVec 64} (h : D.toNat + I.toNat < 2 ^ 64) :
    (D + I).toNat = D.toNat + I.toNat := by
  rw [BitVec.toNat_add, Nat.mod_eq_of_lt h]

/-- `var x = e; body` in a loop body (normal completion only). -/
theorem hoareG_decN {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LN Rf s0 (L' s.locals)))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LN Rf s0 Lout) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.1 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨hq.1, hout _ _ hp.1 hq.2.1, hq.2.2⟩

theorem hoareG_preN {p : ProgHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' J : Locals → Prop}
    (h : HoareG σ X (LPre Rf s0 L') p (LN Rf s0 J)) (hL : ∀ m, L m → L' m) :
    HoareG σ X (LPre Rf s0 L) p (LN Rf s0 J) :=
  hoareG_pre h fun _ _ hp => ⟨hL _ hp.1, hp.2⟩

/-- `n ≥ i + K` is true only with `I + K ≤ N` (no wrap below `2^63`). -/
theorem geK_true {t : State σ} {n i : MlS} {N I : BitVec 64} {K : Nat} (hK : K < 2 ^ 32)
    (hN : N.toNat < 2 ^ 63) (hIN : I.toNat ≤ N.toNat)
    (hn : t.locals.lookup n = some (.val (.word N))) (hi : t.locals.lookup i = some (.val (.word I)))
    (hc : CondTrue t (geK n i K)) : I.toNat + K ≤ N.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hn] at hx
  cases hx
  rw [ev_add2 (ev_lw hi) (ev_cw _ _)] at hy
  cases hy
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true',
    decide_eq_false_iff_not, BitVec.lt_def] at hxy
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := K) (by omega),
    Nat.mod_eq_of_lt (by omega)] at hxy
  omega

/-- `i < n` is true only with `I < N`. -/
theorem ltN_true {t : State σ} {n i : MlS} {N I : BitVec 64}
    (hn : t.locals.lookup n = some (.val (.word N))) (hi : t.locals.lookup i = some (.val (.word I)))
    (hc : CondTrue t (ltN i n)) : I.toNat < N.toNat := by
  obtain ⟨w, hw, hw0⟩ := hc
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lw hi] at hx
  cases hx
  rw [ev_lw hn] at hy
  cases hy
  exact lower_true hxy

/-- `var x = e; body` where the declaration may use the full pre (e.g. a global's value). -/
theorem hoareG_decL' {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LQ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LQ Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => hout _ _ hp.1 (hq.2.1 hr), hq.2.2⟩

end InitECandidate.Solver.MemSafe.Helpers
