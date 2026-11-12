import InitECandidate.Solver.MemSafe.Ptx.PtD13

/-!
# F3e: the access-list records keep their entry values
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem acc_obj {E : PtE σ} (hP : PtPre E) (hc : (cnt0 E).toNat ≠ 0) :
    ∃ x ∈ E.Γ0, x.base = lst0 E ∧ x.ty = tACC ∧ 24 * (cnt0 E).toNat ≤ x.size ∧
      (lst0 E).toNat + 24 * (cnt0 E).toNat ≤ heapEnd := by
  obtain ⟨o, ho, hb, ht, hw⟩ := txw_entry hP
  have h4 := hw.2.2.2.1
  have e27 : Hooks.txF E.s0.memory o 27 = cnt0 E := by
    unfold Hooks.txF cnt0 Obj.cell; rw [hb]
  have e26 : Hooks.txF E.s0.memory o 26 = lst0 E := by
    unfold Hooks.txF lst0 Obj.cell; rw [hb]
  unfold Hooks.SubArr at h4
  rw [e27, e26] at h4
  rcases h4 with h | ⟨x, hx, hxb, hxt, hxs, hxe⟩
  · exact absurd h hc
  · exact ⟨x, hx, hxb, hxt, hxs, hxe⟩

/-- **A cell of the access-list record `j` keeps its entry value.** -/
theorem rd_acc {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) {j off : Nat} (hj : j < (cnt0 E).toNat) (ho8 : off % 8 = 0)
    (hoff : off + 8 ≤ 24) :
    rd u.memory (lst0 E + BitVec.ofNat 64 (24 * j + off)) = rd E.s0.memory (lst0 E + BitVec.ofNat 64 (24 * j + off)) := by
  obtain ⟨x, hx, hb, ht, hs, -⟩ := acc_obj hP (by omega)
  have hk : x.HasSlot ((24 * j + off) / 8) := by unfold Obj.HasSlot; omega
  have hcell : lst0 E + BitVec.ofNat 64 (24 * j + off) = x.cell ((24 * j + off) / 8) := by
    unfold Obj.cell; rw [hb]; congr 2; omega
  rw [hcell]
  exact rd_nonblock_keep hP h hD hx (by rw [ht]; simp [blockTys]) (by rw [ht]; decide) hk
    (by rw [ht]; exact Hooks.acc_prot _)

end InitECandidate.Solver.MemSafe.Ptx
