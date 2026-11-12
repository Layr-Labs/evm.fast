import InitECandidate.Solver.MemSafe.Wire.FinTableR
import InitECandidate.Solver.MemSafe.Wire.IcsR
import InitECandidate.Solver.MemSafe.Frames.CreateFin
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind
import InitECandidate.Solver.MemSafe.Sc.Final

/-!
# `FinHyps` fully discharged for `guestHooksR` (frames8 B2, frames9 task 1)

* `ic_guestR`: `Inc.sumSpec_icsR` has the footprint `Inc.PWtopMI icsKs` (= `PWtopM tEV tCK [8, 9,
  12, 23, 24]`: also outside every message record), so `Wire.ics_guestR` is exactly `FinHyps.ic`
  at `gic = []`.
* `setCodeS_guestR`: `set_code`'s fold summary (`ShardsJL.tab26[399]`, `buf 20` target, the
  journal / `sk_buf` / table capabilities `setCaps`); **`setCode_guestR`**: its `cf_spec` shape
  (Pre `JrNZ`, which gives `ReqOK`; `prot` writes outside every frame / message record).
* **`cf_guestR`**: `FinHyps.cf` (`cf_spec`, set_code option B).
* **`finHyps_guestR_ic`**: `FinHyps … guestHooksR … GP GR Inc.IcsX` with **no hypotheses**.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **`FinHyps.ic` for `guestHooksR`** (the argument `ic` of `Wire.finHyps_guestR`, `gic = []`). -/
theorem ic_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC Hooks.guestHooksR (nm "incorporate_child_on_success")
      (sgA 1 []) (IcPreG tEV Inc.IcsX) (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG :=
  Wire.ics_guestR

/-! ## `set_code` -/

/-- `set_code`'s capabilities. -/
def setCaps : List Cap := Sc.scCaps

theorem setCaps_g : ∀ c ∈ setCaps, c.g ≠ anyG →
    (c.g = nmJr ∧ c.t = tJOURNAL) ∨ (c.g = nmSk ∧ c.t = tB64) := by decide

theorem setCaps_ks : ∀ c ∈ setCaps, c.ks = [] := by decide

theorem setCaps_t : ∀ c ∈ setCaps, c.all = true →
    c.t ≠ 0 ∧ c.t ≠ 1 ∧ c.t ≠ 4 ∧ c.t ≠ 5 ∧ c.t ≠ 76 ∧ c.t ≠ 77 ∧ c.t ≠ 78 ∧ c.t ≠ 80 ∧ c.t ≠ 46 ∧ c.t ≠ 49 ∧ c.t ≠ 50 ∧ c.t ≠ 51 ∧ c.t ≠ 15 ∧ c.t ≠ 16 ∧ c.t ≠ 17 ∧ c.t ≠ 18 := by
  decide

/-- The `prot` cells `set_code`'s capabilities allow are outside every frame / message record. -/
theorem setCaps_pw {σ : Type} {H : Hooks σ} {vs : List (ValueHOL 64)} {Γ : Gam} {s : State σ}
    (hG : G guestC H Γ s) {a : BitVec 64} (hw : CapPW setCaps s Γ a) :
    PWtopM tEV tCK [] vs s Γ a := by
  obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨hall, e, he, hty, k, hks, rfl⟩⟩ := hw
  · rw [setCaps_ks c hc] at hk; cases hk
  · have := setCaps_t c hc hall
    have hown : 80 < ownBase := by decide
    unfold AllTy at hty
    have h01 : e.ty ≠ 0 ∧ e.ty ≠ 1 := by omega
    exact noFrameM_cell hG he hks h01 (by simp [msgTys, blockTys]; omega)

/-- **`set_code` in `cf_spec`'s shape**: its hand summary (`Sc.sumSpecA_set_code_G`), with `JrNZ` giving
its `ReqOK`. -/
theorem setCode_guestR {σ : Type} :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "set_code") (sgSet [Hooks.gJn])
      (fun vs s _ => JrNZ s ∧ CodeLen vs) (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs ⟨hJ, hLen⟩
  obtain ⟨Γ', p, p', core, -⟩ := Sc.sumSpecA_set_code_G vs body callee rs hl s hs hloc r hr hg hna Γ hG
    hargs ⟨reqOK_jrs setCaps_g hG hJ, hLen⟩
  exact ⟨Γ', p, p', sumCore_pw core fun a ⟨hpc, hw⟩ => ⟨hpc, setCaps_pw hG hw⟩, trivial⟩

/-- **`FinHyps.cf` for `guestHooksR`** (`cf_spec`, set_code option B). -/
theorem cf_guestR {σ : Type} :
    SumSpecO σ guestCtx guestC Hooks.guestHooksR (nm "create_finish") (sgA 2 [Hooks.gJn])
      (CfPre guestC tEV) (PWtopM tEV tCK gasKs) CfQ :=
  cf_spec Rec.foldOK_guestR Hooks.drvCfg_guestHooksR setCode_guestR
    (Wire.keepsFp_guest (by decide_cbv))

/-- **`FinHyps` for `guestHooksR`, every callee fact discharged.** -/
theorem finHyps_guestR_ic {σ : Type} :
    FinHyps σ guestCtx guestC Hooks.guestHooksR tEV tCK GP GR Inc.IcsX
      ⟨[Hooks.gJn], [Hooks.gJn], [], [], [], [], []⟩ :=
  Wire.finHyps_guestR (by decide) (by decide) cf_guestR (by simp) (by decide) ic_guestR

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.ic_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.setCode_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.cf_guestR
#print axioms InitECandidate.Solver.MemSafe.Frames.finHyps_guestR_ic
