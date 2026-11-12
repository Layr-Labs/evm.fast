import InitECandidate.Solver.MemSafe.Ops6.WinT
import InitECandidate.Solver.MemSafe.Frames.GkMemL
import InitECandidate.Solver.MemSafe.Pre.EmitLogR
import InitECandidate.Solver.MemSafe.Frames.PreWire
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# `log_append(ev, log)` on `GK` (sonnet-log)

`hoareG_gkLogApp`: from `GK d` (the running EV's log list `EV 88` is a `Γ` list header of element
size 8, by `ChainE GP`), `log_append(ev, log); k` keeps `GK d`. The footprint (`LaPW`) is `PWtopM []`
(`laPW_pwL`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem logApp_spec :
    SumSpecA σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "log_append") Inc.laSig Inc.LaPre
      (fun _ _ Γ a => Inc.LaPW Γ a) Inc.LaQ :=
  Inc.sumSpec_log_appendV Rec.foldOK_guestR Hooks.guestHooksR_mono Hooks.lstHooks_guestR

theorem logApp_fp : ∀ {σ : Type}, KeepsFp σ guestCtx (nm "log_append") :=
  fun {_} => Wire.keepsFp_guest (by decide +kernel)

section
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem gk_logApp (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} {Γc : Gam} {pc : Ptrs}
    (hu : GKA (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs d Γc pc u0)
    {lgw : BitVec 64} (hlq : u0.locals.lookup (nm "log") = some (.val (.word lgw)))
    (hlg : LogRecF Γc pc.hp u0.memory lgw)
    {vs : List (ValueHOL 64)} (hvs : evs u0 [gv (nm "ev"), lv (nm "log")] = some vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) Inc.laSig Inc.LaPre
      (fun vs s Γ a => ProtCell guestC Γ a ∧ Inc.LaPW Γ a) Inc.LaQ vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) : KJ d st := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hu' : KJ d u0 := gk_of_gka hu
  obtain ⟨⟨hJ, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γc (callEntryStateHOLFinite u0 callee) :=
    (G_locFree hF.hooks u0 _ _).mpr hG1
  have hpe : ptrsOf (callEntryStateHOLFinite u0 callee) = some pc :=
    (ptrsOf_congr rfl).trans hrun.2.1
  have hEg : u0.globals.lookup nmEv = some (.val (.word e)) :=
    AllocImpl.lookup_of_gword (gk_gword hfs hu')
  obtain ⟨v0, vs0, rfl, hv0, h0⟩ := evs_cons_inv hvs
  obtain ⟨v1, vs1, rfl, hv1, h1⟩ := evs_cons_inv h0
  have hz := evs_zero h1
  subst hz
  have hv0' : v0 = .val (.word e) := by
    have : ev u0 (gv (nm "ev")) = some (.val (.word e)) := hEg
    rw [this] at hv0; exact (Option.some.inj hv0).symm
  subst hv0'
  have hv1' : v1 = .val (.word lgw) := by
    have : ev u0 (lv (nm "log")) = some (.val (.word lgw)) := Mpt.Leaves.ev_lv' hlq
    rw [this] at hv1; exact (Option.some.inj hv1).symm
  subst hv1'
  have hpre : Inc.LaPre [.val (.word e), .val (.word lgw)] (callEntryStateHOLFinite u0 callee) Γc := by
    obtain ⟨L, hL⟩ := (hE.1 pc hrun.2.1 (e, c) (by rw [hfs]; simp)).2.2.1
    refine ⟨e, L, hL.1, rfl, ?_, hL.2.2.1, hL.2.2.2⟩
    rw [hL.2.1]; rfl
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -⟩ := kc_coreKL Hooks.lstHooks_guestR hF hfs
    (sg := Inc.laSig)
    (ks := []) (fun g h => by simp [Inc.laSig] at h) (by simp [Inc.laSig])
    (by simp [Inc.laSig, jrOut_iff]) (by decide) (by decide) (by decide) hrun hch hE hJ hR
    hfk hg hna (argsOK_any (by simp [Inc.laSig]) (by simp [Inc.laSig])) hpre
    (fun a _ hw => laPW_pwL hGe hw) (Or.inl ⟨by decide, by decide⟩) (Or.inl ⟨by decide, by decide⟩)
    (fun Γ2 p2 hQ hp2 => by
      obtain ⟨⟨v, hv⟩, hQ2⟩ := hQ
      exact (hQ2 v hv hpre e lgw rfl pc p2 hpe hp2 hlg).1)
  refine ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩
  rw [hact2]; rcases hact with h | h
  · exact Or.inl h
  · exact Or.inr (by omega)

/-- **`log_append(ev, log); k`.** -/
theorem hoareG_gkLogApp (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} {Γc : Gam} {pc : Ptrs}
    (hu : GKA (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs d Γc pc u0)
    {lgw : BitVec 64} (hlq : u0.locals.lookup (nm "log") = some (.val (.word lgw)))
    (hlg : LogRecF Γc pc.hp u0.memory lgw)
    {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ d t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0)
      (.seq (callD (nm "log_append") [gv (nm "ev"), lv (nm "log")]) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧ KJ d t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) Inc.laSig
      Inc.LaPre (fun vs s Γ a => ProtCell guestC Γ a ∧ Inc.LaPW Γ a) Inc.LaQ
      vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
      (FunSpec.and (sumSpecA_relX logApp_spec) logApp_fp) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk1 := gk_logApp hfs hu hlq hlg hvs hR (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl⟩, fun r hr => by cases hr⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk1 := gk_logApp hfs hu hlq hlg hvs hR (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ hk1 rfl rfl rfl rfl) (Nat.zero_le _)

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gk_logApp
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkLogApp
