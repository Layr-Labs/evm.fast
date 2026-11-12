import InitECandidate.Solver.MemSafe.Ptx.PtU3

/-!
# F3h: `DelPreF` from the delete table of the post-call typing
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

section tab4
variable {Γ' : Gam} {t : State σ} {D : Obj}

/-- A table region cell is a cell of a dropped object. -/
theorem region_dropped (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20)
    {q : Ptrs} (hp : ptrsOf t = some q) {a : BitVec 64} (hr : Spec.Inv.TableRegion t.memory D.base a)
    (h8 : a.toNat % 8 = 0) : ∃ o ∈ Γ', o ∉ keepG Γ' ∧ ∃ k, o.HasSlot k ∧ a = o.cell k := by
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hp'.symm.trans hp)
  have hT := del_tabOK hG hD hty
  obtain ⟨x, hx, hown, h1, h2⟩ := hT.2.1 a hr h8
  obtain ⟨k, hk, rfl⟩ := cell_of_range hord hL hx h1 h2 h8
  exact ⟨x, hx, owns_dropped hord hL hD hty hx hown, k, hk, rfl⟩

theorem yset_hdr (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20)
    {off : Nat} (ho8 : off % 8 = 0) (hoN : off + 8 ≤ 88) :
    YSet Γ' t D.base (D.base + BitVec.ofNat 64 off) := by
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  have hsz := del_size hL hD hty
  have hk : D.HasSlot (off / 8) := by unfold Obj.HasSlot; omega
  have hcell : D.base + BitVec.ofNat 64 off = D.cell (off / 8) := by
    unfold Obj.cell; congr 2; omega
  have hDsc : D ∉ keepG Γ' := by
    intro h
    have := (mem_keepG.mp h).2.1
    rw [hty] at this
    exact absurd this (by decide)
  refine ⟨⟨D, hD, hDsc, off / 8, hk, hcell⟩, fun hkc => ?_⟩
  have hinr := keycell_inr hG hkc
  have hT := del_tabOK hG hD hty
  obtain ⟨hsep, -⟩ := hT.1
  obtain ⟨-, -, -, -, -, -, -, -, -, -, -, -, hDK, -⟩ := hsep
  have hcn : (D.base + BitVec.ofNat 64 off).toNat = D.base.toNat + off := by
    have := (cell_toNat hord hL hD hk).1
    rw [hcell, this]; simp only [Obj.lo]; omega
  obtain ⟨i1, i2⟩ := hinr
  unfold Spec.Inv.Disj at hDK
  omega

theorem yset_ord (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20)
    {q : Ptrs} (hp : ptrsOf t = some q) {i : Nat} (hi : i < Inv.CNT t.memory D.base) :
    YSet Γ' t D.base (Inv.hdr t.memory D.base 48 + BitVec.ofNat 64 (8 * i)) := by
  have hT := del_tabOK hG hD hty
  obtain ⟨hsep, L, hsh, hex⟩ := hT.1
  obtain ⟨ht8, hN8, hO8, hK8, hS8, hkS, ht88, hN64, hO64, hK64, hDtN, hDtO, hDtK, hDNO, hDNK, hDOK⟩ := hsep
  have hcnt : (Inv.hdr t.memory D.base 24).toNat ≤ (Inv.hdr t.memory D.base 80).toNat := hsh.cnt_le
  have hi' : i < (Inv.hdr t.memory D.base 24).toNat := hi
  have hO64' : (Inv.hdr t.memory D.base 48).toNat + 8 * ((Inv.hdr t.memory D.base 80).toNat + 1) ≤ 2 ^ 64 := hO64
  have hlt : (Inv.hdr t.memory D.base 48).toNat + 8 * i < 2 ^ 64 := by omega
  have han : (Inv.hdr t.memory D.base 48 + BitVec.ofNat 64 (8 * i)).toNat = (Inv.hdr t.memory D.base 48).toNat + 8 * i := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : 8 * i < 2 ^ 64), Nat.mod_eq_of_lt hlt]
  have hreg : Spec.Inv.TableRegion t.memory D.base (Inv.hdr t.memory D.base 48 + BitVec.ofNat 64 (8 * i)) :=
    Or.inr (Or.inr (Or.inl ⟨by omega, by show _ < _ + 8 * ((Inv.hdr t.memory D.base 80).toNat + 1); omega⟩))
  have h8 : (Inv.hdr t.memory D.base 48 + BitVec.ofNat 64 (8 * i)).toNat % 8 = 0 := by omega
  refine ⟨region_dropped hG hD hty hp hreg h8, fun hkc => ?_⟩
  have hinr := keycell_inr hG hkc
  obtain ⟨i1, i2⟩ := hinr
  unfold Spec.Inv.Disj at hDOK
  have hDOK' : (Inv.hdr t.memory D.base 48).toNat + 8 * ((Inv.hdr t.memory D.base 80).toNat + 1) ≤
        (Inv.hdr t.memory D.base 32).toNat ∨ (Inv.hdr t.memory D.base 32).toNat +
        (Inv.hdr t.memory D.base 8).toNat * ((Inv.hdr t.memory D.base 80).toNat + 1) ≤
        (Inv.hdr t.memory D.base 48).toNat := hDOK
  omega

theorem keyBuf_dropped (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20)
    {q : Ptrs} (hp : ptrsOf t = some q) {i : Nat} (hi : i < Inv.CNT t.memory D.base) :
    BufOK guestC (keepG Γ') q
      (Inv.keyPtr t.memory D.base (Inv.ORD t.memory D.base (BitVec.ofNat 64 i))).toNat 20 := by
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hp'.symm.trans hp)
  have hT := del_tabOK hG hD hty
  obtain ⟨hwf, -, -, hkl⟩ := hT
  have hkl' : Inv.hdr t.memory D.base 0 = BitVec.ofNat 64 20 := by
    have : htKL D.ty = 20 := by rw [hty]; decide
    rw [← this]; exact hkl
  have hI : (BitVec.ofNat 64 i).toNat < Inv.CNT t.memory D.base := by
    rw [BitVec.toNat_ofNat]
    have h2 : i < 2 ^ 64 := lt_of_lt_of_le hi (by unfold Inv.CNT; have := (Inv.hdr t.memory D.base 24).isLt; omega)
    rw [Nat.mod_eq_of_lt h2]; exact hi
  obtain ⟨h8, hreg⟩ := tbl_key_facts hwf hkl' hI
  intro c hov
  right
  obtain ⟨hc8, hc1, hc2⟩ := hov
  have hinr := hreg c (by omega) (by omega)
  obtain ⟨o, ho, hno, k, hk, rfl⟩ := region_dropped hG hD hty hp (Or.inr (Or.inr (Or.inr hinr))) hc8
  obtain ⟨a1, a2, -⟩ := dropped_cell_out hord hL ho hno hk
  exact ⟨a1, a2⟩

theorem del_cnt_le (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20) :
    Inv.CNT t.memory D.base ≤ 2 ^ 32 := by
  have hT := del_tabOK hG hD hty
  obtain ⟨-, L, hsh, hex⟩ := hT.1
  have h1 := hsh.cnt_le
  have h2 := hex.bnd.2.2
  omega

end tab4

end InitECandidate.Solver.MemSafe.Ptx
