import InitECandidate.Solver.MemSafe.Ptx.PtM8

/-!
# F3e: adopting `te` -- `subarr_tx`, `g_adopt_te`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem te_slot0 : (Types.guestC.ty tTE).slot 0 = .ptr tB24 := by decide
theorem te_slotS (k : Nat) : (Types.guestC.ty tTE).slot (k + 1) = .prot := by
  show teTy.slot (k + 1) = .prot
  unfold TyD.slot teTy
  simp

/-- The transaction's authorization array satisfies `SubArr` in the current typing. -/
theorem subarr_tx {E : PtE σ} (hP : PtPre E) {D Γ u p} (h : PtRun D E.Γ0 E.s0 E.p0 Γ u p)
    (hD : ∀ a, D a ≠ none → E.WSet a) :
    SubArr Γ (T1 E) (T2 E).toNat tAUTH 120 := by
  obtain ⟨o, ho, hb, ht, -⟩ := tx_size hP
  obtain ⟨o', ho', hb', ht', -⟩ := ptRun_ext h o ho
  have hG := ptRun_G h
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  have hw := Rec.encGet_guestR Γ u o' (ht'.trans ht) (hW o' ho')
  have h4 := hw.2.2.2.2
  have e34 : rd u.memory (o'.cell 34) = T1 E := by
    unfold Obj.cell T1; rw [hb'.trans hb]
    exact rd_tx hP h hD (off := 272) (by norm_num) (by norm_num)
  have e35 : rd u.memory (o'.cell 35) = T2 E := by
    unfold Obj.cell T2; rw [hb'.trans hb]
    exact rd_tx hP h hD (off := 280) (by norm_num) (by norm_num)
  unfold Hooks.txF at h4
  rw [e34, e35] at h4
  exact h4


/-- **`te` joins the typing as a `tTE` record.** -/
theorem g_adopt_te {Γ : Gam} {u : State σ} {p p0 : Ptrs} {wt : BitVec 64}
    (hG : G guestC (HR σ) Γ u) (hp : ptrsOf u = some p) (hord0 : p0.Ordered)
    (hfb : FreshBuf Γ p0 p wt 200) (hbl : BlkP wt 200) (hlive : wt.toNat + 200 ≤ p.hp)
    (hsd : ∃ o ∈ Γ, o.base = rd u.memory wt ∧ o.ty = tB24)
    (hSA : SubArr Γ (rd u.memory (wt + BitVec.ofNat 64 144)) (rd u.memory (wt + BitVec.ofNat 64 152)).toNat tAUTH 120) :
    G guestC (HR σ) (Γ ++ [⟨wt, tTE, 200⟩]) u := by
  obtain ⟨hw8, hwb, hwe⟩ := hbl
  have hord := ordered_of_G hG hp
  have hLay : Layout guestC p Γ := by
    obtain ⟨q, hq, -, hL, -⟩ := id hG
    rwa [Option.some.inj (hq.symm.trans hp)] at hL
  have hbytes := fresh_bytes hLay hfb (by norm_num) hwb hwe hlive hord hord0
  let x : Obj := ⟨wt, tTE, 200⟩
  refine G_addObjL guestHooksR_mono hG (x := x) hw8 (by show 200 % 8 = 0; norm_num) (by show 0 < 200; norm_num)
    (by show (Types.guestC.ty tTE).minSz ≤ 200; decide) (fun q hq => ?_) (fun a ha => ?_) (fun k hk => ?_)
    (show Types.guestC.tags.lookup tTE = none by decide) (fun p' hL' => ?_)
  · rw [hp] at hq; cases hq
    show (guestC.ty tTE).region.Live _ wt.toNat 200
    have : (guestC.ty tTE).region = .heap := by decide
    rw [this]; exact ⟨hwb, hlive⟩
  · obtain ⟨h1, h2⟩ := ha
    exact (hbytes a.toNat h1 h2).2.2
  · rcases k with _ | k
    · show Fits (Γ ++ [x]) ((guestC.ty tTE).slot 0) _
      rw [te_slot0]
      obtain ⟨o, ho, hb, ht⟩ := hsd
      have e : x.cell 0 = wt := by simp [Obj.cell, x]
      rw [e]
      exact ⟨o, List.mem_append_left _ ho, hb, ht⟩
    · show Fits (Γ ++ [x]) ((guestC.ty tTE).slot (k + 1)) _
      rw [te_slotS]; trivial
  · refine wf_te (o := x) rfl (List.mem_append_right _ (List.mem_singleton.mpr rfl)) (gamOK_of_layout hL') ?_
    refine ⟨le_refl _, ?_, subArr_ext (ext_append Γ x) hSA⟩
    show wt.toNat + 200 ≤ heapEnd
    exact hwe

end InitECandidate.Solver.MemSafe.Ptx
