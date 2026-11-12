import InitECandidate.Solver.MemSafe.Ra.AttPart2d

/-!
# `run_attempt`, after `payload_header` (end): `p2_be`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

def bBe (Beb : Nat) : Nat :=
  (1 + cAlloc + 0) + ((1 + cMemzero + 0) + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + (0 + ((1 + Beb + 0) + (0 + 0))))))))))))))))

section be
variable {E : EbE σ} {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64} {En : Env} {S : FS}

theorem p2_be (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty)
    (hOk : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S) (hbt : ntx0.toNat < 2 ^ 24)
    (hbwd : nwd0.toNat < 2 ^ 50) {Beb : Nat} (hEb : CondCostC σ (nm "execute_block") 2 EbPre Beb) :
    CW (PA E En S) raS35 (bBe Beb) (fun _ _ => True) := by
  have h120 : (BitVec.ofNat 64 120).toNat = 120 := by decide
  have hsi : En (nm "si") = some (.val (.word si0)) := hOk.en _ _ (by simp (config := { decide := true }) [En2, Env.set])
  have hhdr : En (nm "hdr") = some (.val (.word H)) := hOk.en _ _ (by simp (config := { decide := true }) [En2, Env.set])
  unfold raS35
  refine cw_seq (P := PA E En S) (R := fun t => ∃ w, PA E En (SB S w) t) ⟨?_, ?_⟩ (cw_exists fun be0 => ?_)
  · exact Inv.costP_call (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_cAlloc) (fun _ _ _ _ _ _ => trivial)
      (by intro _ _ _ _ h; cases h)
  · refine hn_post (hn_allocAdoptS (g := nmBe) (e := cw 120) (n := BitVec.ofNat 64 120) (ty := tBOS) (Or.inl rfl)
      (by rw [h120]) (by rw [h120]; decide) (by rw [h120]; decide) gt_be freeG_be (fun s _ => evI_cw s 120)
      (fun g' w t h => ⟨(tidy_ne hOk.tidy (g0 := gHeap) (by decide)).1 g' w t h, (tidy_ne hOk.tidy (g0 := nmBe) (by decide)).1 g' w t h⟩)
      (fun g' w h => ⟨(tidy_ne hOk.tidy (g0 := gHeap) (by decide)).2 g' w h, (tidy_ne hOk.tidy (g0 := nmBe) (by decide)).2 g' w h⟩))
      (fun t _ ⟨w, h⟩ => ⟨w, pa_mono h (fun _ _ x => x) (fun f hf => by simpa only [SB, h120] using hf)⟩)
  have hgo : SB S be0 (Fct.gobj nmBe be0 tBOS) := Or.inr (Or.inr (Or.inl rfl))
  have hobj : SB S be0 (Fct.obj be0 tBOS 120) := Or.inr (Or.inl (Or.inl rfl))
  have hbh : SB S be0 (Fct.gval (nm "block_hashes") bh) := Or.inl (hOk.sub _ (by simp [S2, S2b]))
  have hbn : SB S be0 (Fct.gval (nm "block_hashes_n") nh) := Or.inl (hOk.sub _ (by simp [S2, S2b]))
  have hcb : SB S be0 (Fct.cellv (H + BitVec.ofNat 64 24) C) := Or.inl (hOk.sub _ (by simp [S2, S2b]))
  have hfree := freeOff_SB (E := E) (En := En) (S := S) hobj
  unfold raS36
  refine cw_seq (cw_hn (hn_memzeroBe (S := SB S be0) hgo hobj ?_) (costU cc_cMemzero)) ?_
  · intro s hpa Γ p hr hL f hf _ y hy ⟨h8, h1, h2⟩
    have hb := be_facts (ebRun_G hr) (hL _ hobj)
    exact fr_SB hL f hf y hy ⟨by omega, by omega⟩
  unfold raS37
  refine cw_stBe (n := 1) (lo := 0) hgo hobj (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree ?_
  unfold raS38
  refine cw_stBe (n := 1) (lo := 0) hgo hobj (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree ?_
  unfold raS39
  refine cw_stBe (n := 1) (lo := 0) hgo hobj (by decide) (by decide) (by omega)
    (fun s hpa v hv => by have := evI_gval hpa hbh v hv; subst this; simp [flattenHOL]) hfree ?_
  unfold raS40
  refine cw_stBe (n := 1) (lo := 0) hgo hobj (by decide) (by decide) (by omega)
    (fun s hpa v hv => by have := evI_gval hpa hbn v hv; subst this; simp [flattenHOL]) hfree ?_
  unfold raS41
  refine cw_seq (cw_hn (hn_stBlkV (a := .op .add [gv nmBe, cw 32]) (e := .load .one (.op .add [lv (nm "hdr"), cw 24]))
    (c := be0 + BitVec.ofNat 64 32) (x := C) ?_ ?_) (costP_zero (cost_store _ _))) ?_
  · intro s hpa Γ p hr hL
    refine ⟨evI_add (evI_gobj hpa hgo) (evI_cw s 32), evI_ld_cellv hpa (evI_add (evI_lv_pa hpa hhdr) (evI_cw s 24)) hcb, ?_⟩
    exact blk_cell_ex (hL _ hobj) (Or.inl rfl) (by decide) (by omega)
  · intro s hpa Γ p hr hL f hf _ y hy
    exact hfree s hpa Γ p hr hL f hf y hy 32 (by omega) (by omega)
  have hfree2 := freeOff_cb (E := E) (En := En) (C := C) hobj hfree
  have hgo2 : (fun f => SB S be0 f ∨ f = Fct.cellv (be0 + BitVec.ofNat 64 32) C) (Fct.gobj nmBe be0 tBOS) := Or.inl hgo
  have hobj2 : (fun f => SB S be0 f ∨ f = Fct.cellv (be0 + BitVec.ofNat 64 32) C) (Fct.obj be0 tBOS 120) := Or.inl hobj
  unfold raS42
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS43
  refine cw_stBe (n := 4) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => ev_load_comb4 hv) hfree2 ?_
  unfold raS44
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS45
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS46
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS47
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS48
  refine cw_stBe (n := 1) (lo := 40) hgo2 hobj2 (by decide) (by decide) (by omega) (fun s _ v hv => len1_ld hv) hfree2 ?_
  unfold raS49
  refine cw_seq (cw_hn hn_skip (costP_zero cost_skip)) ?_
  unfold raS50
  have hS2c : SafeS (fun f => SB S be0 f ∨ f = Fct.cellv (be0 + BitVec.ofNat 64 32) C) :=
    fun f hf => hf.elim (sb_safe be0 hOk.safe f) (fun h => by subst h; trivial)
  refine ⟨?_, fun _ _ _ _ => trivial⟩
  refine Inv.costP_seq (R := fun _ => True) (cp_callK (D := fun _ _ _ _ => False) (W := fun _ => False) hK hE0 hS2c hEb rfl ?_) (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (cost_seq cost_skip (cost_return _)))
  refine ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, fun _ _ _ _ h => h, fun _ _ _ h => h⟩
  intro s hpak vs hvs callee Γ p hr hL hC
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  have hpa := pak_pa hpak
  have e1 := evI_lv_pa hpa hsi v1 h1
  have e2 := evI_lv_pa hpa hhdr v2 h2
  subst e1 e2
  refine ⟨si0, H, pl0, ntx0, ptxs0, nwd0, be0, C, WD, T1, T2, z, bh, nh, bsw, skw, rfl, hC, hbt, hbwd, ?_⟩
  exact holds_s0c (fun f hf => hOk.sub f hf) (holdsAll_loc hL callee (s.clock - 1))

end be

#print axioms InitECandidate.Solver.MemSafe.Att.p2_be

end InitECandidate.Solver.MemSafe.Att
