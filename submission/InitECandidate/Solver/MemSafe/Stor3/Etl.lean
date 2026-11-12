import InitECandidate.Solver.MemSafe.Stor3.Sd
import InitECandidate.Solver.MemSafe.Frames.PreWire
import InitECandidate.Solver.MemSafe.Frames.GkMemL

set_option autoImplicit false

/-!
# `emit_transfer_log` as a `GK` step: `EtlStep` proved (sonnet-store3)

`Frames.etl_guestR` (the summary with `PWtopM []` footprint) plus `kc_core`; the precondition `EtlPre`
(the running EV record and its log list header) comes from the chain extension (`GP`, `LstObj`).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem etl_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "emit_transfer_log") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

/-- `emit_transfer_log(x, y, z)` on a `GK` state (status-preserving). -/
theorem hl_etl {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} (hfs : fs = (e, c) :: rest) (x y z : ExpHOL 64)
    {b : Bool} {u0 : State σ}
    (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) u0) :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "emit_transfer_log") [x, y, z])
      (HL (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have key : ∀ vs, evs u0 [x, y, z] = some vs → ∀ callee r (st : State σ),
      SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sgA 3 []) EtlPre
        (fun vs s Γ a => ProtCell guestC Γ a ∧ PWtopL tEV tCK [] vs s Γ a)
        LogQ vs (callEntryStateHOLFinite u0 callee) r st →
      st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame →
      Good (some r) → ¬ Abortive r → GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) st := by
    intro vs hvs callee r st hR hfk hg hna
    obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
    obtain ⟨o, hevo, hob⟩ := gk_head hfs hch
    have hmem : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
    obtain ⟨-, -, ⟨L, hL⟩, -⟩ := hE.1 p1 hrun.2.1 _ hmem
    have hpre : EtlPre vs (callEntryStateHOLFinite u0 callee) Γ1 :=
      ⟨o, hevo, L, by rw [hob]; exact hL⟩
    obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, -, -⟩ := kc_coreKL Hooks.lstHooks_guestR hF hfs (sg := sgA 3 [])
      (fun g h => by simp [sgA] at h) ⟨by simp [sgA], by simp [sgA]⟩ (by simp [sgA, jrOut_iff])
      (ks := []) (by simp) (by simp) (by simp) hrun hch hE hJ hR hfk hg hna
      (argsOK_any (sgA_any 3 []) (by rw [evs_len hvs]; rfl)) hpre (fun a _ hw => hw)
      (Or.inl ⟨by simp, by simp⟩) (Or.inl ⟨by simp, by simp⟩)
      (fun Γ2 p2 hQ hp2 => logQ_sub (s := callEntryStateHOLFinite u0 callee) hQ hp2)
    refine ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩
    rw [hact2]; omega
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) (sgA 3 [])
      EtlPre (fun vs s Γ a => ProtCell guestC Γ a ∧ PWtopL tEV tCK [] vs s Γ a)
      LogQ vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX etl_guestR) etl_fp) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk := key vs hvs callee _ st hR (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact ⟨⟨fun _ => hK.congr _ st _ hk rfl rfl rfl rfl, fun r hr => by cases hr⟩, fun _ => rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := key vs hvs callee r st hR (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

/-- **`EtlStep` holds.** -/
theorem etlStep : EtlStep σ := by
  intro Γ0 s0 p0 fs e c rest hfs x y z u0 hu
  exact hl_etl hfs x y z (b := false) hu

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_etl
#print axioms InitECandidate.Solver.MemSafe.Stor3.etlStep
