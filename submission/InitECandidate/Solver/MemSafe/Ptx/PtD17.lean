import InitECandidate.Solver.MemSafe.Ptx.PtD16

/-!
# F3e: chunk 5a (`hal`, `nal`; `ptS47` to `ptS49`)
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

theorem txhal_fin : ptAllNames.contains (nm "tx_has_access_list") = true := by decide_cbv
theorem txisb_fin : ptAllNames.contains (nm "tx_is_blob") = true := by decide_cbv
theorem txissc_fin : ptAllNames.contains (nm "tx_is_setcode") = true := by decide_cbv

/-- `nal`: either 0 or the transaction's access-list count. -/
def NalOK (E : PtE σ) (nv : BitVec 64) : Prop := nv = 0 ∨ nv = cnt0 E

/-- `ptS47` to `ptS49`: `hal = tx_has_access_list(tx); if hal != 0 { nal = lds 1 (tx + 216) }`. -/
theorem pt_c5a {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w : BitVec 64}
    {ex0 : List (MlS × ValueHOL 64)} {fs rdl : List Fct} (hP : PtPre E) (hQT : LocIns QT)
    (C : CyB E En S rp rl buf n CV w ((nm "nal", .val (.word 0)) :: ex0) fs rdl) (hfr : nm "nal" ∉ ex0.map Prod.fst)
    (hk : ∀ nv : BitVec 64, NalOK E nv →
      CyB E (En.set (nm "nal") (.val (.word nv))) S rp rl buf n CV w ((nm "nal", .val (.word nv)) :: ex0) fs rdl →
      Hoare σ guestCtx (PA E (En.set (nm "nal") (.val (.word nv))) S) ptS49 QT) :
    Hoare σ guestCtx (PA E En S) ptS47 QT := by
  obtain ⟨C0, hex, hfx, hrd⟩ := C
  have hnal : En (nm "nal") = some (.val (.word 0)) := ex_get hex (List.mem_cons_self ..)
  have hex0 : EX En ex0 := fun p hp => hex p (List.mem_cons_of_mem _ hp)
  unfold ptS47
  refine hdecAnyU (locIns_resIns hQT _) tab_tx_has_access_list (by simp) rfl txhal_fin rfl
    (fun g ty h => (C0.gl g ty h).1) (C0.un _ (by decide)) ?_
  unfold ptS48
  refine hseqN (P1 := fun t => ∃ nv, NalOK E nv ∧ PA E (En.set (nm "nal") (.val (.word nv))) S t) ?_ ?_
  · unfold ptS50
    refine hn_ite ?_ ?_
    · refine hn_post (hn_pre (hassignT (n := nm "nal") (w' := cnt0 E) ⟨_, hnal⟩ ?_) (fun s _ h => h.1))
        (fun t _ h => ⟨cnt0 E, Or.inr rfl, h⟩)
      intro s hpa v hv
      obtain ⟨D, Γ, p, hr, hD, hL⟩ := hpa.1
      have h1 := evI_ld (evI_add (evI_lv (hpa.2 _ _ C0.tx)) (evI_cw s 216)) v hv
      rw [h1, rd_tx hP hr hD (by norm_num) (by norm_num)]
      rfl
    · refine hn_post (hn_pre hn_skip (fun s _ h => h.1)) (fun t _ h => ⟨0, Or.inl rfl, ?_⟩)
      rw [env_set_same hnal]; exact h
  · refine hoare_exC fun nv hnv => ?_
    exact hk nv hnv ⟨cy_set C0 (x := nm "nal") (by decide) (by decide) _, ex_cons hex0 hfr _, hfx, hrd⟩

end InitECandidate.Solver.MemSafe.Ptx
