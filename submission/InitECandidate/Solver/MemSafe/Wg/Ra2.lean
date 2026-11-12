import InitECandidate.Solver.MemSafe.Wg.Ra1

/-!
# Wg: `requests_append`, the contract and the fact set
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The entry condition of `requests_append(tb, data, n)`: `n < 2^32`; `bo` a `tBO` object whose requests array is a `tBOS` object of
at least 128 bytes and whose request count is `k ≤ 4`. -/
def RaPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (_ : Ptrs) : Prop :=
  ∃ tb d n : BitVec 64, vs = [.val (.word tb), .val (.word d), .val (.word n)] ∧ n.toNat < 2 ^ 32 ∧
    ∃ bo : BitVec 64, gword s (nm "bo") = some bo ∧ (∃ o ∈ Γ, o.base = bo ∧ o.ty = tBO ∧ 88 ≤ o.size) ∧
      (∃ o ∈ Γ, o.base = rd s.memory (bo + BitVec.ofNat 64 56) ∧ o.ty = tBOS ∧ 128 ≤ o.size) ∧
      (rd s.memory (bo + BitVec.ofNat 64 64)).toNat ≤ 4

/-- The cells `requests_append` writes: the count and the two words of entry `k`. -/
def RaD (s : State σ) (a : BitVec 64) : Prop :=
  ∃ bo : BitVec 64, gword s (nm "bo") = some bo ∧
    (a = bo + BitVec.ofNat 64 64 ∨ ((rd s.memory (bo + BitVec.ofNat 64 64)).toNat ≤ 4 ∧
      ∃ j : Nat, j = (rd s.memory (bo + BitVec.ofNat 64 64)).toNat ∧
        (a = rd s.memory (bo + BitVec.ofNat 64 56) + BitVec.ofNat 64 (16 * j) ∨
         a = rd s.memory (bo + BitVec.ofNat 64 56) + BitVec.ofNat 64 (16 * j + 8))))

/-- After a return: the count is one more, the requests array is the same. -/
def RaQ (s t : State σ) : Prop :=
  ∃ bo : BitVec 64, gword s (nm "bo") = some bo ∧
    rd t.memory (bo + BitVec.ofNat 64 64) = rd s.memory (bo + BitVec.ofNat 64 64) + BitVec.ofNat 64 1 ∧
    rd t.memory (bo + BitVec.ofNat 64 56) = rd s.memory (bo + BitVec.ofNat 64 56)

theorem mul16_eq (k : BitVec 64) : k * BitVec.ofNat 64 16 = BitVec.ofNat 64 (16 * k.toNat) := by
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mul_comm]

theorem mul16_add8_eq (k : BitVec 64) :
    k * BitVec.ofNat 64 16 + BitVec.ofNat 64 8 = BitVec.ofNat 64 (16 * k.toNat + 8) := by
  rw [mul16_eq]
  apply BitVec.eq_of_toNat_eq
  simp [BitVec.toNat_add, BitVec.toNat_ofNat]

/-- The facts of the `requests_append` walk that stay through it. -/
def RaS0 (Γ0 : Gam) (s0 : State σ) (bo0 : BitVec 64) : FS := fun f =>
  FrS Γ0 s0 (RaD s0) f ∨ f = Fct.gobj (nm "bo") bo0 tBO ∨ f = Fct.obj bo0 tBO 88 ∨
  f = Fct.obj (rd s0.memory (bo0 + BitVec.ofNat 64 56)) tBOS 128 ∨
  f = Fct.cellv (bo0 + BitVec.ofNat 64 56) (rd s0.memory (bo0 + BitVec.ofNat 64 56)) ∨
  f = Fct.prop ((rd s0.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 4)

/-- With the count cell, until it is loaded. -/
def RaS (Γ0 : Gam) (s0 : State σ) (bo0 : BitVec 64) : FS := fun f =>
  RaS0 Γ0 s0 bo0 f ∨ f = Fct.cellv (bo0 + BitVec.ofNat 64 64) (rd s0.memory (bo0 + BitVec.ofNat 64 64))

theorem tBO_prot : ∀ k, (guestC.ty tBO).slot k = .prot := by
  intro k; show boTy.slot k = _; simp [boTy, TyD.slot]

theorem tBOS_prot : ∀ k, (guestC.ty tBOS).slot k = .prot := by
  intro k; show bosTy.slot k = _; simp [bosTy, TyD.slot]

theorem tBO_block : tBO ∈ blockTys := by decide
theorem tBOS_block : tBOS ∈ blockTys := by decide

/-- A `tBO` object and a `tBOS` object have different bases. -/
theorem bo_ne_rq {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {bo0 rq0 : BitVec 64}
    (hb : ∃ o ∈ Γ, o.base = bo0 ∧ o.ty = tBO ∧ 88 ≤ o.size) (hr : ∃ o ∈ Γ, o.base = rq0 ∧ o.ty = tBOS ∧ 128 ≤ o.size) :
    bo0 ≠ rq0 := by
  rintro rfl
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := hb
  obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := hr
  have hk1 : o1.HasSlot 0 := by unfold Obj.HasSlot; omega
  have hk2 : o2.HasSlot 0 := by unfold Obj.HasSlot; omega
  obtain ⟨rfl, -⟩ := cell_inj hord hL ho1 ho2 hk1 hk2 (by unfold Obj.cell; rw [hb1, hb2])
  rw [ht1] at ht2
  exact absurd ht2 (by decide)

theorem ra_ne {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {bo0 rq0 : BitVec 64}
    (hb : ∃ o ∈ Γ, o.base = bo0 ∧ o.ty = tBO ∧ 88 ≤ o.size) (hr : ∃ o ∈ Γ, o.base = rq0 ∧ o.ty = tBOS ∧ 128 ≤ o.size)
    {j : Nat} (hj : j ≤ 4) :
    bo0 + BitVec.ofNat 64 56 ≠ rq0 + BitVec.ofNat 64 (16 * j) ∧ bo0 + BitVec.ofNat 64 56 ≠ rq0 + BitVec.ofNat 64 (16 * j + 8) ∧
    bo0 + BitVec.ofNat 64 64 ≠ rq0 + BitVec.ofNat 64 (16 * j) ∧ bo0 + BitVec.ofNat 64 64 ≠ rq0 + BitVec.ofNat 64 (16 * j + 8) ∧
    rq0 + BitVec.ofNat 64 (16 * j) ≠ rq0 + BitVec.ofNat 64 (16 * j + 8) ∧ bo0 + BitVec.ofNat 64 56 ≠ bo0 + BitVec.ofNat 64 64 := by
  have hne := bo_ne_rq hord hL hb hr
  have hn1 : (88 : Nat) < 2 ^ 64 := by omega
  have hn2 : (128 : Nat) < 2 ^ 64 := by omega
  have c1 := fun (o1 o2 : Nat) (h1 : o1 % 8 = 0) (h2 : o2 % 8 = 0) (h3 : o1 + 8 ≤ 88) (h4 : o2 + 8 ≤ 128) =>
    cl_ne (n1 := 88) (n2 := 128) (off1 := o1) (off2 := o2) hord hL hb hr (Or.inl hne) h1 h2 h3 h4 hn1 hn2
  refine ⟨c1 56 (16 * j) (by omega) (by omega) (by omega) (by omega),
    c1 56 (16 * j + 8) (by omega) (by omega) (by omega) (by omega),
    c1 64 (16 * j) (by omega) (by omega) (by omega) (by omega),
    c1 64 (16 * j + 8) (by omega) (by omega) (by omega) (by omega), ?_, ?_⟩
  · exact cl_ne (n1 := 128) (n2 := 128) (off1 := 16 * j) (off2 := 16 * j + 8) hord hL hr hr (Or.inr ⟨rfl, by omega⟩)
      (by omega) (by omega) (by omega) (by omega) hn2 hn2
  · exact cl_ne (n1 := 88) (n2 := 88) (off1 := 56) (off2 := 64) hord hL hb hb (Or.inr ⟨rfl, by omega⟩)
      (by omega) (by omega) (by omega) (by omega) hn1 hn1

end InitECandidate.Solver.MemSafe.Wg
