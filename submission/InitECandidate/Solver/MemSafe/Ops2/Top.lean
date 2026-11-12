import InitECandidate.Solver.MemSafe.Ops2.MemPre
import InitECandidate.Solver.MemSafe.Frames.GcrLib

/-!
# Stores into the running frame's driver cells on `GK` (sonnet-gk, step 2)

* `top_fields`: a store into EV slot `k` changes no other EV slot and not `CK_DONE`;
* `gk_topOther`: a store into a driver slot `j` (not `GAS_LEFT`, `SPILLED`, `RUNNING`) keeps `GK d`;
* `gk_topRun`: `st ev + 104, 0` (clear `RUNNING`) gives `GK 1` (from `act s0 = 1`);
* `hoareG_gkStOther`, `hoareG_gkStRun`: the Hoare steps for `stG "ev" k e`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {H : Hooks σ}

/-- A store into EV slot `k` of the running frame keeps the other EV words and `CK_DONE`. -/
theorem top_fields (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) {k : Nat} (hk : k < 280)
    {x : BitVec 64} (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 k) x) :
    (∀ j, j < 280 → j ≠ k → fld t.memory e j = fld u.memory e j) ∧
      fld t.memory c 32 = fld u.memory c 32 := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  refine ⟨fun j hj hjk => ?_, ?_⟩
  · rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr hjk))
  · rw [hm]; exact fld_upd_ne' (cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm))

/-- Clearing `RUNNING` never raises `Φ`, and lowers it by one when the frame was active. -/
theorem phi_store_run_le (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {u t : State σ}
    {fs : List Frame} {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest)
    (hG : G guestC H Γ u) (hch : ChainL guestC tEV tCK Γ u fs) (hch' : ChainL guestC tEV tCK Γ t fs)
    (hm : t.memory = upd u.memory (e + BitVec.ofNat 64 104) 0)
    (hrest : wsum t.memory rest = wsum u.memory rest) :
    Phi t ≤ Phi u ∧ (fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0 → Phi t + 1 = Phi u) := by
  obtain ⟨hE, hC⟩ := top_fields hF hfs hG hch (k := 104) (by omega) hm
  have k104 : fld t.memory e 104 = 0 := by
    rw [hm]; unfold fld; rw [rd_upd, if_pos rfl]
  rw [phi_eq hch'.chain, phi_eq hch.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq,
    hE 64 (by omega) (by omega), hE 192 (by omega) (by omega), hC, k104]
  have h0 : ¬ (fld u.memory c 32 = 0 ∧ (0 : BitVec 64) ≠ 0) := fun h => h.2 rfl
  rw [if_neg h0]
  refine ⟨by split <;> omega, fun hact => ?_⟩
  rw [if_pos hact]
  omega

section gk
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
  {e c : BitVec 64} {rest : List Frame}

/-- **A driver-cell store keeps `GK d`.** -/
theorem gk_topOther (hF : FrameCfg guestC H tEV tCK) (hfs : fs = (e, c) :: rest) {d : Nat}
    {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {j : Nat} (hj : j ∈ evDriverSlots)
    (hj8 : j ≠ 8) (hj24 : j ≠ 24) (hj13 : j ≠ 13) {x : BitVec 64} {t : State σ}
    (hm : t.memory = upd u0.memory (e + BitVec.ofNat 64 (8 * j)) x) (hg : t.globals = u0.globals)
    (hd : t.memaddrs = u0.memaddrs) (hbe : t.be = u0.be) : GK H gw Γ0 s0 p0 fs d t := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hmod : ModifiesOnly (TopCells e c) u0.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨j, hj, rfl⟩) x
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := kg_top hF hfs hrun hch hE hmod hg hd hbe
  have hjl : j ≤ 29 := by simp [evDriverSlots] at hj; omega
  have hΦ := phi_store_other hF hfs hG1 hch hch2 (k := 8 * j) (by omega) (by omega) (by omega)
    (by omega) hm hrest
  obtain ⟨kE, kC⟩ := top_fields hF hfs hG1 hch (k := 8 * j) (by omega) hm
  refine ⟨⟨jrNZ_congr hg hJ, Γ1, p1, hrun2, hch2, hE2⟩, by omega, ?_⟩
  have hact : act t = act u0 := by
    obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
    obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
    rw [hfs] at hfs1 hfs2
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs1 hfs2
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs1
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
    rw [act_eq he2 hc2, act_eq he1 hc1, kC, kE 104 (by omega) (by omega)]
  rcases hact0 with h | h
  · exact Or.inl (by rw [hact]; exact h)
  · exact Or.inr (by omega)

/-- **Eon: a store of a word below `2^32` into `EV_OUTPUT_N` keeps `GK d`.** -/
theorem gk_topOut (hF : FrameCfg guestC H tEV tCK) (hfs : fs = (e, c) :: rest) {d : Nat}
    {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {x : BitVec 64} (hx : x.toNat < 2 ^ 32)
    {t : State σ}
    (hm : t.memory = upd u0.memory (e + BitVec.ofNat 64 128) x) (hg : t.globals = u0.globals)
    (hd : t.memaddrs = u0.memaddrs) (hbe : t.be = u0.be) : GK H gw Γ0 s0 p0 fs d t := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hmod : ModifiesOnly (TopCells16 e c) u0.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inr rfl) x
  have hv : (rd t.memory (e + BitVec.ofNat 64 128)).toNat < 2 ^ 32 := by
    rw [hm, rd_upd, if_pos rfl]; exact hx
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := kg_top16 hF hfs hrun hch hE hmod hv hg hd hbe
  have hΦ := phi_store_other hF hfs hG1 hch hch2 (k := 128) (by omega) (by omega) (by omega)
    (by omega) hm hrest
  obtain ⟨kE, kC⟩ := top_fields hF hfs hG1 hch (k := 128) (by omega) hm
  refine ⟨⟨jrNZ_congr hg hJ, Γ1, p1, hrun2, hch2, hE2⟩, by omega, ?_⟩
  have hact : act t = act u0 := by
    obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
    obtain ⟨e2, c2, rest2, hfs2, he2, hc2, -⟩ := hch2.chain
    rw [hfs] at hfs1 hfs2
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs1 hfs2
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs1
    obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs2
    rw [act_eq he2 hc2, act_eq he1 hc1, kC, kE 104 (by omega) (by omega)]
  rcases hact0 with h | h
  · exact Or.inl (by rw [hact]; exact h)
  · exact Or.inr (by omega)

/-- **`st ev + 104, 0`** (clear `RUNNING`) from a ready entry gives `GK 1`. -/
theorem gk_topRun (hF : FrameCfg guestC H tEV tCK) (hfs : fs = (e, c) :: rest) (ha0 : act s0 = 1)
    {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {t : State σ}
    (hm : t.memory = upd u0.memory (e + BitVec.ofNat 64 104) 0) (hg : t.globals = u0.globals)
    (hd : t.memaddrs = u0.memaddrs) (hbe : t.be = u0.be) : GK H gw Γ0 s0 p0 fs 1 t := by
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ0, hact0⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hmod : ModifiesOnly (TopCells e c) u0.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _)
      (Or.inl ⟨13, by simp [evDriverSlots], rfl⟩) 0
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := kg_top hF hfs hrun hch hE hmod hg hd hbe
  obtain ⟨hle, hlt⟩ := phi_store_run_le hF hfs hG1 hch hch2 hm hrest
  refine ⟨⟨jrNZ_congr hg hJ, Γ1, p1, hrun2, hch2, hE2⟩, ?_⟩
  obtain ⟨e1, c1, rest1, hfs1, he1, hc1, -⟩ := hch.chain
  rw [hfs] at hfs1
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
  obtain ⟨⟨rfl, rfl⟩, -⟩ := hfs1
  by_cases hrd : fld u0.memory c 32 = 0 ∧ fld u0.memory e 104 ≠ 0
  · exact ⟨by have := hlt hrd; omega, Or.inr (by have := hlt hrd; omega)⟩
  · have hau : act u0 = 0 := by
      rw [act_eq he1 hc1, if_neg hrd]
    rcases hact0 with h | h
    · rw [hau, ha0] at h; cases h
    · exact ⟨by omega, Or.inr (by omega)⟩

end gk

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.top_fields
#print axioms InitECandidate.Solver.MemSafe.Frames.phi_store_run_le
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_topOther
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_topRun
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_topOut
