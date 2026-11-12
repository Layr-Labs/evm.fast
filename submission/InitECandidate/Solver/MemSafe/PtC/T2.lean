import InitECandidate.Solver.MemSafe.PtC.S12

/-!
# PtC: stages 1 to 3
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}


theorem lookup_inc : Shards.finalState.1.lookup (nm "incorporate_tx_into_block") = none := by decide_cbv
theorem lookup_pmc : Shards.finalState.1.lookup (nm "process_message_call") = none := by decide_cbv

theorem tbl_inc : tbl (nm "incorporate_tx_into_block") = Wg.bInc := by
  unfold tbl; rw [lookup_inc]
  simp only []
  rw [if_neg (by decide)]
  simp

theorem tbl_pmc : tbl (nm "process_message_call") = bPmc := by
  unfold tbl; rw [lookup_pmc]
  simp only []
  simp

section
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

/-- The call `incorporate_tx_into_block();` with its conditional cost. -/
theorem cw_incorp (hP : TlPre K) (hgs : Bal.HGS σ)
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k) :
    CW' (PAg (TL K.A ref Z O) En) (callD (nm "incorporate_tx_into_block") []) (cbd (callD (nm "incorporate_tx_into_block") []))
      (fun r t => r = none ∧ PAg (TL K.A ref Z O) En t) := by
  refine ⟨?_, hn_incorp hP hgs hBC⟩
  show Inv.CostP σ guestCtx _ _ (1 + tbl (nm "incorporate_tx_into_block") + 0)
  rw [tbl_inc]
  refine Inv.costP_callD (Wg.incCost (σ := σ)) ?_
  intro s hs hpa vs hvs callee
  obtain ⟨⟨Γ, p, hr⟩, hlk⟩ := hpa
  have hvs' : vs = [] := by rw [evs_nil] at hvs; exact (Option.some.inj hvs).symm
  subst hvs'
  have hre : TlS K.A ref Z O (callEntryStateHOLFinite s callee) Γ p := tl_loc hr callee (s.clock - 1)
  have hpre : Bal.UbPre ([] : List (ValueHOL 64)) (callEntryStateHOLFinite s callee) Γ :=
    ⟨rfl, tl_gf hre hP.B.gbs (by decide), tl_gf hre hP.ts (by decide), tl_gf hre hP.B.gba (by decide),
      tl_gf hre hP.B.gbk (by decide), tl_gf hre hP.B.gbi (by decide), tl_gf hre hP.B.gbs2 (by decide),
      tl_gf hre hP.B.gsk (by decide)⟩
  exact ⟨Γ, p, hre.hG, hre.hp, argsOK_anys (by simp [Bal.biSig]) rfl, hpre⟩

end

end InitECandidate.Solver.MemSafe.PtC
