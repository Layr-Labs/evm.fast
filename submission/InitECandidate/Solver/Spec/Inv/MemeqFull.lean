import InitECandidate.Solver.Spec.Inv.Memcpy
import InitECandidate.Solver.Spec.CodeMemeq

/-!
# `memeq` returns `0` only on a differing byte

`funSpec_memeq_zero`: if `memeq(A, B, N)` (with `N < 2 ^ 62`) returns `0`, some byte
`j < N` differs: `kbyte m (A + j) ≠ kbyte m (B + j)` in the entry memory (`Dif`).

Every `return 0` of `memeq` follows a comparison `x != y` of two loads at `A + o` and `B + o`:
a byte load with `o < N`, or (on the aligned path) a word load with `o % 8 = 0`, `o + 8 ≤ N`.
A differing word has a differing byte (`word_of_bytes`), so each such return has a witness
(`dif_w`, `dif_b`). The loop invariants only track the counter (`i ≤ N`, `i % 8 = 0` on the
aligned path); the memory never changes.
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

/-- `x` (`k = 0`) or `x + k`. -/
def fE (x : String) : Nat → ExpHOL 64
  | 0 => lv (nm x)
  | k + 1 => .op .add [lv (nm x), cw (k + 1)]

def cW (e : String → Nat → ExpHOL 64) (k : Nat) : ProgHOL 64 :=
  Spec.neRet (.load .one (e "a" k)) (.load .one (e "b" k))
def cB (e : String → Nat → ExpHOL 64) (k : Nat) : ProgHOL 64 :=
  Spec.neRet (.loadByte (e "a" k)) (.loadByte (e "b" k))

def ret1 : ProgHOL 64 := .return (cw 1)

def mqF20 : ProgHOL 64 :=
  .seq (cW fE 0) (.seq (cW fE 8) (.seq (cB fE 16) (.seq (cB fE 17) (.seq (cB fE 18)
    (.seq (cB fE 19) ret1)))))
def mqF32 : ProgHOL 64 := .seq (cW fE 0) (.seq (cW fE 8) (.seq (cW fE 16) (.seq (cW fE 24) ret1)))
def mqF52 : ProgHOL 64 :=
  .seq (cW fE 0) (.seq (cW fE 8) (.seq (cW fE 16) (.seq (cW fE 24) (.seq (cW fE 32)
    (.seq (cW fE 40) (.seq (cB fE 48) (.seq (cB fE 49) (.seq (cB fE 50) (.seq (cB fE 51) ret1)))))))))
def mqW32 : ProgHOL 64 := .seq (cW oE 0) (.seq (cW oE 8) (.seq (cW oE 16) (.seq (cW oE 24) (incI 32))))
def mqW8 : ProgHOL 64 := .seq (cW oE 0) (incI 8)
def mqB8 : ProgHOL 64 :=
  .seq (cB oE 0) (.seq (cB oE 1) (.seq (cB oE 2) (.seq (cB oE 3) (.seq (cB oE 4) (.seq (cB oE 5)
    (.seq (cB oE 6) (.seq (cB oE 7) (incI 8))))))))
def mqB1 : ProgHOL 64 := .seq (cB oE 0) (incI 1)

def nEq (k : Nat) : ExpHOL 64 := .cmp .equal (lv (nm "n")) (cw k)

def mqAl : ProgHOL 64 :=
  .seq (.ite (nEq 20) mqF20 .skip) (.seq (.ite (nEq 32) mqF32 .skip) (.seq (.ite (nEq 52) mqF52 .skip)
    (.seq (.while (geN 32) mqW32) (.while (geN 8) mqW8))))

def mqTail : ProgHOL 64 :=
  .seq (.while (geN 8) mqB8) (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) mqB1) ret1)

def mqBody : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq (.ite (alE "a" "b") mqAl .skip) mqTail)

theorem mqBody_eq : Spec.memeqBody = mqBody := rfl

/-! ## Differing loads give a differing byte -/

/-- Some byte below `N` differs. -/
def Dif (m : Mem) (d : BitVec 64 → Prop) (be : Bool) (A B N : BitVec 64) : Prop :=
  ∃ j : Nat, j < N.toNat ∧ kbyte m d be (A + BitVec.ofNat 64 j) ≠ kbyte m d be (B + BitVec.ofNat 64 j)

section dif
variable {σ : Type} {u : PanSemStateFiniteExact 64 σ} {A B N : BitVec 64}

theorem add_ofNat_add (B : BitVec 64) (o j : Nat) :
    B + BitVec.ofNat 64 o + BitVec.ofNat 64 j = B + BitVec.ofNat 64 (o + j) := by
  apply BitVec.eq_of_toNat_eq; simp only [BitVec.toNat_add, BitVec.toNat_ofNat]; omega

theorem aligned_add {B : BitVec 64} (hB : B.toNat % 8 = 0) {o : Nat} (ho : o % 8 = 0) :
    (B + BitVec.ofNat 64 o).toNat % 8 = 0 := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat]
  have h1 : (2 : Nat) ^ 64 % 8 = 0 := by decide
  omega

/-- Two differing word loads at aligned `A + o`, `B + o`. -/
theorem dif_w {ea eb : ExpHOL 64} {o : Nat} (hA8 : A.toNat % 8 = 0) (hB8 : B.toNat % 8 = 0)
    (ho8 : o % 8 = 0) (hoN : o + 8 ≤ N.toNat)
    (ha : ev u ea = some (.val (.word (A + BitVec.ofNat 64 o))))
    (hb : ev u eb = some (.val (.word (B + BitVec.ofNat 64 o))))
    {wx wy : BitVec 64} (hx : ev u (.load .one ea) = some (.val (.word wx)))
    (hy : ev u (.load .one eb) = some (.val (.word wy))) (hne : wx ≠ wy) :
    Dif u.memory u.memaddrs u.be A B N := by
  obtain ⟨a', ha', hda, hxv⟩ := ev_load_one hx
  rw [ha] at ha'; cases ha'
  obtain ⟨b', hb', hdb, hyv⟩ := ev_load_one hy
  rw [hb] at hb'; cases hb'
  rw [mem_word u.memory] at hxv hyv
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hyv
  have hAa := aligned_add hA8 ho8
  have hBa := aligned_add hB8 ho8
  by_contra hnd
  apply hne
  rw [hxv, hyv]
  apply word_of_bytes (be := u.be) hAa hBa
  intro j hj
  by_contra hj'
  apply hnd
  refine ⟨o + j, by omega, ?_⟩
  rw [← add_ofNat_add, ← add_ofNat_add, kbyte_eq, kbyte_eq, align_of_aligned hAa hj,
    align_of_aligned hBa hj, if_pos hda, if_pos hdb]
  intro h; exact hj' (Option.some.inj h)

/-- Two differing byte loads at `A + o`, `B + o`. -/
theorem dif_b {ea eb : ExpHOL 64} {o : Nat} (hoN : o < N.toNat)
    (ha : ev u ea = some (.val (.word (A + BitVec.ofNat 64 o))))
    (hb : ev u eb = some (.val (.word (B + BitVec.ofNat 64 o))))
    {wx wy : BitVec 64} (hx : ev u (.loadByte ea) = some (.val (.word wx)))
    (hy : ev u (.loadByte eb) = some (.val (.word wy))) (hne : wx ≠ wy) :
    Dif u.memory u.memaddrs u.be A B N := by
  obtain ⟨a', ha', ba, hba, hxv⟩ := ev_loadByte_inv hx
  rw [ha] at ha'; cases ha'
  obtain ⟨b', hb', bb, hbb, hyv⟩ := ev_loadByte_inv hy
  rw [hb] at hb'; cases hb'
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxv hyv
  refine ⟨o, hoN, ?_⟩
  rw [hba, hbb]
  intro h
  apply hne
  rw [hxv, hyv, Option.some.inj h]

end dif

/-! ## The Hoare proof -/

section hoare
variable {σ : Type} {X : Ctx 64} (s0 : PanSemStateFiniteExact 64 σ) (A B N : BitVec 64)

/-- The state of `memeq` with counter `I`. -/
def MS (I : BitVec 64) (u : PanSemStateFiniteExact 64 σ) : Prop :=
  DLk u "a" A ∧ DLk u "b" B ∧ DLk u "n" N ∧ DLk u "i" I ∧ u.memory = s0.memory ∧
    u.memaddrs = s0.memaddrs ∧ u.be = s0.be

/-- Every abnormal result is a return, and a returned `0` has a differing byte. -/
abbrev MQ (r : Option (PanSemResultExact 64)) (_u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∀ r', r = some r' → ∃ v, r' = .returned v ∧ (v = .val (.word 0) → Dif s0.memory s0.memaddrs s0.be A B N)

/-- `MQ`, and `J` on normal completion. -/
abbrev LQ (J : PanSemStateFiniteExact 64 σ → Prop) (r : Option (PanSemResultExact 64))
    (u : PanSemStateFiniteExact 64 σ) : Prop := (r = none → J u) ∧ MQ s0 A B N r u

/-- Loop heads. -/
def MW (u : PanSemStateFiniteExact 64 σ) : Prop :=
  ∃ I : BitVec 64, MS s0 A B N I u ∧ I.toNat ≤ N.toNat ∧ I.toNat % 8 = 0
def MB (u : PanSemStateFiniteExact 64 σ) : Prop := ∃ I : BitVec 64, MS s0 A B N I u ∧ I.toNat ≤ N.toNat

variable {s0 A B N}

theorem lq_retz {J : PanSemStateFiniteExact 64 σ → Prop} {t : PanSemStateFiniteExact 64 σ}
    (h : Dif s0.memory s0.memaddrs s0.be A B N) :
    LQ s0 A B N J (some (.returned (.val (.word 0)))) t :=
  ⟨fun h => (by cases h), fun r' hr => ⟨_, (Option.some.inj hr).symm, fun _ => h⟩⟩

theorem ms_dif {I : BitVec 64} {u : PanSemStateFiniteExact 64 σ} (h : MS s0 A B N I u)
    (hd : Dif u.memory u.memaddrs u.be A B N) : Dif s0.memory s0.memaddrs s0.be A B N := by
  obtain ⟨-, -, -, -, hm, hd', hbe⟩ := h
  rw [hm, hd', hbe] at hd; exact hd

/-- `if x != y { return 0 }; k` -/
theorem hne {P : PanSemStateFiniteExact 64 σ → Prop} {J : PanSemStateFiniteExact 64 σ → Prop}
    {x y : ExpHOL 64} {k : ProgHOL 64}
    (hd : ∀ u, P u → ∀ wx wy, ev u x = some (.val (.word wx)) → ev u y = some (.val (.word wy)) →
      wx ≠ wy → Dif s0.memory s0.memaddrs s0.be A B N)
    (hk : Hoare σ X P k (LQ s0 A B N J)) : Hoare σ X P (.seq (Spec.neRet x y) k) (LQ s0 A B N J) := by
  refine hoare_seq (R := fun r u => r = none ∧ P u ∨ (r ≠ none ∧ LQ s0 A B N J r u)) ?_ ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun u _ h => Or.inl ⟨rfl, h.1⟩)
    refine hoare_return fun u _ ⟨hp, w, hw, hw0⟩ v hv => Or.inr ⟨by simp, ?_⟩
    rw [ev_cw] at hv
    cases hv
    obtain ⟨wx, wy, hx, hy, hxy⟩ := cmp_true hw hw0
    simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Bool.not_eq_true', beq_eq_false_iff_ne]
      at hxy
    exact lq_retz (hd u hp wx wy hx hy hxy)
  · intro r t _ hr _ h
    rcases h with h | h
    · exact absurd h.1 hr
    · exact h.2
  · exact hoare_pre hk fun u _ h => by
      rcases h with h | h
      · exact h.2
      · exact absurd rfl h.1

theorem hret1 {P J : PanSemStateFiniteExact 64 σ → Prop} : Hoare σ X P ret1 (LQ s0 A B N J) := by
  refine hoare_return fun u _ _ v hv => ?_
  rw [ev_cw] at hv
  cases hv
  refine ⟨fun h => (by cases h), fun r' hr => ⟨_, (Option.some.inj hr).symm, fun h0 => ?_⟩⟩
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at h0
  exact absurd h0 (by decide)

theorem hseqL {P R J : PanSemStateFiniteExact 64 σ → Prop} {a b : ProgHOL 64}
    (ha : Hoare σ X P a (LQ s0 A B N R)) (hb : Hoare σ X R b (LQ s0 A B N J)) :
    Hoare σ X P (.seq a b) (LQ s0 A B N J) :=
  hoare_seq ha (fun _ _ _ hr _ h => ⟨fun h' => absurd h' hr, h.2⟩) (hoare_pre hb fun _ _ h => h.1 rfl)

theorem ev_fE {u : PanSemStateFiniteExact 64 σ} {x : String} {Bx : BitVec 64} (hB : DLk u x Bx)
    (k : Nat) : ev u (fE x k) = some (.val (.word (Bx + BitVec.ofNat 64 k))) := by
  cases k with
  | zero => rw [fE, ev_lv_w hB]; simp
  | succ k => rw [fE, ev_add2 (ev_lv_w hB) (ev_cw u (k + 1))]

/-- A word comparison of a fast path. -/
theorem hcWf {P J : PanSemStateFiniteExact 64 σ → Prop} {k : Nat} {c : ProgHOL 64}
    (hP : ∀ u, P u → ∃ I, MS s0 A B N I u) (hA8 : A.toNat % 8 = 0) (hB8 : B.toNat % 8 = 0)
    (hk8 : k % 8 = 0) (hkN : k + 8 ≤ N.toNat) (hc : Hoare σ X P c (LQ s0 A B N J)) :
    Hoare σ X P (.seq (cW fE k) c) (LQ s0 A B N J) := by
  refine hne (fun u hu wx wy hx hy hxy => ?_) hc
  obtain ⟨I, hms⟩ := hP u hu
  exact ms_dif hms (dif_w hA8 hB8 hk8 hkN (ev_fE hms.1 k) (ev_fE hms.2.1 k) hx hy hxy)

theorem hcBf {P J : PanSemStateFiniteExact 64 σ → Prop} {k : Nat} {c : ProgHOL 64}
    (hP : ∀ u, P u → ∃ I, MS s0 A B N I u) (hkN : k < N.toNat) (hc : Hoare σ X P c (LQ s0 A B N J)) :
    Hoare σ X P (.seq (cB fE k) c) (LQ s0 A B N J) := by
  refine hne (fun u hu wx wy hx hy hxy => ?_) hc
  obtain ⟨I, hms⟩ := hP u hu
  exact ms_dif hms (dif_b hkN (ev_fE hms.1 k) (ev_fE hms.2.1 k) hx hy hxy)

/-- A word comparison of a loop body at `i + k`. -/
theorem hcWo {I : BitVec 64} {J : PanSemStateFiniteExact 64 σ → Prop} {k : Nat} {c : ProgHOL 64}
    (hA8 : A.toNat % 8 = 0) (hB8 : B.toNat % 8 = 0) (hk8 : (I.toNat + k) % 8 = 0)
    (hkN : I.toNat + k + 8 ≤ N.toNat) (hc : Hoare σ X (MS s0 A B N I) c (LQ s0 A B N J)) :
    Hoare σ X (MS s0 A B N I) (.seq (cW oE k) c) (LQ s0 A B N J) := by
  refine hne (fun u hu wx wy hx hy hxy => ?_) hc
  exact ms_dif hu (dif_w hA8 hB8 hk8 hkN (ev_oE hu.1 hu.2.2.2.1 k) (ev_oE hu.2.1 hu.2.2.2.1 k)
    hx hy hxy)

theorem hcBo {I : BitVec 64} {J : PanSemStateFiniteExact 64 σ → Prop} {k : Nat} {c : ProgHOL 64}
    (hkN : I.toNat + k < N.toNat) (hc : Hoare σ X (MS s0 A B N I) c (LQ s0 A B N J)) :
    Hoare σ X (MS s0 A B N I) (.seq (cB oE k) c) (LQ s0 A B N J) := by
  refine hne (fun u hu wx wy hx hy hxy => ?_) hc
  exact ms_dif hu (dif_b hkN (ev_oE hu.1 hu.2.2.2.1 k) (ev_oE hu.2.1 hu.2.2.2.1 k) hx hy hxy)

/-- `i = i + k` ends a loop body. -/
theorem hincM {I : BitVec 64} {J : PanSemStateFiniteExact 64 σ → Prop} (k : Nat)
    (hk : I.toNat + k < 2 ^ 64)
    (hJ : ∀ u, MS s0 A B N (I + BitVec.ofNat 64 k) u → (I + BitVec.ofNat 64 k).toNat = I.toNat + k → J u) :
    Hoare σ X (MS s0 A B N I) (incI k) (LQ s0 A B N J) := by
  refine hoare_assign fun u _ ⟨hA, hB, hN, hI, hm, hd, hbe⟩ v hv _ => ?_
  rw [ev_add2 (ev_lv_w hI) (ev_cw u k)] at hv
  cases hv
  refine ⟨fun _ => hJ _ ⟨by lks, by lks, by lks, ?_, hm, hd, hbe⟩ ?_, fun r' h => (by cases h)⟩
  · unfold DLk; rw [lk_set_self]
  · rw [ofs_eq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hk

/-- A loop whose body keeps `J` or returns. -/
theorem hwhileL {c : ExpHOL 64} {body : ProgHOL 64} {J J' : PanSemStateFiniteExact 64 σ → Prop}
    (hclk : ∀ s, J s → J (decClockHOLFinite s))
    (hb : Hoare σ X (fun s => J s ∧ CondTrue s c) body (LQ s0 A B N J))
    (hexit : ∀ s, InCtx s X → J s → ev s c = some (.val (.word 0)) → J' s) :
    Hoare σ X J (.while c body) (LQ s0 A B N J') := by
  refine hoare_while hclk (hoare_post hb fun r t _ _ h => ⟨h.1, fun hr => ?_, fun hr => ?_,
    fun v hr => ⟨fun h' => (by rw [hr] at h'; cases h'), h.2⟩⟩)
    (fun s hs hJ h0 => ⟨fun _ => hexit s hs hJ h0, fun r' h => by cases h⟩)
  · obtain ⟨v, hv, -⟩ := h.2 _ hr; cases hv
  · obtain ⟨v, hv, -⟩ := h.2 _ hr; cases hv

variable (hn : N.toNat < 2 ^ 62)
include hn

theorem mqLoopW32 (hA8 : A.toNat % 8 = 0) (hB8 : B.toNat % 8 = 0) :
    Hoare σ X (MW s0 A B N) (.while (geN 32) mqW32) (LQ s0 A B N (MW s0 A B N)) := by
  refine hwhileL (fun _ h => h) ?_ (fun u _ h _ => h)
  intro u hu ⟨⟨I, hms, hle, hI8⟩, hc⟩ ht
  have h32 := geN_true hms.2.2.1 hms.2.2.2.1 hc (by omega)
  refine (hcWo hA8 hB8 (by omega) (by omega) (hcWo hA8 hB8 (by omega) (by omega)
    (hcWo hA8 hB8 (by omega) (by omega) (hcWo hA8 hB8 (by omega) (by omega)
      (hincM 32 (by omega) fun t ht e => ⟨_, ht, by omega, by omega⟩))))) u hu hms ht

theorem mqLoopW8 (hA8 : A.toNat % 8 = 0) (hB8 : B.toNat % 8 = 0) :
    Hoare σ X (MW s0 A B N) (.while (geN 8) mqW8) (LQ s0 A B N (MB s0 A B N)) := by
  refine hwhileL (fun _ h => h) ?_ (fun u _ ⟨I, hms, hle, _⟩ _ => ⟨I, hms, hle⟩)
  intro u hu ⟨⟨I, hms, hle, hI8⟩, hc⟩ ht
  have h8 := geN_true hms.2.2.1 hms.2.2.2.1 hc (by omega)
  refine (hcWo hA8 hB8 (by omega) (by omega)
    (hincM 8 (by omega) fun t ht e => ⟨_, ht, by omega, by omega⟩)) u hu hms ht

theorem mqLoopB8 : Hoare σ X (MB s0 A B N) (.while (geN 8) mqB8) (LQ s0 A B N (MB s0 A B N)) := by
  refine hwhileL (fun _ h => h) ?_ (fun u _ h _ => h)
  intro u hu ⟨⟨I, hms, hle⟩, hc⟩ ht
  have h8 := geN_true hms.2.2.1 hms.2.2.2.1 hc (by omega)
  refine (hcBo (by omega) (hcBo (by omega) (hcBo (by omega) (hcBo (by omega) (hcBo (by omega)
    (hcBo (by omega) (hcBo (by omega) (hcBo (by omega)
      (hincM 8 (by omega) fun t ht e => ⟨_, ht, by omega⟩))))))))) u hu hms ht

theorem mqLoopB1 :
    Hoare σ X (MB s0 A B N) (.while (.cmp .lower (lv (nm "i")) (lv (nm "n"))) mqB1)
      (LQ s0 A B N (MB s0 A B N)) := by
  refine hwhileL (fun _ h => h) ?_ (fun u _ h _ => h)
  intro u hu ⟨⟨I, hms, hle⟩, hc⟩ ht
  have h1 : I.toNat < N.toNat := by
    obtain ⟨w, hw, hw0⟩ := hc
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lv_w hms.2.2.2.1] at hx
    rw [ev_lv_w hms.2.2.1] at hy
    cases hx; cases hy
    exact lower_true hxy
  refine (hcBo (by omega) (hincM 1 (by omega) fun t ht e => ⟨_, ht, by omega⟩)) u hu hms ht

omit hn in
theorem nEq_true {u : PanSemStateFiniteExact 64 σ} {k : Nat} (hN : DLk u "n" N) {w : BitVec 64}
    (hw : ev u (nEq k) = some (.val (.word w))) (hw0 : w ≠ 0) : N = BitVec.ofNat 64 k := by
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [ev_lv_w hN] at hx
  rw [ev_cw] at hy
  cases hx; cases hy
  simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hxy

omit hn in
/-- A fast path for `n = k`. -/
theorem hfast {u1 : PanSemStateFiniteExact 64 σ} {k : Nat} {F : ProgHOL 64}
    (hms : MS s0 A B N 0 u1)
    (hF : N = BitVec.ofNat 64 k → Hoare σ X (fun t => t = u1) F (LQ s0 A B N (fun t => t = u1))) :
    Hoare σ X (fun t => t = u1) (.ite (nEq k) F .skip) (LQ s0 A B N (fun t => t = u1)) := by
  refine hoare_ite ?_ (hoare_skip fun t _ h => ⟨fun _ => h.1, fun r' h => by cases h⟩)
  intro t ht ⟨e, w, hw, hw0⟩ htr
  subst e
  exact hF (nEq_true hms.2.2.1 hw hw0) _ ht rfl htr

theorem mqAl_hoare {u1 : PanSemStateFiniteExact 64 σ} (hms : MS s0 A B N 0 u1) (hA8 : A.toNat % 8 = 0)
    (hB8 : B.toNat % 8 = 0) :
    Hoare σ X (fun t => t = u1) mqAl (LQ s0 A B N (MB s0 A B N)) := by
  have hP : ∀ u, u = u1 → ∃ I, MS s0 A B N I u := fun u h => ⟨0, h ▸ hms⟩
  refine hseqL (hfast hms fun e => ?_) (hseqL (hfast hms fun e => ?_) (hseqL (hfast hms fun e => ?_)
    (hoare_pre (hseqL (mqLoopW32 hn hA8 hB8) (mqLoopW8 hn hA8 hB8))
      fun t _ h => ⟨0, h ▸ hms, by simp, by simp⟩)))
  · have h20 : N.toNat = 20 := by rw [e]; rfl
    exact hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega)
      (hcBf hP (by omega) (hcBf hP (by omega) (hcBf hP (by omega) (hcBf hP (by omega) hret1)))))
  · have h32 : N.toNat = 32 := by rw [e]; rfl
    exact hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega)
      (hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega) hret1)))
  · have h52 : N.toNat = 52 := by rw [e]; rfl
    exact hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega)
      (hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega)
        (hcWf hP hA8 hB8 (by decide) (by omega) (hcWf hP hA8 hB8 (by decide) (by omega)
          (hcBf hP (by omega) (hcBf hP (by omega) (hcBf hP (by omega) (hcBf hP (by omega)
            hret1)))))))))

theorem mqBody_hoare (hA : DLk s0 "a" A) (hB : DLk s0 "b" B) (hN : DLk s0 "n" N) :
    Hoare σ X (fun t => t = s0) mqBody (MQ s0 A B N) := by
  refine hoare_dec fun u _ hu v hv _ => ?_
  have hu' : u = s0 := hu
  subst hu'
  rw [ev_cw] at hv
  cases hv
  have hms : MS u A B N 0 (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) u) :=
    ⟨by lks, by lks, by lks, by unfold DLk; rw [lk_set_self]; rfl, rfl, rfl, rfl⟩
  refine hoare_post (Q := LQ u A B N (fun _ => True)) ?_ fun r t _ _ h => h.2
  refine hseqL (R := MB u A B N) ?_ ?_
  · refine hoare_ite ?_ (hoare_skip fun t _ ⟨ht0, _⟩ => by
      subst ht0; exact ⟨fun _ => ⟨0, hms, by simp⟩, fun r' h => by cases h⟩)
    intro t ht ⟨ht0, w, hw, hw0⟩ htr
    subst ht0
    obtain ⟨hA8, hB8⟩ := alE_true hms.1 hms.2.1 hw hw0
    exact mqAl_hoare hn hms hA8 hB8 _ ht rfl htr
  · exact hseqL (mqLoopB8 hn) (hseqL (mqLoopB1 hn) hret1)

end hoare

/-! ## The specification -/

section spec
variable {σ : Type} {X : Ctx 64}

/-- **`memeq` returns `0` only on a differing byte.** -/
theorem funSpec_memeq_zero (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "memeq") (fun vs s r _ => ∀ A B N : BitVec 64,
      vs = [.val (.word A), .val (.word B), .val (.word N)] → N.toNat < 2 ^ 62 →
      r = .returned (.val (.word 0)) → Dif s.memory s.memaddrs s.be A B N) := by
  intro vs body callee rs hl s hs hloc r hr A B N hvs hn hv
  rw [hC] at hl
  obtain ⟨rfl, -, A', B', C', hABC, -, -, -, hA, hB, hC'⟩ :=
    lookupCode_three_full Spec.code_memeq (by decide) (by decide) (by decide) hl
  rw [hvs] at hABC
  simp only [List.cons.injEq, and_true] at hABC
  obtain ⟨rfl, rfl, rfl⟩ := hABC
  have hA0 : DLk s "a" A := by unfold DLk; rw [hloc]; exact hA
  have hB0 : DLk s "b" B := by unfold DLk; rw [hloc]; exact hB
  have hN0 : DLk s "n" N := by unfold DLk; rw [hloc]; exact hC'
  rw [mqBody_eq] at hr
  have H := mqBody_hoare (X := X) hn hA0 hB0 hN0 s hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H
  obtain ⟨v, hv', hd⟩ := H _ rfl
  simp only [PanSemResultExact.returned.injEq] at hv'
  exact hd hv'.symm

end spec

end InitECandidate.Solver.Spec.Inv
