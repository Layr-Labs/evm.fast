import InitECandidate.Solver.MemSafe.Stor3.SdStore

set_option autoImplicit false

/-!
# Buffer calls in the shifted tracker (sonnet-store3)

`hl_decCallS2` / `hl_callAsgS2`: `hl_decCallS` and the assigning call `x = f(args)` for a callee with a
`CSumm`, in `K2 (GK ...)` (the rebased tracker, shifted by the charge that preceded the rebase).
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

/-- `var rn = f(args); p` for a `CSumm` callee, in the shifted tracker. -/
theorem hl_decCallS2 {f : MlS} {sg : Sig} {cs : List Cap}
    (hS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hfpm : KeepsFp σ guestCtx f)
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {rn : MlS} {sh : ShapeHOL} {p : ProgHOL 64} {b b' : Bool}
    {u0 : State σ}
    (hu : K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) (bd b) u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hcont : ∀ t : State σ, K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) (bd b) t →
      t.locals = u0.locals → ∀ v : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun s => s = setVarHOLFinite rn v t) p
        (GQ (K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs)) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args p)
      (GQ (K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs)) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK' := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hK := kOK_K2 hK'
  have hu' := K2_of hu
  refine hoareG_decCall (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hS) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk := gk_plainA hF hfs hgwE hok hu' hvs (hA vs hvs) hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    exact hoareG_conseq (hcont { st with locals := s.locals }
        (kok_loc hK (K2_mk hk) _) rfl v hsh)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := gk_plainA hF hfs hgwE hok hu' hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ (K2_mk (b := true) hk) (Nat.zero_le _)) rfl rfl rfl rfl

/-- `x = f(args); ...` (an assigning call to an existing local) for a `CSumm` callee, in the shifted
tracker: the continuation sees the result as the new value of `x`. -/
theorem hl_callAsgS2 {f : MlS} {sg : Sig} {cs : List Cap}
    (hS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hfpm : KeepsFp σ guestCtx f)
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {x : MlS} {b : Bool}
    {u0 : State σ}
    (hu : K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) (bd b) u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs) :
    HoareG σ guestCtx (fun t => t = u0) (.call (some (some (.local, x), none)) f args)
      (fun ro t => (ro = none → K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) (bd b) t ∧
        ∃ v, ev t (lv x) = some v ∧ ∀ y, y ≠ x → t.locals.lookup y = u0.locals.lookup y) ∧
        ∀ r, ro = some r → ¬ Abortive r →
          K2 (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) (rbd r) t) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK' := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hK := kOK_K2 hK'
  have hu' := K2_of hu
  refine hoareG_callA (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hS) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hvalid
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk := gk_plainA hF hfs hgwE hok hu' hvs (hA vs hvs) hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    refine ⟨fun _ => ⟨hK.congr _ st _ (K2_mk hk) rfl rfl rfl rfl, v, ?_, fun y hy => ?_⟩,
      fun r hr => by cases hr⟩
    · rw [ev_lv]; exact lk_set_self _ _ _
    · exact lk_set_ne _ _ (Ne.symm hy)
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := gk_plainA hF hfs hgwE hok hu' hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ (K2_mk (b := true) hk) (Nat.zero_le _)) rfl rfl rfl rfl

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_decCallS2
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_callAsgS2
