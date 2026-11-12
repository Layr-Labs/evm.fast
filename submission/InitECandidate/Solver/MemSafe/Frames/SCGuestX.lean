import InitECandidate.Solver.MemSafe.Frames.SCGuestJL
import InitECandidate.Solver.MemSafe.Frames.LogSub
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# `start_child` with the guest chain extension `GP` / `GR` (frames8, task 3)

The generic `sc_sumSpecT` (SCSpecT.lean) carries an abstract extension (`P`, `R`, the entry fact
`XP`) with two obligations, `KeepEH` (the runs before `frame_open` keep it) and `PushEH` (the
pushed chain's extension at the end of the record stores). Here they are discharged for the
guest extension (`ChainXG.lean`):

* **`XPG Γ s fs cm cmark cmm`**: `ChainE GP GR Γ s fs`; the child message `cm` is a `Γ` MSG
  object; its CALLER / CURRENT_TARGET blocks (`cm + 16`, `cm + 32`) are `BufOK 20`; the parent
  (head of `fs`) is `XAbove` the child's marks `cmark` / `cmm`.
* `xKeep_of_protKeepS`, `msgKeep_of_protKeepS`: a run keeping the `prot` cells outside the state
  objects keeps the cells the extension reads (EV slots 11 / 14 / 17 are `prot`, EV and MSG
  objects are not state objects).
* **`chainE_keepT`**, **`keepEH_guest`**, **`pushEH_guest`**.
* **`sc_sumSpecX_guest`** / **`sc_sumSpecX_guestR`**: `start_child`'s footprint-free summary with
  precondition `PreSCX … NewPreG XPG` and post `QSCX … GP GR` (the child pushed onto a `ChainX`),
  from `frame_start`'s summary with Pre `PreInvX … GP GR` and post `QLeX … GP GR`.
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-- **The guest's entry facts of the extension at `start_child`.** -/
def XPG (Γ : Gam) (s : State σ) (fs : List Frame) (cm cmark cmm : BitVec 64) : Prop :=
  ChainE GP GR Γ s fs ∧ (∃ M, MsgObj Γ cm M) ∧
  (∀ p, ptrsOf s = some p → ∀ k ∈ msgXOffs, BufOK guestC Γ p (fld s.memory cm k).toNat 20) ∧
  (∀ f, fs.head? = some f → XAbove Γ s.memory cmark.toNat cmm.toNat f)

theorem guestSt_msgTys : ∀ t ∈ msgTys, guestSt t = false := by decide

/-- The message records' `prot` cells survive a run keeping the non-state `prot` cells. -/
theorem msgKeep_of_protKeepS {Γ : Gam} {s t : State σ}
    (hk : ProtKeep guestC (nst guestSt Γ) s t) : MsgKeep guestC Γ s.memory t.memory := by
  intro o ho hot j hj hp
  have h := hk _ (protCell_nst (St := guestSt) ho (guestSt_msgTys _ hot) hj hp)
  unfold rd
  rw [h]

/-- **The cells the extension reads survive a run keeping the non-state `prot` cells.** -/
theorem xKeep_of_protKeepS {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {p : Ptrs} {Γ : Gam}
    (hL : Layout guestC p Γ) {s t : State σ} (hk : ProtKeep guestC (nst guestSt Γ) s t)
    {f : Frame} (hf : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) :
    XKeep guestC Γ s.memory t.memory f := by
  obtain ⟨o, ho, hob, hot⟩ := hf
  have hsz := ev_size hF hL ho hot
  refine ⟨fun j hj => ?_, msgKeep_of_protKeepS hk⟩
  have hj' : j ≤ 28 := by simp [evXSlots] at hj; omega
  have hpr : (guestC.ty tEV).slot j = .prot := by
    simp only [evXSlots, List.mem_cons, List.mem_nil_iff, or_false] at hj
    rcases hj with rfl | rfl | rfl | rfl | rfl <;> decide
  rw [← hob]
  have h := hk _ (protCell_nst (St := guestSt) ho (by rw [hot]; exact guestSt_frames.1)
    (k := j) (by unfold Obj.HasSlot; omega) (by rw [hot]; exact hpr))
  unfold Obj.cell at h
  unfold fld rd
  rw [h]

/-- **A run keeping the non-state `prot` cells keeps the guest extension of the chain.** -/
theorem chainE_keepT {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) {gw : List MlS}
    {Γ Γ1 : Gam} {s t : State σ} {p p1 : Ptrs} {fs : List Frame} (hG : G guestC H Γ s)
    (hch : ChainL guestC tEV tCK Γ s fs) (hrun : RunT guestC H gw Γ s Γ1 t p p1)
    (hk : ProtKeep guestC (nst guestSt Γ) s t) (hE : ChainE GP GR Γ s fs) :
    ChainE GP GR Γ1 t fs := by
  have ⟨q, hq, hord, hL, _⟩ := hG
  have hfk := framesKept_of_protKeepS hF guestSt_frames hL hch hk
  exact chainE_step xCfg_guest (gStep_of_runT hF guestSt_frames.1 hG hrun hk 0)
    (fun f hf => xKeep_of_protKeepS hF hL hk (ev_obj hch hf)) (fun f hf => ckX_of13 (hfk f hf).2) hE

theorem keepEH_guest {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) :
    KeepEH σ guestC H guestSt tEV tCK GP GR XPG :=
  fun hG hch hxp hrun hk => chainE_keepT hF hG hch hrun hk hxp.1

/-- **The push**: the new frame's `GP` (message from `frame_open`'s `NewX` and the entry's
`MsgObj`, address blocks from the entry's `BufOK`, log list and deletion table from `NewX`) and
the new pair's `GR` (the child's table is fresh, the parent's is allocated; the parent's
`XAbove` at the stored marks; the child's `CK_MSG` = `EV_MSG` = `cm`, frames9). -/
theorem pushEH_guest {H : Hooks σ} (hF : FrameCfg guestC H tEV tCK) :
    PushEH σ guestC H guestSt tEV tCK GP GR XPG := by
  intro gw Γ Γ2 s u p p2 fs rest cm cmark cmm e q e0 c0 hG hch hfs hxp hrun hk _ _ hnx h40 h48 h56
  have ⟨q0, hq0, hord, hL, _⟩ := hG
  have hpq : q0 = p := Option.some.inj (hq0.symm.trans hrun.1)
  subst q0
  obtain ⟨hE, ⟨M, hM⟩, hB, hXA⟩ := hxp
  have hE2 := chainE_keepT hF hG hch hrun hk hE
  have hext := hrun.2.2.2.1
  obtain ⟨x112, ⟨L, hL2, hLb, hLt, hLe⟩, ⟨D, hD2, hDb, hDt⟩, hDf, hMk⟩ := hnx
  have hmk := msgKeep_of_protKeepS hk
  have hhead : (e0, c0) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  refine chainE_push hE2 (fun p' hp' => ?_) (fun pa hpa => ?_)
  · obtain rfl := ptrs_some hrun.2.1 hp'
    have hmsg : msgOf u.memory (e, q) = cm := x112
    obtain ⟨M', hM', -⟩ := msgObj_ext hext hM
    refine ⟨⟨M', by rw [hmsg]; exact hM'⟩, fun k hk' => ?_,
      ⟨L, hL2, hLb, by rw [hLt]; decide, by rw [hLt]; rfl⟩, ⟨D, hD2, hDb, hDt⟩, hMk,
      logsG_of_lgEmp hLb hLe⟩
    rw [hmsg]
    obtain ⟨hMΓ, hMb, hMt, hMs⟩ := hM
    have hmt : M.ty ∈ msgTys := by rcases hMt with h' | h' <;> rw [h'] <;> decide
    have hpa := msg_addrProt hMt
    have hkeep : fld u.memory cm k = fld s.memory cm k := by
      simp only [msgXOffs, List.mem_cons, List.mem_nil_iff, or_false] at hk'
      rcases hk' with rfl | rfl
      · have := hmk M hMΓ hmt 2 (by unfold Obj.HasSlot; omega) hpa.1
        unfold fld; rw [← hMb]; exact this
      · have := hmk M hMΓ hmt 4 (by unfold Obj.HasSlot; omega) hpa.2
        unfold fld; rw [← hMb]; exact this
    rw [hkeep]
    exact bufOK_runT hG hrun (hB p hq0 k hk')
  · rw [hfs] at hpa
    simp only [List.head?_cons, Option.some.injEq] at hpa
    subst hpa
    have hxk := xKeep_of_protKeepS hF hL hk (ev_obj hch hhead)
    refine ⟨?_, ?_, h40.trans x112.symm⟩
    · have h136 : fld u.memory e0 136 = fld s.memory e0 136 := fld136_keep hxk
      show fld u.memory e 136 ≠ fld u.memory e0 136
      rw [h136]
      obtain ⟨-, -, -, ⟨D0, hD0, hD0b, -⟩, -⟩ := hE.1 p hq0 (e0, c0) hhead
      intro heq
      apply hDf
      have hb : fld u.memory e 136 = D0.base := heq.trans hD0b.symm
      rw [hb]
      have hpos := (lay_obj hL hD0).2.2.1
      exact obj_alloc hord hL hD0 (by unfold Obj.lo; exact le_refl _)
        (by unfold Obj.hi; omega)
    · have hmk' : mkOf u.memory q = cmark.toNat := by
        unfold mkOf; rw [show ckMark = 48 from rfl, h48]
      have hmm' : mmOf u.memory q = cmm.toNat := by
        unfold mmOf; rw [show ckMemMark = 56 from rfl, h56]
      show XAbove Γ2 u.memory (mkOf u.memory q) (mmOf u.memory q) (e0, c0)
      rw [hmk', hmm']
      exact xAbove_step hL hext hxk (hXA (e0, c0) (by rw [hfs]; rfl))

/-- **`start_child`'s summary over the guest chain extension.** -/
theorem sc_sumSpecX_guest {H : Hooks σ} {M : Nat} (hF : FoldOK σ X guestC H)
    (hD : DrvCfg guestC H tEV tCK) (hNH : Hooks.NewHooksL H)
    (hT : CTabSound σ X guestC H ShardsJL.tab26)
    (hds : StSum σ X guestC H guestSt (nm "destroy_storage") (sgB [Hooks.gJn]))
    (hinc : StSum σ X guestC H guestSt (nm "increment_nonce") (sgB [Hooks.gJn]))
    {gwS : List MlS} (hgJS : JrOut (gwS))
    (hfst : SumSpecT σ X guestC H (nm "frame_start") (sg0 gwS) (PreInvX guestC tEV tCK GP GR M)
      (QLeX guestC tEV tCK GP GR))
    (hfsE : NoEvm σ X (nm "frame_start")) :
    SumSpecT σ X guestC H (nm "start_child") (sgSC ([Hooks.gJn] ++ [] ++ gwS))
      (PreSCX guestC guestSt tEV tCK M NewPreG XPG) (QSCX guestC tEV tCK GP GR) := by
  have hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [] :=
    ctab% hT
  have hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [] :=
    ctab% hT
  have fp : ∀ f, f ∈ Shards.fptab26 → KeepsFp σ X f := fun f h => Shards.fptab_sound hF.hX f h
  refine sc_sumSpecT hF.hX hD guestSt_frames guestSt_blockTys (by decide) (by decide) ?_ newPreG_loc
    (fun _ _ _ _ _ h hpk hx => newPreG_keepS h hpk hx) hds (stSum_mac hF.hX hT) hinc
    (open_sumSpec_guest hF hD hNH hns (fp _ (by decide_cbv)) hcnt (fp _ (by decide_cbv))
      (fp _ (by decide_cbv)) (fp _ (by decide_cbv)))
    (noEvm_fopen hF.hX) (P := GP) (R := GR) (XP := XPG) (keepEH_guest hD.fc) (pushEH_guest hD.fc)
    hfst hfsE
  intro g hg
  simp only [List.cons_append, List.nil_append, List.append_nil, List.mem_cons, not_or]
  exact ⟨by rcases jrGs_cases hg with rfl | rfl <;> decide, hgJS g hg⟩

/-- **`start_child`'s summary over the guest chain extension for `guestHooksR`** (all callee
facts discharged except `frame_start`'s extended summary and its `NoEvm`). -/
theorem sc_sumSpecX_guestR {M : Nat} {gwS : List MlS} (hgJS : JrOut gwS)
    (hfst : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK GP GR M) (QLeX guestC tEV tCK GP GR))
    (hfsE : NoEvm σ guestCtx (nm "frame_start")) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "start_child")
      (sgSC ([Hooks.gJn] ++ [] ++ gwS)) (PreSCX guestC guestSt tEV tCK M NewPreG XPG)
      (QSCX guestC tEV tCK GP GR) :=
  sc_sumSpecX_guest Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.newHooksL_guestR
    tab26_guestR stSum_ds stSum_inc hgJS hfst hfsE

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.keepEH_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.pushEH_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecX_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecX_guestR
