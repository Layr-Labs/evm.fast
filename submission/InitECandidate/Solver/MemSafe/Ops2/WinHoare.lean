import InitECandidate.Solver.MemSafe.Ops2.WinSteps
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# Hoare steps for the heap window on `GK` (sonnet-gk, step 1)

CPS steps in the style of `hoareG_gkDec` (exact-state preconditions; the final post is
`GQ KJ b'`). `WJ d um m Γc pc u` is `WinI` at `guestHooksR`.

* `hoareG_winMark`, `hoareG_winAlloc`, `hoareG_winCall`, `hoareG_winDec`, `hoareG_winRel`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 400000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem winI_mark {H : Hooks σ} (hH : HooksLawful guestC H) {Γ0 : Gam} {s0 : State σ}
    {p0 : Ptrs} {fs : List Frame} {d : Nat} {u0 st : State σ} {m : BitVec 64}
    (hu : GK H [Hooks.gJn] Γ0 s0 p0 fs d u0) (hgw : gword u0 gHeap = some m)
    (hm : st.memory = u0.memory)
    (hg : st.globals = u0.globals) (hd : st.memaddrs = u0.memaddrs) (hbe : st.be = u0.be) :
    ∃ (Γ1 : Gam) (pm : Ptrs), WinI H Γ0 s0 p0 fs d st m Γ1 pm st := by
  have hu' := hu
  obtain ⟨⟨hJ, Γ1, p1, hrun, hch, hE⟩, hΦ, hact⟩ := hu
  obtain ⟨a, b, c', ha, hb, hc, hp1⟩ := AllocImpl.ptrsOf_some hrun.2.1
  obtain rfl : a = m := Option.some.inj (ha.symm.trans hgw)
  have hG1 := hrun.2.2.2.2.2.1
  have hGst : G guestC H Γ1 st := G_congr hH hm hg hd hbe hG1
  have hpst : ptrsOf st = some p1 := (ptrsOf_congr hg).trans hrun.2.1
  refine ⟨Γ1, p1, (kOK_gk hH).congr _ _ _ hu' hm hg hd hbe, Γ1, p1,
    runT_same hH hrun hm hg hd hbe, chainL_congr hm hg hch, chainE_congr hm hg hE,
    by rw [hp1], runT_refl hGst hpst, fun a _ => rfl, rfl,
    fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩⟩

section steps
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
  {rest : List Frame}

local notation "KJ" => GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs
local notation "WJ" => WinI (Hooks.guestHooksR (σ := σ)) Γ0 s0 p0 fs

/-- **`var m = heap_mark(); k`**. -/
theorem hoareG_winMark (hfs : fs = (e, c) :: rest) {d : Nat} {u0 : State σ} (hu : KJ d u0)
    {rn : MlS} {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ (st : State σ) (m : BitVec 64) (Γ1 : Gam) (pm : Ptrs),
      WJ d (setVarHOLFinite rn (.val (.word m)) { st with locals := u0.locals }) m Γ1 pm
        (setVarHOLFinite rn (.val (.word m)) { st with locals := u0.locals }) →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word m))
        { st with locals := u0.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "heap_mark") [] k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hf := funSpec_and (markSpec'_heap_mark (σ := σ) guestCtx_code) (funSpec_be' (nm "heap_mark"))
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨⟨-, Γ1, p1, hrun, -⟩, -⟩ := id hu
    obtain ⟨a, -, -, ha, -, -, -⟩ := AllocImpl.ptrsOf_some hrun.2.1
    have hv' := mark_val_word (hv v rfl) ha
    subst hv'
    obtain ⟨Γ1', pm, hW⟩ := winI_mark hF.hooks hu ha
      (st := setVarHOLFinite rn (.val (.word a)) { st with locals := s.locals }) hm hg hd hbe
    exact hoareG_conseq (hk st a Γ1' pm hW) (fun _ _ h => h) fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, -⟩ := hR (good_of_abn habn) hvs0
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ (kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ hu hm hg hd hbe)
      (Nat.zero_le _)) _

/-- **`var q = alloc(x); k`**: the block is writable for the new typing. -/
theorem hoareG_winAlloc (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64}
    {Γc : Gam} {pc : Ptrs} {u0 : State σ} (hw : WJ d um m Γc pc u0) {x : ExpHOL 64}
    {N : BitVec 64} (hx : ev u0 x = some (.val (.word N))) {rn : MlS} {k : ProgHOL 64}
    {b' : Bool}
    (hk : ∀ (st : State σ) (q : BitVec 64) (pc' : Ptrs),
      WJ d um m Γc pc' (setVarHOLFinite rn (.val (.word q)) { st with locals := u0.locals }) →
      q.toNat % 8 = 0 → BufOK guestC Γc pc' q.toNat N.toNat →
      HoareG σ guestCtx (fun t => t = setVarHOLFinite rn (.val (.word q))
        { st with locals := u0.locals }) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn .one (nm "alloc") [x] k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hf := funSpec_and (allocSpec_alloc (σ := σ) guestCtx_code) (funSpec_be' (nm "alloc"))
  obtain ⟨hGu, hpu⟩ := winI_G hw
  obtain ⟨qq, hqq, hordc, hLc, -⟩ := id hGu
  obtain rfl : pc = qq := Option.some.inj (hpu.symm.trans hqq)
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, hret⟩ :=
      hR (by simp [Good]) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨q, hv, hq8, hlive, hnotal⟩ := hret v rfl
    subst hv
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw
      (t := setVarHOLFinite rn (.val (.word q)) { st with locals := s.locals }) hm hgl hd hbe hp'
      hord' hmono
    have hbuf : BufOK guestC Γc p' q.toNat N.toNat := by
      rintro a ⟨ha8, hl, hh⟩
      right
      refine ⟨fun hin => ?_, Helpers.allocated_of_live hlive (by omega) (by omega)⟩
      exact hnotal a.toNat (by omega) (by omega) (Helpers.allocated_of_inObj hLc hin)
    exact hoareG_conseq (hk st q p' hW hq8 hbuf) (fun _ _ h => h)
      fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hP
    have hvs' : vs = [.val (.word N)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hgl, p', hp', hord', hmono, -⟩ :=
      hR (good_of_abn habn) N pc hvs' ((ptrsOf_congr rfl).trans hpu) hordc
    have hd : st.memaddrs = s.memaddrs := hctx.2.1.trans hs.2.1.symm
    obtain ⟨hW, -⟩ := winI_alloc hF.hooks hw hm hgl hd hbe hp' hord' hmono
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kok_loc kOK_KJ (kOK_KJ.mono _ _ _ (gk_of_win hF hfs hW) (Nat.zero_le _)) _

/-- **`f(args); k`** for a plain `tab26` callee (`cs = []`, no globals, no growth) inside a
window. -/
theorem hoareG_winCall (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false) (hmem : (f, sg, ([] : List Cap)) ∈ ShardsJL.tab26)
    (hfp : KeepsFp σ guestCtx f) {args : List (ExpHOL 64)} {k : ProgHOL 64} {b' : Bool}
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0)
    (hargs : ∀ vs, evs u0 args = some vs → ArgsOK guestC Γc pc sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals → (∃ Γ2 p2, WJ d um m Γ2 p2 t) →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD f args) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := tabJL_guestR (σ := σ) f sg [] hmem
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧
        ∃ Γ2 p2, WJ d um m Γ2 p2 t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD (FunSpec.and (sumSpecA_relX hspec) hfp) ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)
  · intro u _ hu vs hvs callee v st ⟨hR, hfk⟩ _
    subst hu
    obtain ⟨Γ2, p2, hw2⟩ := win_step hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact ⟨fun _ => ⟨rfl, Γ2, p2, winI_congr hF.hooks hw2 rfl rfl rfl rfl⟩,
      fun r hr => by cases hr⟩
  · intro u _ hu vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hu
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨Γ2, p2, hw2⟩ := win_step hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ (gk_of_win hF hfs hw2) rfl rfl rfl rfl)
      (Nat.zero_le _)

/-- **`var v = f(args); k`** for a plain `tab26` callee inside a window. -/
theorem hoareG_winDec (hfs : fs = (e, c) :: rest) {f : MlS} {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false) (hmem : (f, sg, ([] : List Cap)) ∈ ShardsJL.tab26)
    (hfp : KeepsFp σ guestCtx f) {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL}
    {k : ProgHOL 64} {b' : Bool}
    {d : Nat} {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u0 : State σ}
    (hw : WJ d um m Γc pc u0)
    (hargs : ∀ vs, evs u0 args = some vs → ArgsOK guestC Γc pc sg.params vs)
    (hk : ∀ t : State σ, t.locals = u0.locals → ∀ v : ValueHOL 64,
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      (∃ Γ2 p2, WJ d um m Γ2 p2 (setVarHOLFinite rn v t)) →
      HoareG σ guestCtx (fun s => s = setVarHOLFinite rn v t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.decCall rn sh f args k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := tabJL_guestR (σ := σ) f sg [] hmem
  refine hoareG_decCall (FunSpec.and (sumSpecA_relX hspec) hfp) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hfk⟩ _ hsh
    subst hs
    obtain ⟨Γ2, p2, hw2⟩ := win_step hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (by simp [Good]) (not_abortive_ret v)) (by simp [Good]) (not_abortive_ret v)
    exact hoareG_conseq (hk { st with locals := s.locals } rfl v hsh
      ⟨Γ2, p2, winI_congr hF.hooks hw2 rfl rfl rfl rfl⟩) (fun _ _ h => h)
      fun r t _ _ hq => gq_loc kOK_KJ hq _
  · intro s _ hs vs hvs callee r st ⟨hR, hfk⟩ _ habn
    subst hs
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    obtain ⟨Γ2, p2, hw2⟩ := win_step hF.hooks hgw hgr hw (hargs vs hvs) hR
      (hfk (good_of_abn habn) hna) (good_of_abn habn) hna
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ (gk_of_win hF hfs hw2) rfl rfl rfl rfl)
      (Nat.zero_le _)

/-- **`heap_release(x); k`**: `GK d` again. -/
theorem hoareG_winRel (hfs : fs = (e, c) :: rest) {d : Nat} {um : State σ} {m : BitVec 64}
    {Γc : Gam} {pc : Ptrs} {u0 : State σ} (hw : WJ d um m Γc pc u0) {x : ExpHOL 64}
    (hx : ev u0 x = some (.val (.word m))) {k : ProgHOL 64} {b' : Bool}
    (hk : ∀ t : State σ, t.locals = u0.locals → KJ d t →
      HoareG σ guestCtx (fun s => s = t) k (GQ (KJ) b')) :
    HoareG σ guestCtx (fun t => t = u0) (.seq (callD (nm "heap_release") [x]) k) (GQ (KJ) b') := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hspec := funSpec_and (releaseSpec_heap_release (σ := σ) guestCtx_code)
    (funSpec_be' (nm "heap_release"))
  refine hoareG_seq (R := fun ro t => (ro = none → t.locals = u0.locals ∧ KJ d t) ∧
      ∀ r, ro = some r → ¬ Abortive r → KJ (rbd r) t)
    (hoareG_callD hspec ?_ ?_)
    (fun r t _ hr _ h => ⟨fun h0 => absurd h0 hr, h.2⟩)
    (hoareG_pt fun t ht => hk t (ht.1 rfl).1 (ht.1 rfl).2)
  · intro u hu0 hu vs hvs callee v st ⟨hR, hbe⟩ hctx
    subst hu
    have hvs' : vs = [.val (.word m)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg1, hg2⟩ := hR (by simp [Good]) m hvs'
    have hd : st.memaddrs = u.memaddrs := hctx.2.1.trans hu0.2.1.symm
    have hW := winI_rel hF.hooks hw hm hg1 hg2 hd hbe
    exact ⟨fun _ => ⟨rfl, kOK_KJ.congr _ _ _ (gk_of_win hF hfs hW) rfl rfl rfl rfl⟩,
      fun r hr => by cases hr⟩
  · intro u hu0 hu vs hvs callee r st ⟨hR, hbe⟩ hctx habn
    subst hu
    have hvs' : vs = [.val (.word m)] := by
      rw [evs_cons hx evs_nil] at hvs; simp only [Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg1, hg2⟩ := hR (good_of_abn habn) m hvs'
    have hd : st.memaddrs = u.memaddrs := hctx.2.1.trans hu0.2.1.symm
    have hW := winI_rel hF.hooks hw hm hg1 hg2 hd hbe
    refine ⟨fun h0 => (by cases h0), fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'; subst hr'
    rw [rbd_abn habn]
    exact kOK_KJ.mono _ _ _ (kOK_KJ.congr _ _ _ (gk_of_win hF hfs hW) rfl rfl rfl rfl)
      (Nat.zero_le _)

end steps

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.winI_mark
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winMark
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winAlloc
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winCall
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winDec
#print axioms InitECandidate.Solver.MemSafe.Frames.hoareG_winRel
