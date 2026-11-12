import InitECandidate.Solver.MemSafe.Ops.Tstore
import InitECandidate.Solver.Band3.All

set_option autoImplicit false

/-!
# Library for the storage / selfdestruct handlers (sonnet-store3)

* `hl_callS` / `hl_decCallS`: `hl_callA` / `hl_decCallA` with the summary given as a `CSumm`
  hypothesis instead of a `tab26` membership;
* `gk_rebase_tgt`: at `var target = <current target>` start a fresh `GK` whose base is the current
  state and whose witnesses are the current ones; `BufOK` of the target pointer holds there (from
  the chain extension) and is carried by `bufOK_runT`; `gk_rebase_back` converts back.
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

/-- `f(args); ...` for a callee with a given `CSumm` (`hl_callA` with the summary explicit). -/
theorem hl_callS {f : MlS} {sg : Sig} {cs : List Cap}
    (hS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hfpm : KeepsFp σ guestCtx f)
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) {args : List (ExpHOL 64)}
    {E : GEnv} (hok : PlainOKB E f sg cs args.length) (hgwE : ∀ g ∈ E.gw, g ∈ gw) {b : Bool}
    {u0 : State σ} (hu : GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs (bd b) u0)
    (hA : ∀ vs, evs u0 args = some vs → ∀ (Γ1 : Gam) (p1 : Ptrs),
      RunT guestC (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 Γ1 u0 p0 p1 →
      ChainL guestC tEV tCK Γ1 u0 fs → ChainE GP GR Γ1 u0 fs → ArgsOK guestC Γ1 p1 sg.params vs) :
    HoareG σ guestCtx (fun t => t = u0) (callD f args)
      (HL (GK (Hooks.guestHooksR (σ := σ)) gw Γ0 s0 p0 fs) b u0.locals) := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK := kOK_gk (σ := σ) (H := Hooks.guestHooksR) hF.hooks (gw := gw) (Γ0 := Γ0)
    (s0 := s0) (p0 := p0) (fs := fs)
  refine hoareG_callD (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hS) hfpm) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _
    subst hs
    have hg : Good (some (.returned v)) := by simp [Good]
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk hg (not_abortive_ret v)) hg
      (not_abortive_ret v)
    exact ⟨⟨fun _ => hK.congr _ st _ hk rfl rfl rfl rfl, fun r hr => by cases hr⟩, fun _ => rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩, fun h0 => by cases h0⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    have hk := gk_plainA hF hfs hgwE hok hu hvs (hA vs hvs) hR (hfk (good_of_abn habn) hna)
      (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact hK.congr _ st _ (hK.mono _ _ _ hk (Nat.zero_le _)) rfl rfl rfl rfl

/-- `var rn = f(args); p` for a callee with a given `CSumm` (`hl_decCallA`). -/
theorem hl_decCallS {f : MlS} {sg : Sig} {cs : List Cap}
    (hS : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f sg cs)
    (hfpm : KeepsFp σ guestCtx f)
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
  refine hoareG_decCall (R := fun vs s r t => SumRelX guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun _ s Γ => ReqOK cs s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW cs s Γ a) (fun _ _ _ _ _ _ => True) vs s r t ∧
      (Good (some r) → ¬ Abortive r → t.globals.lookup gFrame = s.globals.lookup gFrame))
    (FunSpec.and (sumSpecA_relX hS) hfpm) ?_ ?_
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

/-! ## Rebasing -/

theorem tgtE_eq : Frames.tgtE = Band3.tgtE := rfl

/-- `OpA` at a `GK` state's own witnesses. -/
theorem opA_of_chain {Γ : Gam} {p : Ptrs} {u : State σ} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) (hp : ptrsOf u = some p) (hJ : JrNZ u)
    (hL : ChainL guestC tEV tCK Γ u fs) (hE : ChainE GP GR Γ u fs) : Band3.OpA u Γ p := by
  subst hfs
  obtain ⟨e', c', rest', hfs', hev, -, -⟩ := hL.chain
  simp only [List.cons.injEq, Prod.mk.injEq] at hfs'
  obtain ⟨⟨h1, h2⟩, -⟩ := hfs'
  subst h1 h2
  have hmem : (e, c) ∈ (e, c) :: rest := List.mem_cons_self ..
  obtain ⟨o, ho, hob, hot⟩ := (hL.objs _ hmem).1
  obtain ⟨⟨M, hM, hMb, hMt, hMs⟩, hbuf, -⟩ := hE.1 p hp _ hmem
  refine ⟨hJ, o, M, ho, hot, by rw [hob]; exact hev, hM, hMt, hMs, ?_, ?_⟩
  · have : rd u.memory (o.cell 14) = Frames.msgOf u.memory (e, c) := by
      unfold Obj.cell Frames.msgOf Frames.fld; rw [hob]
    rw [this]; exact hMb.symm
  · have := hbuf 32 (by simp [Frames.msgXOffs])
    have hc : M.cell 4 = Frames.msgOf u.memory (e, c) + BitVec.ofNat 64 32 := by
      unfold Obj.cell; rw [hMb]
    rw [hc]; exact this

theorem gk_rebase_tgt {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u)
    {v : ValueHOL 64} (hv : ev u Frames.tgtE = some v) :
    ∃ (Γd : Gam) (pd : Ptrs) (T : BitVec 64), v = .val (.word T) ∧
      GK H gw Γd u pd fs 0 u ∧ G guestC H Γd u ∧ BufOK guestC Γd pd T.toNat 20 ∧
      (∀ (d' : Nat) (t : State σ), GK H gw Γd u pd fs d' t → GK H gw Γ0 s0 p0 fs (d' + d) t) ∧
      RunT guestC H gw Γ0 s0 Γd u p0 pd := by
  obtain ⟨⟨hJ, Γd, pd, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  have hG := hrun.2.2.2.2.2.1
  have hA := opA_of_chain hfs hrun.2.1 hJ hch hE
  rw [tgtE_eq] at hv
  obtain ⟨T, rfl, hT⟩ := Band3.tgt_eval hA hv
  refine ⟨Γd, pd, T, rfl, ⟨⟨hJ, Γd, pd, runT_refl hG hrun.2.1, hch, hE⟩, by omega, Or.inl rfl⟩, hG, hT,
    ?_, hrun⟩
  rintro d' t ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, hΦ2, hact2⟩
  refine ⟨⟨hJ2, Γ2, p2, runT_trans hrun hrun2, hch2, hE2⟩, by omega, ?_⟩
  rcases hact2 with h | h
  · rcases hact with h' | h'
    · exact Or.inl (h.trans h')
    · exact Or.inr (by omega)
  · exact Or.inr (by omega)


theorem gk_rebase_key {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {d : Nat} {u : State σ} (hu : GK H gw Γ0 s0 p0 fs d u)
    {w : BitVec 64} (hw : gword u (nm "evm_key_buf") = some w) :
    ∃ (Γd : Gam) (pd : Ptrs), GK H gw Γd u pd fs 0 u ∧ G guestC H Γd u ∧
      BufOK guestC Γd pd w.toNat 32 ∧
      (∀ (d' : Nat) (t : State σ), GK H gw Γd u pd fs d' t → GK H gw Γ0 s0 p0 fs (d' + d) t) := by
  obtain ⟨⟨hJ, Γd, pd, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  have hG := hrun.2.2.2.2.2.1
  refine ⟨Γd, pd, ⟨⟨hJ, Γd, pd, runT_refl hG hrun.2.1, hch, hE⟩, by omega, Or.inl rfl⟩, hG,
    key_bufOK hG hrun.2.1 hw, ?_⟩
  rintro d' t ⟨⟨hJ2, Γ2, p2, hrun2, hch2, hE2⟩, hΦ2, hact2⟩
  refine ⟨⟨hJ2, Γ2, p2, runT_trans hrun hrun2, hch2, hE2⟩, by omega, ?_⟩
  rcases hact2 with h | h
  · rcases hact with h' | h'
    · exact Or.inl (h.trans h')
    · exact Or.inr (by omega)
  · exact Or.inr (by omega)

/-- Convert a rebased post back. -/
theorem gq_rebase {K K' : Nat → State σ → Prop} {dd : Nat} (hK : KOK K)
    (hb : ∀ d t, K' d t → K (d + dd) t) {b : Bool} {ro : Option (PanSemResultExact 64)}
    {t : State σ} (h : GQ K' b ro t) : GQ K b ro t := by
  refine ⟨fun h0 => hK.mono _ _ _ (hb _ _ (h.1 h0)) (Nat.le_add_right _ _),
    fun r hr hna => hK.mono _ _ _ (hb _ _ (h.2 r hr hna)) (Nat.le_add_right _ _)⟩

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_callS
#print axioms InitECandidate.Solver.MemSafe.Stor3.hl_decCallS
#print axioms InitECandidate.Solver.MemSafe.Stor3.gk_rebase_tgt
