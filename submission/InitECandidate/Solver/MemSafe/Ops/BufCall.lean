import InitECandidate.Solver.MemSafe.Ops.Charge
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Plain calls with buffer arguments (sonnet-ops)

`gk_plainA` is `gk_plain` with the "all parameters unconstrained" clause of `PlainOK` replaced by
an argument-fit hypothesis `hA` stated on the `GK` run (`RunT` / `ChainL` / `ChainE`).
`hl_decCallA` / `hl_callA` are the corresponding Hoare steps for a callee of the merged fold table
`ShardsJL.tab26` (summary `tabJL_guestR`), status-preserving.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

/-- `PlainOK` without the "parameters are `any`" clause. -/
def PlainOKB (E : GEnv) (f : MlS) (sg : Sig) (cs : List Cap) (n : Nat) : Prop :=
  sg.params.length = n ∧ (∀ g ∈ sg.gw, g ∈ E.gw) ∧
    nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw ∧ JrOut sg.gw ∧ f ∈ E.fp ∧ (∀ c ∈ cs, CapEv c ∨ CapSt c) ∧
    ∀ k ∈ evKs cs, 8 * k + 8 ≤ 280 ∧ k ∉ ksBad

instance (E : GEnv) (f : MlS) (sg : Sig) (cs : List Cap) (n : Nat) :
    Decidable (PlainOKB E f sg cs n) := by unfold PlainOKB; infer_instance

theorem gk_plainA {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {E : GEnv} (hgw : ∀ g ∈ E.gw, g ∈ gw) {f : MlS} {sg : Sig}
    {cs : List Cap} {args : List (ExpHOL 64)} (hok : PlainOKB E f sg cs args.length)
    {d : Nat} {u0 : State σ} (hu : GK H gw Γ0 s0 p0 fs d u0) {vs : List (ValueHOL 64)}
    (hvs : evs u0 args = some vs)
    (hA : ∀ (Γ1 : Gam) (p1 : Ptrs), RunT guestC H gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs
      (callEntryStateHOLFinite u0 callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u0 callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    GK H gw Γ0 s0 p0 fs d st := by
  obtain ⟨hlen, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -⟩ := kc_core hF hfs
    (fun g h => hgw g (hsgw g h)) ⟨hev, hcc⟩ hjo (ks := evKs cs)
    (fun k hk => (hks k hk).1)
    (fun j hj hjk => (hks j hjk).2 (ksBad_3 j hj))
    (fun k hk hkx => (hks k hk).2 (ksBad_X k hkx))
    hrun hch hE hJ hR hfk hg hna
    (hA Γ1 p1 hrun hch hE)
    (reqOK_cs hG1 hJ hevo hcs)
    (fun a _ hw => capPW_cs (vs := vs) hF ((G_locFree hF.hooks u0 _ _).mpr hG1) hcs
      (fun k hk => (hks k hk).1) hw)
    (Or.inl ⟨fun h => (hks 8 h).2 (by decide), fun h => (hks 24 h).2 (by decide)⟩)
    (Or.inl ⟨fun h => (hks 18 h).2 (by decide), fun h => (hks 27 h).2 (by decide)⟩)
  refine ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩
  rw [hact2]; omega

/-- `var rn = f(args); p` for a fold-table callee with fitting-argument obligation `hA`. -/
theorem hl_decCallA {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {rn : MlS} {sh : ShapeHOL} {p : ProgHOL 64} {d : Nat} {b' : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hcont : ∀ t : State σ, GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t →
      t.locals = u0.locals → ∀ v : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun s => s = setVarHOLFinite rn v t) p
        (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args p)
      (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
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
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    exact hoareG_conseq (hcont { st with locals := s.locals } (hK.congr _ st _ hk rfl rfl rfl rfl) rfl v hsh)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

end InitECandidate.Solver.MemSafe.Frames
