import InitECandidate.Solver.MemSafe.Ops.ExtCode
import InitECandidate.Solver.MemSafe.Ops3.CopyBuf
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Plain calls that also keep the unlisted running-EV slots (sonnet-mem3)

`gk_plainAK` is `Ops.gk_plainA` (BufCall.lean) with the extra conclusion of `kc_coreK`: every
running-EV `prot` slot not in the callee's capabilities is unchanged.  `hoareG_gkCallAK` /
`hoareG_gkDecAK` are the statement / declaration call rules for a fold-table callee built on it
(any depth `d`, the continuation sees the slot fact).
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

theorem gk_plainAK {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS} {Γ0 : Gam}
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
    GK H gw Γ0 s0 p0 fs d st ∧
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld st.memory e (8 * j) = fld u0.memory e (8 * j)) := by
  obtain ⟨hlen, hsgw, hev, hcc, hjo, -, hcs, hks⟩ := hok
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  obtain ⟨o, hevo, -⟩ := gk_head hfs hch
  have hG1 := hrun.2.2.2.2.2.1
  obtain ⟨Γ2, p2, hrun2, hch2, hE2, hΦ2, hJ2, hact2, -, hkE, -⟩ := kc_coreK hF hfs
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
  refine ⟨⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, by omega, ?_⟩, hkE⟩
  rw [hact2]; omega

section
variable {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

/-- `f(args); k` for a fold-table callee: `k` also sees the unchanged unlisted `prot` slots. -/
theorem hoareG_gkCallAK {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {d : Nat} {b' : Bool} {k : ProgHOL 64}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals →
      GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld t.memory e (8 * j) = fld u0.memory e (8 * j)) →
      HoareG σ guestCtx (fun s => s = t) k
        (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k)
      (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hspec := tabJL_guestR (σ := σ) f sg cs hmem
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧
        GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t ∧
        (∀ j ∈ evProtSlots, j ∉ evKs cs → fld t.memory e (8 * j) = fld u0.memory e (8 * j))) ∧
      ∀ r, ro = some r → ¬ Abortive r → GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (rbd r) t)
    (hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
      (FunSpec.and (sumSpecA_relX hspec) hfpm) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2.1 (ht.1 rfl).2.2)
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    obtain ⟨hk1, hsl⟩ := gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR
      (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, hK.congr _ st _ hk1 rfl rfl rfl rfl, hsl⟩, fun r hr => by cases hr⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk1 := (gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna).1
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk1 (Nat.zero_le _)) rfl rfl rfl rfl

/-- `var rn = f(args); p` for a fold-table callee: `p` also sees the unchanged `prot` slots. -/
theorem hoareG_gkDecAK {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {rn : MlS} {sh : ShapeHOL} {p : ProgHOL 64} {d : Nat} {b' : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hcont : ∀ t : State σ, GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld t.memory e (8 * j) = fld u0.memory e (8 * j)) →
      ∀ v : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ guestCtx (fun s => s = setVarHOLFinite rn v { t with locals := u0.locals }) p
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
    obtain ⟨hk1, hsl⟩ := gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR
      (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact hoareG_conseq (hcont st hk1 hsl v hsh)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk1 := (gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna).1
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk1 (Nat.zero_le _)) rfl rfl rfl rfl

/-- `hoareG_gkDecAK` with an extra value specification of the callee. -/
theorem hoareG_gkDecAKV {f : MlS} {sg : Sig} {cs : List Cap}
    (hmem : (f, sg, cs) ∈ ShardsJL.tab26) (hfpm : KeepsFp σ guestCtx f)
    (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length)
    (hgwE : ∀ g ∈ E.gw, g ∈ gw) {rn : MlS} {sh : ShapeHOL} {p : ProgHOL 64} {d : Nat} {b' : Bool}
    {Rv : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hv : FunSpec σ guestCtx f Rv)
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs)
    (hcont : ∀ t : State σ, GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs d t →
      (∀ j ∈ evProtSlots, j ∉ evKs cs → fld t.memory e (8 * j) = fld u0.memory e (8 * j)) →
      ∀ v : ValueHOL 64, shapeEqHOL (shapeOfHOLExact v) sh = true →
      (∃ vs callee st, evs u0 args = some vs ∧
        Rv vs (callEntryStateHOLFinite u0 callee) (.returned v) st) →
      HoareG σ guestCtx (fun s => s = setVarHOLFinite rn v { t with locals := u0.locals }) p
        (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args p)
      (GQ (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  have hspec := tabJL_guestR (σ := σ) f sg cs hmem
  refine hoareG_decCall (R := fun vs s r t => (SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame)) ∧
      Rv vs s r t)
    (FunSpec.and (FunSpec.and (sumSpecA_relX hspec) hfpm) hv) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨⟨hR, hfk⟩, hRv⟩ _ hsh
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    obtain ⟨hk1, hsl⟩ := gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR
      (hfk hg (not_abortive_ret v)) hg (not_abortive_ret v)
    exact hoareG_conseq (hcont st hk1 hsl v hsh ⟨vs, callee, st, hvs, hRv⟩)
      (fun _ _ h => h) fun r t _ _ hq => gq_loc hK hq _
  · intro s _ hs vs hvs callee r st ⟨⟨hR, hfk⟩, _⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk1 := (gk_plainAK hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna).1
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk1 (Nat.zero_le _)) rfl rfl rfl rfl

end

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gk_plainAK
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkCallAK
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkDecAK
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_gkDecAKV
