import InitECandidate.Solver.MemSafe.Rcpt.Fin
import InitECandidate.Solver.MemSafe.Rcpt.Defs

set_option autoImplicit false

/-!
# Kit for the receipt proofs

* `LW m x n`: local `x` holds the word `n` (as a natural below `2^64`).
* Reading a protected memory cell (`mem_prot`): a cell outside a footprint is unchanged.
* Call steps in the footprint kit (`LPre`/`LQ`): `rlp_encode_bytes` and `rlp_finish_list` called as
  `w = f(...)`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Rcpt
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

def LW (m : Locals) (x : MlS) (n : Nat) : Prop :=
  m.lookup x = some (.val (.word (BitVec.ofNat 64 n)))

def LB (m : Locals) (x : MlS) (w : BitVec 64) : Prop :=
  m.lookup x = some (.val (.word w))

theorem lb_keep {m : Locals} {x y : MlS} {v : ValueHOL 64} {w : BitVec 64} (h : LB m x w)
    (hxy : x ≠ y) : LB (m.update (y, v)) x w := by
  unfold LB at *
  rw [lookup_update_ne _ _ hxy.symm]; exact h

theorem lw_keep {m : Locals} {x y : MlS} {v : ValueHOL 64} {n : Nat} (h : LW m x n)
    (hxy : x ≠ y) : LW (m.update (y, v)) x n := by
  unfold LW at *
  rw [lookup_update_ne _ _ hxy.symm]; exact h

theorem lb_set {m : Locals} {x : MlS} {w : BitVec 64} : LB (m.update (x, .val (.word w))) x w :=
  lookup_update_self _ _ _

theorem lw_set {m : Locals} {x : MlS} {n : Nat} : LW (m.update (x, .val (.word (BitVec.ofNat 64 n)))) x n :=
  lookup_update_self _ _ _

theorem lb_res {m : Locals} {x y : MlS} {o : Option (ValueHOL 64)} {w : BitVec 64} (h : LB m x w)
    (hxy : x ≠ y) : LB (m.resVarEq (y, o)) x w := by
  unfold LB at *
  rw [lookup_resVarEq_ne _ _ hxy.symm]; exact h

theorem lw_res {m : Locals} {x y : MlS} {o : Option (ValueHOL 64)} {n : Nat} (h : LW m x n)
    (hxy : x ≠ y) : LW (m.resVarEq (y, o)) x n := by
  unfold LW at *
  rw [lookup_resVarEq_ne _ _ hxy.symm]; exact h

theorem ofNat_toNat_self (x : BitVec 64) : BitVec.ofNat 64 x.toNat = x := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt x.isLt]

theorem toNat_ofNat_lt {n : Nat} (h : n < 2 ^ 64) : (BitVec.ofNat 64 n).toNat = n := by
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt h]

theorem ev_lb {s : State σ} {x : MlS} {w : BitVec 64} (h : LB s.locals x w) :
    ev s (lv x) = some (.val (.word w)) := ev_lw h

theorem ev_lwn {s : State σ} {x : MlS} {n : Nat} (h : LW s.locals x n) :
    ev s (lv x) = some (.val (.word (BitVec.ofNat 64 n))) := ev_lw h

/-! ## Protected cells -/

/-- Cells a footprint `Overlap D len` does not contain: below `D - 7` or at or above `D + len`. -/
def Prot (D len : Nat) (c : BitVec 64) : Prop := c.toNat + 8 ≤ D ∨ D + len ≤ c.toNat

theorem not_overlap_of_prot {D len : Nat} {c : BitVec 64} (h : Prot D len c) :
    ¬ Overlap D len c := by
  unfold Overlap Prot at *
  omega

theorem mem_prot {D len : Nat} {m m' : Mem} {c : BitVec 64} (hmo : ModifiesOnly (Overlap D len) m m')
    (h : Prot D len c) : m' c = m c := hmo c (not_overlap_of_prot h)

theorem rd_prot {D len : Nat} {m m' : Mem} {c : BitVec 64} (hmo : ModifiesOnly (Overlap D len) m m')
    (h : Prot D len c) : rd m' c = rd m c := by
  unfold rd
  rw [mem_prot hmo h]

/-- A load at `x + k`, where the cell is protected, reads the entry memory. -/
theorem ev_ldk {s : State σ} {M : Mem} {D len : Nat} (hmo : ModifiesOnly (Overlap D len) M s.memory)
    {x : MlS} {Xv : BitVec 64} (hx : LB s.locals x Xv) {k : Nat}
    (hp : Prot D len (Xv + BitVec.ofNat 64 k)) {v : ValueHOL 64} (hv : ev s (ldk x k) = some v) :
    v = .val (.word (rd M (Xv + BitVec.ofNat 64 k))) := by
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lb hx) (ev_cw _ k)] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [mem_prot hmo hp]
  cases hM : M (Xv + BitVec.ofNat 64 k) with
  | word w => simp [rd, hM]

/-! ## `rlp_encode_bytes` and `rlp_finish_list` as statements `w = f(...)` -/

theorem hoareG_ex {ι : Type} {P : ι → State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ j, HoareG σ X (P j) c Q) : HoareG σ X (fun s => ∃ j, P j s) c Q :=
  fun s hs ⟨j, hj⟩ => h j s hs hj

/-- `x = f(args);` with the continuation fact given the full precondition. -/
theorem hoareG_callAFootZ' {f x : MlS} {args : List (ExpHOL 64)} {Pre : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f Pre R RetF)
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ vs, evs s args = some vs →
      Pre vs ∧ ∀ a, R vs a → Rf a)
    (hL : ∀ (s : State σ) vs v, InCtx s X → LPre Rf s0 L s → evs s args = some vs → RetF vs v →
      L' (s.locals.update (x, v))) :
    HoareG σ X (LPre Rf s0 L) (.call (some (some (.local, x), none)) f args)
      (LZ Rf s0 L' Ret) := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hpre vs hvs callee v st hR _ hval
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, hret⟩ := hR (by simp [Good]) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩,
      fun _ => hL s vs v hs hpre hvs (hret v rfl), fun _ h => nomatch h⟩, nb_none⟩
  · intro s hs hpre vs hvs callee r st hR _ habn
    obtain ⟨hP, hsub⟩ := h s hs hpre vs hvs
    obtain ⟨hgl, hmod, -⟩ := hR (abn_good habn) hP
    exact ⟨⟨⟨hgl.trans hpre.2.1, hpre.2.2.trans (hmod.mono hsub)⟩, (fun h => nomatch h),
      fun v hv => absurd (Option.some.inj hv) (abn_ne_returned habn v)⟩, nb_abn habn⟩

theorem hoareG_bytesStep (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {x : MlS}
    {e1 e2 : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hX : ∀ m, L m → ∃ X' : BitVec 64, LB m x X')
    (hN : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e2 = some v →
      ∃ N' : BitVec 64, v = .val (.word N'))
    (hgood : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ X' N' : BitVec 64, LB s.locals x X' →
      ev s e2 = some (.val (.word N')) →
      X'.toNat + hdrLen N'.toNat + N'.toNat ≤ scratchEnd ∧
        ∀ a, Overlap X'.toNat (hdrLen N'.toNat + N'.toNat) a → Rf a)
    (hL : ∀ (s : State σ) (X' N' : BitVec 64) (k : Nat), LPre Rf s0 L s → LB s.locals x X' →
      ev s e2 = some (.val (.word N')) → 1 ≤ k → k ≤ hdrLen N'.toNat + N'.toNat →
      (N'.toNat ≠ 1 → k = hdrLen N'.toNat + N'.toNat) →
      L' (s.locals.update (wN, .val (.word (BitVec.ofNat 64 k))))) :
    HoareG σ X (LPre Rf s0 L) (callW (nm "rlp_encode_bytes") [lv x, e1, e2]) (LZ Rf s0 L' Ret) := by
  refine hoareG_callAFootZ' (footRet_rlp_encode_bytes hC hA) ?_ ?_
  · intro s hs hpre vs hvs
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := evs_three hvs
    obtain ⟨X', hX'⟩ := hX _ hpre.1
    rw [ev_lb hX'] at h1
    cases h1
    obtain ⟨N', hN''⟩ := hN s hs hpre v3 h3
    subst hN''
    have hN' := h3
    obtain ⟨g1, g2⟩ := hgood s hs hpre X' N' hX' hN'
    refine ⟨⟨X', N', rfl, rfl, g1⟩, fun a ⟨D2, N2, hD2, hN2, h⟩ => ?_⟩
    simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hD2 hN2
    subst hD2
    subst hN2
    exact g2 a h
  · intro s vs v hs hpre hvs hret
    obtain ⟨v1, v2, v3, rfl, h1, h2, h3⟩ := evs_three hvs
    obtain ⟨X', hX'⟩ := hX _ hpre.1
    rw [ev_lb hX'] at h1
    cases h1
    obtain ⟨N', hN''⟩ := hN s hs hpre v3 h3
    subst hN''
    have hN' := h3
    obtain ⟨k, hk, k1, k2, k3⟩ := hret (N') (by simp [argW, wordOf])
    subst hk
    exact hL s X' N' k hpre hX' hN' k1 k2 k3

theorem hoareG_finStep (hC : X.code.lookup = guestCode) (hA : AlignedDom X) {x y : MlS}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hX : ∀ m, L m → ∃ X' Y' : BitVec 64, LB m x X' ∧ LB m y Y')
    (hgood : ∀ (s : State σ) (X' Y' : BitVec 64), LPre Rf s0 L s → LB s.locals x X' → LB s.locals y Y' →
      X'.toNat + 9 ≤ Y'.toNat ∧ Y'.toNat ≤ scratchEnd ∧
        ∀ a, Overlap X'.toNat (hdrLen (Y'.toNat - (X'.toNat + 9)) + (Y'.toNat - (X'.toNat + 9))) a → Rf a)
    (hL : ∀ (s : State σ) (X' Y' : BitVec 64), LPre Rf s0 L s → LB s.locals x X' → LB s.locals y Y' →
      L' (s.locals.update (wN, .val (.word (BitVec.ofNat 64
        (hdrLen (Y'.toNat - (X'.toNat + 9)) + (Y'.toNat - (X'.toNat + 9)))))))) :
    HoareG σ X (LPre Rf s0 L) (callW (nm "rlp_finish_list") [lv x, lv y]) (LZ Rf s0 L' Ret) := by
  refine hoareG_callAFootZ' (footRet_finish_listX hC hA) ?_ ?_
  · intro s hs hpre vs hvs
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    obtain ⟨X', Y', hX', hY'⟩ := hX _ hpre.1
    rw [ev_lb hX'] at h1
    rw [ev_lb hY'] at h2
    cases h1
    cases h2
    obtain ⟨g1, g2, g3⟩ := hgood s X' Y' hpre hX' hY'
    refine ⟨⟨X', Y', rfl, rfl, g1, g2⟩, fun a ⟨D2, P2, hD2, hP2, h⟩ => ?_⟩
    simp only [argW, wordOf, List.getElem?_cons_zero, List.getElem?_cons_succ, Option.some.injEq] at hD2 hP2
    subst hD2
    subst hP2
    exact g3 a h
  · intro s vs v hs hpre hvs hret
    obtain ⟨v1, vs1, rfl, h1, hvs1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, h2, hvs2⟩ := evs_cons_inv hvs1
    rw [evs_nil] at hvs2
    cases hvs2
    obtain ⟨X', Y', hX', hY'⟩ := hX _ hpre.1
    rw [ev_lb hX'] at h1
    rw [ev_lb hY'] at h2
    cases h1
    cases h2
    have := hret X' Y' (by simp [argW, wordOf]) (by simp [argW, wordOf])
    subst this
    exact hL s X' Y' hpre hX' hY'

theorem lb_eq {m : Locals} {x : MlS} {X' : BitVec 64} {n : Nat} (h1 : LB m x X') (h2 : LW m x n) :
    X' = BitVec.ofNat 64 n := by
  unfold LB at h1
  unfold LW at h2
  rw [h1] at h2
  simpa using h2

theorem cmp_less_nat'' {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true ↔ x.toNat < y.toNat := by
  have hx' : x.toNat < 9223372036854775808 := by omega
  have hy' : y.toNat < 9223372036854775808 := by omega
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL,
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  simp [hx', hy']

theorem lt_of_cond {s : State σ} {x y : MlS} {a b : Nat} (ha : LW s.locals x a) (hb : LW s.locals y b)
    (ha2 : a < 2 ^ 63) (hb2 : b < 2 ^ 63) (h : CondTrue s (.cmp .less (lv x) (lv y))) : a < b := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨x', y', hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lwn ha] at hx
  rw [ev_lwn hb] at hy
  cases hx; cases hy
  have := (cmp_less_nat'' (x := BitVec.ofNat 64 a) (y := BitVec.ofNat 64 b)
    (by rw [toNat_ofNat_lt (by omega)]; exact ha2) (by rw [toNat_ofNat_lt (by omega)]; exact hb2)).mp hxy
  rwa [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)] at this

theorem nlt_of_exit {s : State σ} {x y : MlS} {a b : Nat} (ha : LW s.locals x a) (hb : LW s.locals y b)
    (ha2 : a < 2 ^ 63) (hb2 : b < 2 ^ 63)
    (h : ev s (.cmp .less (lv x) (lv y)) = some (.val (.word 0))) : ¬ a < b := by
  obtain ⟨x', y', hx, hy, hxy⟩ := cmp_false h
  rw [ev_lwn ha] at hx
  rw [ev_lwn hb] at hy
  cases hx; cases hy
  intro hlt
  have := (cmp_less_nat'' (x := BitVec.ofNat 64 a) (y := BitVec.ofNat 64 b)
    (by rw [toNat_ofNat_lt (by omega)]; exact ha2) (by rw [toNat_ofNat_lt (by omega)]; exact hb2)).mpr
    (by rw [toNat_ofNat_lt (by omega), toNat_ofNat_lt (by omega)]; exact hlt)
  rw [hxy] at this
  exact absurd this (by decide)

theorem ofNat_add_ofNat' (a b : Nat) : BitVec.ofNat 64 a + BitVec.ofNat 64 b = BitVec.ofNat 64 (a + b) :=
  (BitVec.ofNat_add a b).symm

/-- `var x = e; body` where the continuation may use the whole precondition. -/
theorem hoareG_decZ' {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
    {Rf : BitVec 64 → Prop} {s0 : State σ} {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (LPre Rf s0 (fun m' => m' = s.locals.update (x, v))) body
        (LZ Rf s0 (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (LPre Rf s0 L) (.dec x sh e body) (LZ Rf s0 Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨rfl, hp.2⟩
  · intro r t _ _ hq
    exact ⟨⟨hq.1.1, fun hr => hout _ _ hp.1 (hq.1.2.1 hr), hq.1.2.2⟩, hq.2⟩

theorem hoareG_assignZ' {n : MlS} {e : ExpHOL 64} {Rf : BitVec 64 → Prop} {s0 : State σ}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → LPre Rf s0 L s → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (LPre Rf s0 L) (.assign .local n e) (LZ Rf s0 L' Ret) :=
  hoareG_assign fun s hs hp v hv _ =>
    ⟨⟨hp.2, fun _ => h s hs hp v hv, fun _ h => nomatch h⟩, nb_none⟩

theorem hoareG_prop {Pp : Prop} {P : State σ → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : Pp → HoareG σ X P c Q) :
    HoareG σ X (fun s => Pp ∧ P s) c Q :=
  fun s hs ⟨hp, h'⟩ => h hp s hs h'

end InitECandidate.Solver.MemSafe.Rcpt
