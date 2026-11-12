import InitECandidate.Solver.MemSafe.Ops6.LogApp
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Call rules on `GKB` with an arbitrary post (sonnet-log)

`hoareG_gkCallBQ` / `hoareG_gkDecBQ`: `f(args);` / `var x = f(args); k` for a fold-table callee
with `grows = false` from a `GKB` state, with a post `Q` that may speak about the locals (needed by
a `while` invariant). The abnormal results only need `GK 0` of the callee's final state.
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

section
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "KB" => GKB (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs

theorem hoareG_gkCallBQ {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ [Hooks.gJn]) (hgr : sg.grows = false) {b n d : Nat}
    {u0 : State σ} (hu : KB b n d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → BufOK guestC Γ1 p1 b n →
      ArgsOK guestC Γ1 p1 sg.params vs)
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hret : ∀ t : State σ, t.locals = u0.locals → KB b n d t →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld t.memory e (8 * j) = fld u0.memory e (8 * j)) →
      Q none t)
    (hab : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → (¬ Abortive r → KJ 0 t) →
      Q (some r) t) :
    HoareG σ guestCtx (fun t => t = u0) (.call (some (none, none)) f args) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gkb (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs) (b := b) (n := n)
  have hKJ := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hspec := tabJL_guestR (σ := σ) f sg cs hmem
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hspec) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    obtain ⟨hk1, hsl⟩ := gk_plainAB hF hfs hgwE hok hgr hu hvs (hA vs hvs) hR
      (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact hret { st with locals := s.locals } rfl (hK.congr _ st _ hk1 rfl rfl rfl rfl) hsl
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine hab r _ habn fun hna => ?_
    have hk1 := (gk_plainAB hF hfs hgwE hok hgr hu hvs (hA vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna).1
    exact hKJ.congr _ st _ (hKJ.mono _ _ _ (gkb_gk hk1) (Nat.zero_le _)) rfl rfl rfl rfl

theorem hoareG_gkDecBQ {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ [Hooks.gJn]) (hgr : sg.grows = false) {b n d : Nat}
    {u0 : State σ} (hu : KB b n d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → BufOK guestC Γ1 p1 b n →
      ArgsOK guestC Γ1 p1 sg.params vs)
    {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hcont : ∀ st : State σ, KB b n d st →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) →
      ∀ v : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn v { st with locals := u0.locals }) k
        (fun r t => Q r { t with locals := t.locals.resVarEq (rn, u0.locals.lookup rn) }))
    (hab : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → (¬ Abortive r → KJ 0 t) →
      Q (some r) t) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) Q := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hKJ := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := [Hooks.gJn]) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hspec := tabJL_guestR (σ := σ) f sg cs hmem
  refine hoareG_decCall (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hspec) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    obtain ⟨hk1, hsl⟩ := gk_plainAB hF hfs hgwE hok hgr hu hvs (hA vs hvs) hR
      (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact hcont st hk1 hsl v hsh
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine hab r _ habn fun hna => ?_
    have hk1 := (gk_plainAB hF hfs hgwE hok hgr hu hvs (hA vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna).1
    exact hKJ.congr _ st _ (hKJ.mono _ _ _ (gkb_gk hk1) (Nat.zero_le _)) rfl rfl rfl rfl

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCallBQ
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkDecBQ
