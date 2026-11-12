import InitECandidate.Solver.MemSafe.Ops2.Win
import InitECandidate.Solver.MemSafe.Annot.DrvCfg

/-!
# Steps inside a heap window (sonnet-gk, step 1)

`WinI` is kept by `alloc`, by summarized callees (`win_step`) and restored by `heap_release`
(`winI_rel`). Hoare steps in the style of `hoareG_gkDec` / `hoareG_gkSumm` (exact-state
preconditions):

* `hoareG_winMark`: `var m = heap_mark(); k` from `GK d`, `k` from `WinI d st m Γ1 pm st`;
* `hoareG_winAlloc`: `var q = alloc(x); k`, the block `[q, q + x)` is `BufOK` for the new typing;
* `hoareG_winCall` / `hoareG_winDec`: `f(args); k` / `var v = f(args); k` for a tab26 callee with
  `cs = []`, `sg.gw = []`, `sg.grows = false`, and argument obligation `ArgsOK`;
* `hoareG_winRel`: `heap_release(x); k` from `GK d` again.
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

/-! ## Pure lemmas -/

theorem noGrow_trans {Γ Γ1 Γ2 : Gam} {p q : Ptrs} (h1 : NewFresh Γ Γ1 p p)
    (h2 : NewFresh Γ1 Γ2 q q) : NewFresh Γ Γ2 p p := by
  intro o ho a ha1 ha2
  rcases h2 o ho a ha1 ha2 with ⟨o1, ho1, hb1, ht1, hl1, hh1⟩ | hf
  · rcases h1 o1 ho1 a hl1 hh1 with ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ | hf
    · exact Or.inl ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hl0, hh0⟩
    · exact Or.inr hf
  · exfalso; unfold Fresh at hf; omega

/-- **After the release every object of `Γc` is live**: heap objects are below the mark (no new
object), the others are unchanged. -/
theorem live_rel {Γ1 Γc : Gam} {pm pc : Ptrs} (hL1 : Layout guestC pm Γ1)
    (hLc : Layout guestC pc Γc) (hordc : pc.Ordered) (hnf : NewFresh Γ1 Γc pm pm) :
    ∀ o ∈ Γc, (guestC.ty o.ty).region.Live ⟨pm.hp, pc.fp, pc.sp⟩ o.lo o.size := by
  intro o ho
  obtain ⟨-, -, hpos, -, hlive⟩ := hLc.1 o ho
  revert hlive
  cases hr : (guestC.ty o.ty).region with
  | heap =>
      intro hlive
      unfold Region.Live at hlive ⊢
      refine ⟨hlive.1, ?_⟩
      show o.lo + o.size ≤ pm.hp
      have hlt : o.lo + o.size - 1 < 2 ^ 64 := by
        unfold Ptrs.Ordered at hordc
        have : heapEnd < 2 ^ 64 := by decide
        have := hlive.2
        omega
      have ha : (BitVec.ofNat 64 (o.lo + o.size - 1)).toNat = o.lo + o.size - 1 := by
        rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hlt
      rcases hnf o ho (BitVec.ofNat 64 (o.lo + o.size - 1)) (by rw [ha]; omega)
        (by rw [ha]; simp only [Obj.hi, Obj.lo] at *; omega) with
        ⟨o0, ho0, hb, ht, h3, h4⟩ | hf
      · have h0 := (hL1.1 o0 ho0).2.2.2.2
        rw [ht, hr] at h0
        unfold Region.Live at h0
        have hlo : o0.lo = o.lo := by unfold Obj.lo; rw [hb]
        rw [ha] at h4
        simp only [Obj.lo, Obj.hi] at *
        omega
      · exfalso; unfold Fresh at hf; omega
  | fmem => intro hlive; exact hlive
  | scratch => intro hlive; exact hlive

section win
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {d : Nat}
  {um : State σ} {m : BitVec 64} {Γc : Gam} {pc : Ptrs} {u : State σ}

/-- **The release**: the heap pointer goes back to the mark. -/
theorem winI_rel (hH : HooksLawful guestC H) {t : State σ}
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) (hm : t.memory = u.memory)
    (hg1 : t.globals.lookup gHeap = some (.val (.word m)))
    (hg2 : ∀ g, g ≠ gHeap → t.globals.lookup g = u.globals.lookup g)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    WinI H Γ0 s0 p0 fs d um m Γc ⟨m.toNat, pc.fp, pc.sp⟩ t := by
  obtain ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun, hPK, hfp, hnf⟩ := h
  have hGu := hrun.2.2.2.2.2.1
  have hpu := hrun.2.1
  have hpt : ptrsOf t = some ⟨m.toNat, pc.fp, pc.sp⟩ :=
    AllocImpl.ptrsOf_set (rg := .heap) hpu hg1 hg2
  obtain ⟨q1, hq1, hord1, hL1, -⟩ := hrun1.2.2.2.2.2.1
  obtain rfl : pm = q1 := Option.some.inj (hrun1.2.1.symm.trans hq1)
  obtain ⟨qc, hqc, hordc, hLc, -⟩ := id hGu
  obtain rfl : pc = qc := Option.some.inj (hpu.symm.trans hqc)
  have hmono : pm.Mono ⟨m.toNat, pc.fp, pc.sp⟩ :=
    ⟨le_of_eq hmk, le_of_eq hfp.symm, hrun.2.2.1.2.2⟩
  have hordr : (⟨m.toNat, pc.fp, pc.sp⟩ : Ptrs).Ordered := by
    unfold Ptrs.Ordered at hord1 hordc ⊢
    simp only at hord1 hordc ⊢
    omega
  have hGt : G guestC H Γc t :=
    G_reptr hH Annot.drv_allocG hGu hpt hordr (by rw [← hmk]; exact live_rel hL1 hLc hordc hnf) hm hd hbe
      (fun g h1 h2 h3 => hg2 g h1)
  refine ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, ⟨hrun.1, hpt, hmono, hrun.2.2.2.1,
    newFresh_mono (mono_refl pm) hmono hnf, hGt, fun g hg hgw => ?_,
    bkeep_congr rfl hm (bkeep_of_runT hrun)⟩, fun a ha => ?_, hfp, hnf⟩
  · have hne : g ≠ gHeap := by
      rintro rfl; exact (Annot.drv_allocG gHeap (Or.inl rfl)).1 hg
    rw [hg2 g hne]; exact hrun.2.2.2.2.2.2.1 g hg hgw
  · rw [hm]; exact hPK a ha

/-- **An allocator move** (memory unchanged, the heap pointer moves up, other globals kept). -/
theorem winI_alloc (hH : HooksLawful guestC H) {t : State σ} {pc' : Ptrs}
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) (hm : t.memory = u.memory)
    (hgl : ∀ g, g ≠ gHeap → t.globals.lookup g = u.globals.lookup g)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) (hpt : ptrsOf t = some pc')
    (hord' : pc'.Ordered) (hmono : pc.Mono pc') :
    WinI H Γ0 s0 p0 fs d um m Γc pc' t ∧ pc'.fp = pc.fp := by
  obtain ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun, hPK, hfp, hnf⟩ := h
  have hGu := hrun.2.2.2.2.2.1
  have hpu := hrun.2.1
  have hfpe : pc'.fp = pc.fp := by
    obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := AllocImpl.ptrsOf_some hpu
    obtain ⟨a', b', c', ha', hb', hc', rfl⟩ := AllocImpl.ptrsOf_some hpt
    have : gword t gFrame = gword u gFrame := by unfold gword; rw [hgl gFrame (by decide)]
    rw [this, hb] at hb'
    cases hb'
    rfl
  have hstep : RunT guestC H ([] : List MlS) Γc u Γc t pc pc' := by
    refine ⟨hpu, hpt, hmono, ext_refl Γc, fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩,
      Helpers.G_alloc hH Annot.drv_allocG hGu hpu hpt hord' hmono
        (fun g h1 _ _ => hgl g h1) hd hbe (fun a _ => by rw [hm]), fun g hg _ => ?_,
      bkeep_of_mem hm⟩
    have hne : g ≠ gHeap := by
      rintro rfl; exact (Annot.drv_allocG gHeap (Or.inl rfl)).1 hg
    exact hgl g hne
  refine ⟨⟨hu, Γ1, pm, hrun1, hch, hE, hmk, runT_trans hrun hstep, fun a ha => ?_,
    hfpe.trans hfp, hnf⟩, hfpe⟩
  rw [hm]; exact hPK a ha

/-- **A summarized callee inside the window** (`cs = []`, no globals written, no growth). -/
theorem win_step (hH : HooksLawful guestC H) {sg : Sig} (hgw : sg.gw = [])
    (hgr : sg.grows = false)
    (h : WinI H Γ0 s0 p0 fs d um m Γc pc u) {vs : List (ValueHOL 64)} {callee : Locs}
    {r : PanSemResultExact 64} {st : State σ}
    (hargs : ArgsOK guestC Γc pc sg.params vs)
    (hR : SumRelX guestC H sg (fun _ s Γ => ReqOK ([] : List Cap) s Γ)
      (fun vs s Γ a => ProtCell guestC Γ a ∧ CapPW ([] : List Cap) s Γ a)
      (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite u callee) r st)
    (hfk : st.globals.lookup gFrame = (callEntryStateHOLFinite u callee).globals.lookup gFrame)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    ∃ Γ2 p2, WinI H Γ0 s0 p0 fs d um m Γ2 p2 st := by
  obtain ⟨hu, Γ1, pm, hrun1, hch, hE, hmk, hrun, hPK, hfp, hnf⟩ := h
  obtain ⟨Γ2, p2, hrun2, hc, -⟩ := run_callT hH (fun g hg' => by rw [hgw] at hg'; cases hg')
    hrun hR hg hna hargs (fun c hc => absurd hc (by simp))
    (fun a ⟨_, c, hc, _⟩ => absurd hc (by simp))
  have hGu := hrun.2.2.2.2.2.1
  have hGe : G guestC H Γc (callEntryStateHOLFinite u callee) := (G_locFree hH u _ _).mpr hGu
  have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some pc := (ptrsOf_congr rfl).trans hrun.2.1
  obtain ⟨q, hq, hord, hL, -⟩ := id hGe
  obtain rfl : q = pc := Option.some.inj (hq.symm.trans hpe)
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γc a :=
    fun a ha => argCells_not_prot hord hL hargs ha
  refine ⟨Γ2, p2, hu, Γ1, pm, hrun1, hch, hE, hmk, hrun2, fun a ha => ?_,
    (fpQ_of_fp hfk q p2 hpe hc.2.1).trans hfp, noGrow_trans hnf (hc.2.2.2.2.2.2.2.2.1 hgr)⟩
  have h1 : st.memory a = (callEntryStateHOLFinite u callee).memory a :=
    sumCore_protW (PW := fun _ => False) hc hGe hac
      (fun a' _ hw => by obtain ⟨c, hc', -⟩ := hw.2; exact absurd hc' (by simp)) a
      (protCell_ext hrun.2.2.2.1 ha) (fun h => h)
  rw [h1]; exact hPK a ha

end win

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.noGrow_trans
#print axioms InitECandidate.Solver.MemSafe.Frames.live_rel
#print axioms InitECandidate.Solver.MemSafe.Frames.winI_rel
#print axioms InitECandidate.Solver.MemSafe.Frames.winI_alloc
#print axioms InitECandidate.Solver.MemSafe.Frames.win_step
