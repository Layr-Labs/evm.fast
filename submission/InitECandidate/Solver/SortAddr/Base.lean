import InitECandidate.Solver.SortAddr.Defs
import InitECandidate.Solver.Spec.Inv.CostI

/-!
# Locals, offsets and the copy step of `sort_elems`

`Dom X` packages the bounded-domain fact of the context: every mapped address lies in
`[lo, lo + L)` (cyclically). A hit address `a` has offset `off a < Lh = L + alignSlack 64`.
A copy destination `dst + k * esz` with `1 ≤ esz ≤ 4096` moves by exactly `esz` when `k`
increases, as long as the previous destination was hit.
-/

set_option autoImplicit false
set_option maxHeartbeats 4000000
set_option maxRecDepth 100000

namespace InitECandidate.Solver.SortAddr
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev Lcl := HolFiniteMapExact MlS (ValueHOL 64)

/-- Local `x` holds the word `v`. -/
abbrev Lk (x : MlS) (v : BitVec 64) (m : Lcl) : Prop := m.lookup x = some (.val (.word v))

/-- `m` agrees with `m0` on the names `ns`. -/
def Agree (ns : List MlS) (m0 m : Lcl) : Prop := ∀ x ∈ ns, m.lookup x = m0.lookup x

theorem agree_refl (ns : List MlS) (m : Lcl) : Agree ns m m := fun _ _ => rfl

theorem agree_upd {ns : List MlS} {m0 m : Lcl} {x : MlS} {v : ValueHOL 64} (hx : x ∉ ns)
    (h : Agree ns m0 m) : Agree ns m0 (m.update (x, v)) := by
  intro y hy
  rw [lookup_update_ne _ _ (fun e : x = y => hx (e ▸ hy))]
  exact h y hy

theorem agree_res {ns : List MlS} {m0 m : Lcl} {x : MlS} {o : Option (ValueHOL 64)} (hx : x ∉ ns)
    (h : Agree ns m0 m) : Agree ns m0 (m.resVarEq (x, o)) := by
  intro y hy
  rw [lookup_resVarEq_ne _ _ (fun e : x = y => hx (e ▸ hy))]
  exact h y hy

theorem agree_lk {ns : List MlS} {m0 m : Lcl} {x : MlS} {v : BitVec 64} (hx : x ∈ ns)
    (h : Agree ns m0 m) (h0 : Lk x v m0) : Lk x v m := by
  unfold Lk; rw [h x hx]; exact h0

theorem agree_mono {ns ns' : List MlS} {m0 m : Lcl} (hs : ∀ x ∈ ns', x ∈ ns)
    (h : Agree ns m0 m) : Agree ns' m0 m := fun x hx => h x (hs x hx)

theorem lk_upd {x y : MlS} {v : BitVec 64} {w : ValueHOL 64} {m : Lcl} (h : x ≠ y)
    (hy : Lk y v m) : Lk y v (m.update (x, w)) := by
  unfold Lk at *; rw [lookup_update_ne _ _ h]; exact hy

theorem lk_res {x y : MlS} {v : BitVec 64} {o : Option (ValueHOL 64)} {m : Lcl} (h : x ≠ y)
    (hy : Lk y v m) : Lk y v (m.resVarEq (x, o)) := by
  unfold Lk at *; rw [lookup_resVarEq_ne _ _ h]; exact hy

theorem lk_new (m : Lcl) (x : MlS) (v : BitVec 64) : Lk x v (m.update (x, .val (.word v))) :=
  lookup_update_self _ _ _

theorem lk_inj {x : MlS} {v w : BitVec 64} {m : Lcl} (h1 : Lk x v m) (h2 : Lk x w m) : v = w := by
  unfold Lk at h1 h2
  rw [h1] at h2
  have := Option.some.inj h2
  simpa using this

theorem ev_lk {σ : Type} {s : PanSemStateFiniteExact 64 σ} {x : MlS} {v : BitVec 64}
    (h : Lk x v s.locals) : ev s (lv x) = some (.val (.word v)) := h

/-! ## Signed comparisons on small words -/

theorem slt_small {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    wordCmpHOL .less x y = decide (x.toNat < y.toNat) := by
  simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  have : (2 : Nat) ^ (64 - 1) = 2 ^ 63 := rfl
  rw [this, if_pos hx, if_pos hy]

theorem slt_true_left {x y : BitVec 64} (hx : x.toNat < 2 ^ 63)
    (h : wordCmpHOL .less x y = true) : y.toNat < 2 ^ 63 ∧ x.toNat < y.toNat := by
  simp only [wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess] at h
  have : (2 : Nat) ^ (64 - 1) = 2 ^ 63 := rfl
  rw [this, if_pos hx] at h
  by_cases hy : y.toNat < 2 ^ 63
  · rw [if_pos hy] at h
    exact ⟨hy, by simpa using h⟩
  · rw [if_neg hy] at h
    exact absurd h (by decide)

/-! ## The domain -/

structure Dom (X : Ctx 64) where
  lo : BitVec 64
  L : Nat
  hin : DomIn X.memaddrs lo L
  hL : L + alignSlack 64 + 4096 ≤ 2 ^ 64
  hL35 : L ≤ 2 ^ 35

variable {X : Ctx 64}

def Dom.Lh (d : Dom X) : Nat := d.L + alignSlack 64

def Dom.off (d : Dom X) (a : BitVec 64) : Nat := (a - d.lo).toNat

theorem Dom.hit (d : Dom X) {a : BitVec 64} (h : Hit X.memaddrs a) : d.off a < d.Lh :=
  hit_offset d.hin (by have := d.hL; omega) h

theorem Dom.off_add (d : Dom X) {a E : BitVec 64} (ha : d.off a < d.Lh) (hE : E.toNat ≤ 4096) :
    d.off (a + E) = d.off a + E.toNat := by
  have hL := d.hL
  unfold Dom.off at *
  unfold Dom.Lh at ha
  rw [add_sub_comm', BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]

theorem addr_succ (D K E : BitVec 64) : D + (K + 1) * E = (D + K * E) + E := by
  rw [BitVec.add_mul, BitVec.add_assoc]
  congr 2
  simp

theorem toNat_succ {K : BitVec 64} (h : K.toNat < 2 ^ 63) : (K + 1).toNat = K.toNat + 1 := by
  rw [BitVec.toNat_add]
  have : (1 : BitVec 64).toNat = 1 := rfl
  rw [this]
  omega

/-- The numeric part of the merge-loop invariant. `O0` is the offset of `dst`. -/
def NumOK (d : Dom X) (O0 : Nat) (D E M R I J K : BitVec 64) : Prop :=
  I.toNat ≤ M.toNat ∧ M.toNat ≤ J.toNat ∧ J.toNat ≤ R.toNat ∧
    K.toNat + M.toNat = I.toNat + J.toNat ∧
    d.off (D + K * E) = O0 + K.toNat * E.toNat ∧
    (K.toNat = 0 ∨ O0 + K.toNat * E.toNat < d.Lh + E.toNat)

theorem numOK_K {d : Dom X} {O0 : Nat} {D E M R I J K : BitVec 64}
    (h : NumOK d O0 D E M R I J K) (hR : R.toNat < 2 ^ 63) : K.toNat < 2 ^ 63 := by
  obtain ⟨h1, h2, h3, h4, -⟩ := h; omega

/-- One element copied at `dst + k * esz` (hit), then `i` (or `j`) and `k` advance. -/
theorem numOK_step {d : Dom X} {O0 : Nat} {D E M R I J K : BitVec 64}
    (h : NumOK d O0 D E M R I J K) (hR : R.toNat < 2 ^ 63) (hE : E.toNat ≤ 4096)
    (hhit : d.off (D + K * E) < d.Lh) :
    (I.toNat < M.toNat → NumOK d O0 D E M R (I + 1) J (K + 1)) ∧
    (J.toNat < R.toNat → NumOK d O0 D E M R I (J + 1) (K + 1)) := by
  obtain ⟨h1, h2, h3, h4, h5, h6⟩ := h
  have hK : K.toNat < 2 ^ 63 := by omega
  have hK1 := toNat_succ hK
  have hoff : d.off (D + (K + 1) * E) = O0 + (K + 1).toNat * E.toNat := by
    rw [addr_succ, d.off_add hhit hE, h5, hK1, Nat.add_mul, Nat.one_mul, Nat.add_assoc]
  have hlt : O0 + (K + 1).toNat * E.toNat < d.Lh + E.toNat := by
    rw [hK1, Nat.add_mul, Nat.one_mul]; rw [h5] at hhit; omega
  constructor
  · intro hI
    have hI1 := toNat_succ (show I.toNat < 2 ^ 63 by omega)
    exact ⟨by omega, h2, h3, by omega, hoff, Or.inr hlt⟩
  · intro hJ
    have hJ1 := toNat_succ (show J.toNat < 2 ^ 63 by omega)
    exact ⟨h1, by omega, by omega, by omega, hoff, Or.inr hlt⟩

end InitECandidate.Solver.SortAddr
