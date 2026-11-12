import InitECandidate.Solver.MemSafe.D0.Hook

/-!
# `GP` / `GR` congruence lemmas (stores to message cells and to free EV slots)

`GP Γ m p f` reads only `fld m f.1 {88, 112, 136, 208, 224}` and `fld m (msgOf m f) {16, 32}`;
`GR Γ m ch pa` reads `fld m ch.1 {112, 136}`, `fld m pa.1 {88, 112, 136}`,
`fld m (msgOf m pa) {16, 32}` and `fld m ch.2 {40, 48, 56}`. Unlike `XKeep` these lemmas allow
changes to every other cell of the message objects (`msg[48]`, `[104]`, `[112]`, `[120]`, `[168]`)
and to the EV slots `6, 7, 10, 25`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

/-- The log list object types (headers, arrays, records): the chain extension reads their cells
(`GP`'s `LogsG`), so a write must avoid them. -/
def LstTy (t : Nat) : Prop := t = tLSTh ∨ t = tLSTs ∨ t = tLSTAh ∨ t = tLSTAs ∨ t = tLOG

instance : DecidablePred LstTy := fun t =>
  inferInstanceAs (Decidable (t = tLSTh ∨ t = tLSTs ∨ t = tLSTAh ∨ t = tLSTAs ∨ t = tLOG))

/-- Keeping the cells of the `LstTy` objects keeps the log records. -/
theorem logKeep_of_lst {Γ : Gam} {m m' : Mem}
    (kL : ∀ o ∈ Γ, ∀ k, k < o.size → LstTy o.ty → fld m' o.base k = fld m o.base k) :
    LogKeep Γ m m' :=
  fun o ho ht k hk => kL o ho (8 * k) (by unfold Obj.HasSlot at hk; omega)
    (Or.inr (Or.inr (Or.inr (Or.inr ht))))

/-- **`GP`'s list cells are kept** when every cell of every list object is: the header cells `PTR`,
`N` and the array elements of the frame's log list. -/
theorem gp_lst_keep {Γ : Gam} {m m' : Mem} {p q : Ptrs} {f : Frame} (hL : Layout guestC q Γ)
    (h : GP Γ m p f)
    (kL : ∀ o ∈ Γ, ∀ k, k < o.size → LstTy o.ty → fld m' o.base k = fld m o.base k) :
    rd m' (fld m f.1 88) = rd m (fld m f.1 88) ∧
    rd m' (fld m f.1 88 + BitVec.ofNat 64 8) = rd m (fld m f.1 88 + BitVec.ofNat 64 8) ∧
    ∀ i, i < (rd m (fld m f.1 88 + BitVec.ofNat 64 8)).toNat →
      rd m' (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)) =
        rd m (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)) := by
  obtain ⟨-, -, ⟨Lh, hLΓ, hLb, hLt, hLe⟩, -, -, ⟨x, hxΓ, hxA, hxb, hxs⟩, -⟩ := h
  have hLT : LstTy Lh.ty := by
    have h5 := hLt
    simp only [Hooks.lstTys, List.mem_cons, List.mem_nil_iff, or_false] at h5
    rcases h5 with h | h | h | h | h
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    all_goals (exfalso; rw [h] at hLe; simp [Hooks.lstE] at hLe)
  have hxT : LstTy (x.ty) := by rcases hxA with h | h <;> rw [h] <;> decide
  have hs : ∀ k, k < 3 → Lh.HasSlot k := fun k hk => HtabEntries.lst_slot hL hLΓ hLt hk
  have k0 := kL Lh hLΓ 0 (by have := hs 0 (by omega); unfold Obj.HasSlot at this; omega) hLT
  have k8 := kL Lh hLΓ 8 (by have := hs 1 (by omega); unfold Obj.HasSlot at this; omega) hLT
  have e0 : ∀ (mm : Mem), fld mm Lh.base 0 = rd mm Lh.base := fun mm => by simp [fld]
  rw [e0, e0] at k0
  refine ⟨by rw [← hLb]; exact k0, by rw [← hLb]; exact k8, fun i hi => ?_⟩
  have hi' : 8 * i < x.size := by omega
  have := kL x hxΓ (8 * i) hi' hxT
  rw [hxb] at this
  exact this

theorem gp_congr {Γ : Gam} {m m' : Mem} {p : Ptrs} {f : Frame} (h : GP Γ m p f)
    (h88 : fld m' f.1 88 = fld m f.1 88) (h112 : fld m' f.1 112 = fld m f.1 112)
    (h136 : fld m' f.1 136 = fld m f.1 136)
    (h208 : fld m' f.1 208 = fld m f.1 208) (h224 : fld m' f.1 224 = fld m f.1 224)
    (h16 : fld m' (fld m f.1 112) 16 = fld m (fld m f.1 112) 16)
    (h32 : fld m' (fld m f.1 112) 32 = fld m (fld m f.1 112) 32)
    (hP : rd m' (fld m f.1 88) = rd m (fld m f.1 88))
    (hN : rd m' (fld m f.1 88 + BitVec.ofNat 64 8) = rd m (fld m f.1 88 + BitVec.ofNat 64 8))
    (hA : ∀ i, i < (rd m (fld m f.1 88 + BitVec.ofNat 64 8)).toNat →
      rd m' (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)) =
        rd m (rd m (fld m f.1 88) + BitVec.ofNat 64 (8 * i)))
    (hKL : LogKeep Γ m m') : GP Γ m' p f := by
  obtain ⟨⟨M, hM⟩, hB, hL, hD, hMk, ⟨x, hx⟩, hIn⟩ := h
  have hmo : msgOf m' f = msgOf m f := h112
  have hP' : rd m' (fld m' f.1 88) = rd m (fld m f.1 88) := by rw [h88]; exact hP
  have hN' : rd m' (fld m' f.1 88 + BitVec.ofNat 64 8) = rd m (fld m f.1 88 + BitVec.ofNat 64 8) := by
    rw [h88]; exact hN
  refine ⟨⟨M, by rw [hmo]; exact hM⟩, fun k hk => ?_, by rw [h88]; exact hL, by rw [h136]; exact hD,
    by unfold MarkV; rw [h208, h224]; exact hMk,
    ⟨⟨x, hx.1, hx.2.1, by rw [hP']; exact hx.2.2.1, by rw [hN']; exact hx.2.2.2⟩,
      fun i hi => ?_⟩⟩
  swap
  · have hi' : i < (rd m (fld m f.1 88 + BitVec.ofNat 64 8)).toNat := by rw [← hN']; exact hi
    rw [hP', hA i hi']
    exact ⟨(hIn i hi').1, logF_keep hKL (hIn i hi').1 (hIn i hi').2⟩
  rw [hmo]
  have hb := hB k hk
  simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl
  · rw [show fld m' (msgOf m f) 16 = fld m (msgOf m f) 16 from h16]; exact hb
  · rw [show fld m' (msgOf m f) 32 = fld m (msgOf m f) 32 from h32]; exact hb

theorem gr_congr {Γ : Gam} {m m' : Mem} {ch pa : Frame} (h : GR Γ m ch pa)
    (hc136 : fld m' ch.1 136 = fld m ch.1 136) (hc112 : fld m' ch.1 112 = fld m ch.1 112)
    (hp136 : fld m' pa.1 136 = fld m pa.1 136) (hp88 : fld m' pa.1 88 = fld m pa.1 88)
    (hp112 : fld m' pa.1 112 = fld m pa.1 112)
    (hp16 : fld m' (fld m pa.1 112) 16 = fld m (fld m pa.1 112) 16)
    (hp32 : fld m' (fld m pa.1 112) 32 = fld m (fld m pa.1 112) 32)
    (hk48 : fld m' ch.2 48 = fld m ch.2 48) (hk56 : fld m' ch.2 56 = fld m ch.2 56)
    (hk40 : fld m' ch.2 40 = fld m ch.2 40)
    (hpP : rd m' (fld m pa.1 88) = rd m (fld m pa.1 88))
    (hpN : rd m' (fld m pa.1 88 + BitVec.ofNat 64 8) = rd m (fld m pa.1 88 + BitVec.ofNat 64 8)) :
    GR Γ m' ch pa := by
  obtain ⟨hne, hX, h40⟩ := h
  have hmk : mkOf m' ch.2 = mkOf m ch.2 := by unfold mkOf ckMark; rw [hk48]
  have hmm : mmOf m' ch.2 = mmOf m ch.2 := by unfold mmOf ckMemMark; rw [hk56]
  have hmo : msgOf m' pa = msgOf m pa := hp112
  refine ⟨by rw [hc136, hp136]; exact hne, ?_, by rw [hk40]; show _ = fld m' ch.1 112; rw [hc112]; exact h40⟩
  rw [hmk, hmm]
  obtain ⟨⟨M, hM, hA⟩, hB, ⟨L, hL, hLA⟩, ⟨D, hD, hDA⟩, ⟨x, hx, hxA⟩⟩ := hX
  have hpP' : rd m' (fld m' pa.1 88) = rd m (fld m pa.1 88) := by rw [hp88]; exact hpP
  have hpN' : rd m' (fld m' pa.1 88 + BitVec.ofNat 64 8) = rd m (fld m pa.1 88 + BitVec.ofNat 64 8) := by
    rw [hp88]; exact hpN
  refine ⟨⟨M, by rw [hmo]; exact hM, hA⟩, fun k hk => ?_, ⟨L, by rw [hp88]; exact hL, hLA⟩,
    ⟨D, by rw [hp136]; exact hD, hDA⟩,
    ⟨x, ⟨hx.1, hx.2.1, by rw [hpP']; exact hx.2.2.1, by rw [hpN']; exact hx.2.2.2⟩, hxA⟩⟩
  rw [hmo]
  have hb := hB k hk
  simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk
  rcases hk with rfl | rfl
  · rw [show fld m' (msgOf m pa) 16 = fld m (msgOf m pa) 16 from hp16]; exact hb
  · rw [show fld m' (msgOf m pa) 32 = fld m (msgOf m pa) 32 from hp32]; exact hb

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.gp_congr
#print axioms InitECandidate.Solver.MemSafe.D0.gr_congr
