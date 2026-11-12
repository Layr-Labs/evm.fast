import InitECandidate.Solver.MemSafe.Ini.GFin

/-!
# `nodedb_build`: from the net effect to `SumCore` and `NdbR`

`ndb_final`: after a run with `Eff` and `Tbl` (every leaf value is a record of the entry's slice array), the state
satisfies `G` for `Γ0 ++ [header, node array]` (both of the frozen type) and the node DB is `NdbR`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Ini
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames
open InitECandidate.Solver.Wit

variable {σ : Type}

/-- The last byte of a range inside a block bounds its end. -/
theorem end_le {b len H : Nat} (hlen : 0 < len) (hb : b + len ≤ 2 ^ 64)
    (h : ∀ a : BitVec 64, b ≤ a.toNat → a.toNat < b + len → a.toNat < H) : b + len ≤ H := by
  have := h (BitVec.ofNat 64 (b + len - 1)) (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at this
  omega

theorem ndb_final {tF : Nat} (hF : FrzTy tF) {Γ0 : Gam} {s0 t : State σ} {p0 : Ptrs}
    {A T H : BitVec 64} {n : Nat}
    (hG : G Types.guestC (guestHooksR (σ := σ)) Γ0 s0) (hp : ptrsOf s0 = some p0)
    (hSL : SlArr Γ0 s0.memory A n) (he : Eff s0 t Γ0 p0 H) (ht : Tbl p0 A T n t H) :
    ∃ (Γ' : Gam) (p' : Ptrs), ptrsOf t = some p' ∧ p0.Mono p' ∧ Ext Γ0 Γ' ∧ NewFresh Γ0 Γ' p0 p' ∧
      G Types.guestC (guestHooksR (σ := σ)) Γ' t ∧ NdbR Γ' t.memory T := by
  have hF0 := Rec.foldOK_guestR (σ := σ)
  obtain ⟨hpt, hord', hG0⟩ := g_run hF0.hH Helpers.tagSlots_guestC Annot.drv_allocG hG hp he
  obtain ⟨p, hp', hord, hL, -⟩ := id hG
  have hpp : p = p0 := Option.some.inj (hp'.symm.trans hp)
  subst hpp
  obtain ⟨hwf, hkl, hreg, hleaf⟩ := ht
  have hwf' := hwf
  obtain ⟨hsep, L, hsh, hex⟩ := hwf'
  simp only [Spec.Inv.Sep] at hsep
  obtain ⟨hT8, hN8, hO8, hK8, hS8, hKL, hT64, hN64, hO64, hK64, dTN, dTO, dTK, dNO, dNK, dOK⟩ := hsep
  have hHe := he.hi
  have hlo := he.lo
  -- the two blocks lie in the region
  have hregT : ∀ a : BitVec 64, T.toNat ≤ a.toNat → a.toNat < T.toNat + 88 →
      p.hp ≤ a.toNat ∧ a.toNat < H.toNat := fun a h1 h2 => hreg a (Or.inl ⟨h1, h2⟩)
  have hregN : ∀ a : BitVec 64, (Spec.Inv.hdr t.memory T 40).toNat ≤ a.toNat → a.toNat < (Spec.Inv.hdr t.memory T 40).toNat + 32 * ((Spec.Inv.CAP t.memory T) + 1) →
      p.hp ≤ a.toNat ∧ a.toNat < H.toNat := fun a h1 h2 => hreg a (Or.inr (Or.inl ⟨h1, h2⟩))
  have hTend : T.toNat + 88 ≤ H.toNat := end_le (by omega) hT64 fun a h1 h2 => (hregT a h1 h2).2
  have hNend : (Spec.Inv.hdr t.memory T 40).toNat + 32 * ((Spec.Inv.CAP t.memory T) + 1) ≤ H.toNat :=
    end_le (by omega) hN64 fun a h1 h2 => (hregN a h1 h2).2
  have hTlo : p.hp ≤ T.toNat := (hregT T le_rfl (by omega)).1
  have hNlo : p.hp ≤ (Spec.Inv.hdr t.memory T 40).toNat := (hregN (Spec.Inv.hdr t.memory T 40) le_rfl (by omega)).1
  have hb0 : heapBase ≤ p.hp := hord.1
  -- the header block
  have hG1 := g_add_frz hF hG0 hpt (b := T) (n := 88) hT8 (by omega) (by omega)
    ⟨by omega, by show T.toNat + 88 ≤ H.toNat; exact hTend⟩ (fun a ⟨h1, h2⟩ hin => by
      have := hregT a h1 (by simp only [Obj.hi] at h2; exact h2)
      have := inobj_out hord hL hin
      omega)
  -- the node block
  have hG2 := g_add_frz hF hG1 hpt (b := (Spec.Inv.hdr t.memory T 40)) (n := 32 * ((Spec.Inv.CAP t.memory T) + 1)) hN8 (by omega) (by omega)
    ⟨by omega, by show (Spec.Inv.hdr t.memory T 40).toNat + 32 * ((Spec.Inv.CAP t.memory T) + 1) ≤ H.toNat; exact hNend⟩ (fun a ⟨h1, h2⟩ hin => by
      simp only [Obj.lo, Obj.hi] at h1 h2
      have hr := hregN a h1 h2
      obtain ⟨o, ho, ho1, ho2⟩ := hin
      rcases List.mem_append.mp ho with ho | ho
      · have := inobj_out hord hL ⟨o, ho, ho1, ho2⟩
        omega
      · simp only [List.mem_singleton] at ho
        subst ho
        simp only [Obj.lo, Obj.hi] at ho1 ho2
        rcases dTN with d | d <;> omega)
  have hext : Ext Γ0 (Γ0 ++ [(⟨T, tF, 88⟩ : Obj)] ++ [(⟨(Spec.Inv.hdr t.memory T 40), tF, 32 * ((Spec.Inv.CAP t.memory T) + 1)⟩ : Obj)]) :=
    ext_trans (ext_snoc' Γ0 _) (ext_snoc' _ _)
  have hkeep : ∀ x : BitVec 64, RCell Γ0 x → t.memory x = s0.memory x := fun x hx =>
    he.mem x (fun hor => hor.elim (rcell_not_scell hord hL hx) (fun ⟨h1, h2⟩ => by
      have hal := rcell_alloc hL hx
      unfold Ptrs.Allocated at hal
      obtain ⟨-, -, d3, d4, -⟩ := hord
      omega))
  refine ⟨_, ptrsE p H, hpt, ⟨by show p.hp ≤ H.toNat; omega, le_rfl, le_rfl⟩, hext, ?_, hG2, ?_⟩
  · intro o ho a h1 h2
    rcases List.mem_append.mp ho with ho | ho
    · rcases List.mem_append.mp ho with ho | ho
      · exact Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩
      · simp only [List.mem_singleton] at ho
        subst ho
        simp only [Obj.lo, Obj.hi] at h1 h2
        exact Or.inr (Or.inl (hregT a h1 h2))
    · simp only [List.mem_singleton] at ho
      subst ho
      simp only [Obj.lo, Obj.hi] at h1 h2
      exact Or.inr (Or.inl (hregN a h1 h2))
  · refine ndbR_frz hF hwf (by simp) (by simp) (by omega) (by omega) ?_
    intro w hw
    obtain ⟨j, hj, rfl⟩ := hleaf w hw
    have h := hSL j hj
    obtain ⟨c0, c8⟩ := slRec_cells h
    exact slRec_ext hext (slRec_congr h (hkeep _ c0) (hkeep _ c8))

end InitECandidate.Solver.MemSafe.Ini
