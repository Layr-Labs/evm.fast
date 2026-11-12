import InitECandidate.Solver.MemSafe.Wg.Ra6

/-!
# Wg: the walk of `requests_append`
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

section ra7
variable {E : EbE σ} {En : Env}

/-- What the walk state says about `bo` and its requests array. -/
theorem ra_ctx {S : FS} {bo0 : BitVec 64} (hS0 : ∀ f, RaS0 E.Γ0 E.s0 bo0 f → S f) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hr : EbRun E.Γ0 E.s0 E.p0 Γ s p) (hL : HoldsAll E.p0 Γ p s S) :
    p.Ordered ∧ Layout guestC p Γ ∧ (rd E.s0.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 4 ∧
      (∃ o ∈ Γ, o.base = bo0 ∧ o.ty = tBO ∧ 88 ≤ o.size) ∧
      (∃ o ∈ Γ, o.base = rd E.s0.memory (bo0 + BitVec.ofNat 64 56) ∧ o.ty = tBOS ∧ 128 ≤ o.size) := by
  obtain ⟨q, hq, hord, hLay, -⟩ := ebRun_G hr
  obtain rfl : p = q := Option.some.inj ((ebRun_ptrs hr).symm.trans hq)
  exact ⟨hord, hLay, hL (Fct.prop ((rd E.s0.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 4)) (hS0 _ (by simp [RaS0])),
    hL (Fct.obj bo0 tBO 88) (hS0 _ (by simp [RaS0])),
    hL (Fct.obj (rd E.s0.memory (bo0 + BitVec.ofNat 64 56)) tBOS 128) (hS0 _ (by simp [RaS0]))⟩

theorem ra_dout1 {bo0 : BitVec 64} {s0 : State σ} (hgw : gword s0 (nm "bo") = some bo0)
    (hk4 : (rd s0.memory (bo0 + BitVec.ofNat 64 64)).toNat ≤ 4) :
    RaD s0 (rd s0.memory (bo0 + BitVec.ofNat 64 56) + rd s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16) ∧
    RaD s0 (rd s0.memory (bo0 + BitVec.ofNat 64 56) + (rd s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 +
      BitVec.ofNat 64 8)) ∧ RaD s0 (bo0 + BitVec.ofNat 64 64) := by
  refine ⟨⟨bo0, hgw, Or.inr ⟨hk4, _, rfl, Or.inl (by rw [mul16_eq])⟩⟩,
    ⟨bo0, hgw, Or.inr ⟨hk4, _, rfl, Or.inr (by rw [mul16_add8_eq])⟩⟩, ⟨bo0, hgw, Or.inl rfl⟩⟩

/-- The first store `st (lds (bo + 56)) + k * 16, blob;`. -/
theorem ra_st1 {S : FS} {bo0 w : BitVec 64} (hS0 : ∀ f, RaS0 E.Γ0 E.s0 bo0 f → S f)
    (hAv : Avoid S E.Γ0 E.s0 (RaD E.s0) [bo0 + BitVec.ofNat 64 56]) (hgw : gword E.s0 (nm "bo") = some bo0)
    (hEw : En (nm "blob") = some (.val (.word w))) (hEk : En (nm "k") = some (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) :
    HN (PA E En S)
      (.store (.op .add [ (.load .one (.op .add [ (gv (nm "bo")) , (cw 56) ])) , (.panop .mul [ (lv (nm "k")) , (cw 16) ]) ]) (lv (nm "blob")))
      (PA E En (fun f => S f ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
        rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16) w)) := by
  refine hn_stBlkV ?_ ?_
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    refine ⟨evI_add (evI_ld_cellv hs (evI_add (evI_gobj hs (hS0 (Fct.gobj (nm "bo") bo0 tBO) (by simp [RaS0]))) (evI_cw s 56))
      (hS0 (Fct.cellv (bo0 + BitVec.ofNat 64 56) (rd E.s0.memory (bo0 + BitVec.ofNat 64 56))) (by simp [RaS0]))) (evI_mul (evI_lv_pa hs hEk) (evI_cw s 16)), evI_lv_pa hs hEw, ?_⟩
    have := blk_cell (off := 16 * (rd E.s0.memory (bo0 + BitVec.ofNat 64 64)).toNat) hrq tBOS_block tBOS_prot
      (by omega) (by omega)
    rwa [← mul16_eq] at this
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    have hne := ra_ne hord hLay hbo hrq hk4
    refine hfree_of_avoid hAv (ra_dout1 hgw hk4).1 ?_
    rw [mul16_eq]
    simp only [List.mem_singleton]
    exact fun h => hne.1 h.symm

/-- The second store `st (lds (bo + 56)) + k * 16 + 8, n + 1;`. -/
theorem ra_st2 {S : FS} {bo0 n : BitVec 64} (hS0 : ∀ f, RaS0 E.Γ0 E.s0 bo0 f → S f)
    (hAv : Avoid S E.Γ0 E.s0 (RaD E.s0) [bo0 + BitVec.ofNat 64 56, rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
      rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16])
    (hgw : gword E.s0 (nm "bo") = some bo0)
    (hEn : En (nm "n") = some (.val (.word n))) (hEk : En (nm "k") = some (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) :
    HN (PA E En S)
      (.store (.op .add [ (.load .one (.op .add [ (gv (nm "bo")) , (cw 56) ])) , (.panop .mul [ (lv (nm "k")) , (cw 16) ]) , (cw 8) ])
        (.op .add [ (lv (nm "n")) , (cw 1) ]))
      (PA E En (fun f => S f ∨ f = Fct.cellv (rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
        (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8)) (n + BitVec.ofNat 64 1))) := by
  refine hn_stBlkV ?_ ?_
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    refine ⟨evI_add3 (evI_ld_cellv hs (evI_add (evI_gobj hs (hS0 (Fct.gobj (nm "bo") bo0 tBO) (by simp [RaS0]))) (evI_cw s 56))
      (hS0 (Fct.cellv (bo0 + BitVec.ofNat 64 56) (rd E.s0.memory (bo0 + BitVec.ofNat 64 56))) (by simp [RaS0])))
      (evI_mul (evI_lv_pa hs hEk) (evI_cw s 16)) (evI_cw s 8), evI_add (evI_lv_pa hs hEn) (evI_cw s 1), ?_⟩
    have := blk_cell (off := 16 * (rd E.s0.memory (bo0 + BitVec.ofNat 64 64)).toNat + 8) hrq tBOS_block tBOS_prot
      (by omega) (by omega)
    rwa [← mul16_add8_eq] at this
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    have hne := ra_ne hord hLay hbo hrq hk4
    refine hfree_of_avoid hAv (ra_dout1 hgw hk4).2.1 ?_
    rw [mul16_add8_eq, mul16_eq]
    simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
    exact ⟨fun h => hne.2.1 h.symm, fun h => hne.2.2.2.2.1 h.symm⟩

/-- The third store `st bo + 64, k + 1;`. -/
theorem ra_st3 {S : FS} {bo0 : BitVec 64} (hS0 : ∀ f, RaS0 E.Γ0 E.s0 bo0 f → S f)
    (hAv : Avoid S E.Γ0 E.s0 (RaD E.s0) [bo0 + BitVec.ofNat 64 56, rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
      rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16, rd E.s0.memory (bo0 + BitVec.ofNat 64 56) +
        (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) * BitVec.ofNat 64 16 + BitVec.ofNat 64 8)])
    (hgw : gword E.s0 (nm "bo") = some bo0)
    (hEk : En (nm "k") = some (.val (.word (rd E.s0.memory (bo0 + BitVec.ofNat 64 64))))) :
    HN (PA E En S)
      (.store (.op .add [ (gv (nm "bo")) , (cw 64) ]) (.op .add [ (lv (nm "k")) , (cw 1) ]))
      (PA E En (fun f => S f ∨ f = Fct.cellv (bo0 + BitVec.ofNat 64 64) (rd E.s0.memory (bo0 + BitVec.ofNat 64 64) + BitVec.ofNat 64 1))) := by
  refine hn_stBlkV ?_ ?_
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    refine ⟨evI_add (evI_gobj hs (hS0 (Fct.gobj (nm "bo") bo0 tBO) (by simp [RaS0]))) (evI_cw s 64),
      evI_add (evI_lv_pa hs hEk) (evI_cw s 1), ?_⟩
    exact blk_cell (off := 64) hbo tBO_block tBO_prot (by omega) (by omega)
  · intro s hs Γ p hr hL
    obtain ⟨hord, hLay, hk4, hbo, hrq⟩ := ra_ctx hS0 hr hL
    have hne := ra_ne hord hLay hbo hrq hk4
    refine hfree_of_avoid hAv (ra_dout1 hgw hk4).2.2 ?_
    rw [mul16_add8_eq, mul16_eq]
    simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false, not_or]
    exact ⟨fun h => hne.2.2.2.2.2 h.symm, fun h => hne.2.2.1 h, fun h => hne.2.2.2.1 h⟩

end ra7

end InitECandidate.Solver.MemSafe.Wg
