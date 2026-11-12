import InitECandidate.Solver.MemSafe.Stor3.SdLib
import InitECandidate.Solver.MemSafe.Frames.OpStop

set_option autoImplicit false

/-!
# `st ev + 104, 0` (clear RUNNING) keeps `GK` (sonnet-store3)

`Φ` does not rise (it drops by one when the frame is active); the active bit is kept, or `Φ` drops.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {H : Hooks σ}

theorem phi_store_run_gen (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) (hch' : ChainL guestC tEV tCK Γ t fs)
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 104) 0)
    (hrest : wsum t.memory rest = wsum u.memory rest) :
    (fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0 → Phi t + 1 = Phi u) ∧
    (¬ (fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0) → Phi t = Phi u) := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  have kE : ∀ j, j < 280 → j ≠ 104 → fld t.memory oe.base j = fld u.memory oe.base j :=
    fun j hj hjk => by
      rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr hjk))
  have kC : fld t.memory oc.base 32 = fld u.memory oc.base 32 := by
    rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm))
  have k104 : fld t.memory oe.base 104 = 0 := by
    rw [hm]; unfold fld; rw [rd_upd, if_pos rfl]
  have hP : Phi t = (fld u.memory oe.base 64).toNat + (fld u.memory oe.base 192).toNat + 1 +
      (wsum u.memory rest) := by
    rw [phi_eq hch'.chain, hfs, wsum_cons, wt_eq, hrest, kE 64 (by omega) (by omega),
      kE 192 (by omega) (by omega), kC, k104]
    have h0 : ¬ (fld u.memory oc.base 32 = 0 ∧ (0 : BitVec 64) ≠ 0) := fun h => h.2 rfl
    rw [if_neg h0] <;> rfl
  have hU : Phi u = (fld u.memory oe.base 64).toNat + (fld u.memory oe.base 192).toNat + 1 +
      (if fld u.memory oc.base 32 = 0 ∧ fld u.memory oe.base 104 ≠ 0 then 1 else 0) +
      (wsum u.memory rest) := by
    rw [phi_eq hch.chain, hfs, wsum_cons, wt_eq]
  constructor
  · intro hact
    rw [hP, hU, if_pos hact] <;> omega
  · intro hact
    rw [hP, hU, if_neg hact] <;> omega

/-- **Clearing RUNNING keeps `GK`** with the same bound. -/
theorem gk_runstore (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u) :
    GK H gw Γ0 s0 p0 fs d { u with memory := upd u.memory (e + BitVec.ofNat 64 104) 0 } := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  have hmod : ModifiesOnly (TopCells e c) u.memory (upd u.memory (e + BitVec.ofNat 64 104) 0) :=
    modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨13, by simp [evDriverSlots], rfl⟩) 0
  have hk := kg_top hF hfs hrun hch hE
    (t := ({ u with memory := upd u.memory (e + BitVec.ofNat 64 104) 0 } : State σ)) hmod rfl rfl rfl
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := hk
  obtain ⟨hA, hB⟩ := phi_store_run_gen hF hfs hrun.2.2.2.2.2.1 hch hch2 rfl hrest
  obtain ⟨e', c', rest', hfs', he', hc', -⟩ := hch.chain
  rw [hfs] at hfs'
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨h1, h2⟩, -⟩ := hfs'
  rw [← h1] at he'
  rw [← h2] at hc'
  obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
  rw [hfs] at hfs2
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
  obtain ⟨⟨h3, h4⟩, -⟩ := hfs2
  rw [← h3] at he2
  rw [← h4] at hc2
  have hau := act_eq he' hc'
  have hat := act_eq he2 hc2
  refine ⟨⟨jrNZ_congr rfl hJ, Γ1, p1, hrun2, hch2, hE2⟩, ?_, ?_⟩
  · by_cases ha : fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0
    · have := hA ha; omega
    · have := hB ha; omega
  · by_cases ha : fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0
    · have := hA ha; right; omega
    · have hΦeq := hB ha
      have hat' : act ({ u with memory := upd u.memory (e + BitVec.ofNat 64 104) 0 } : State σ) = 0 := by
        rw [hat]
        have hz : fld (upd u.memory (e + BitVec.ofNat 64 104) 0) e 104 = 0 := by
          unfold fld; rw [rd_upd, if_pos rfl]
        exact if_neg (fun h => h.2 hz)
      have hau' : act u = 0 := by rw [hau, if_neg ha]
      rcases hact0 with h | h
      · left; omega
      · right; omega

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.gk_runstore
