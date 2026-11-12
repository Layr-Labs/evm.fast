import InitECandidate.Solver.MemSafe.Frames.SCSpecT
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.MemSafe.ShardsJL.AllR
import InitECandidate.Solver.MemSafe.WaveHelpers.RlpCount
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# `start_child` over the guest configuration after the fix (decision 2)

* `guestSt`: the guest state types (`tJOURNAL`, the table header types `hdrTys`, the scratch
  table arrays `tHTAs`, the owner-encoded types `≥ ownBase`).
* `newPreG_keepS`: `frame_new`'s precondition survives the weakened `ProtKeep`.
* `stSum_mac`: `mark_account_created`'s fold entry (`ShardsJL.tab26[395]`, type capabilities of
  the table types) as a state-object summary.
* **`sc_sumSpecT_guest`**: `sc_sumSpecT` over `guestC` with `frame_open` (`open_sumSpec_guest`)
  and `mark_account_created` discharged. Open inputs: the state-object summaries of
  `destroy_storage` and `increment_nonce` and the footprint-free summary of `frame_start`
  (with `NoEvm`).
* **`sc_sumSpecT_guestR`**: the same for the final hook family `guestHooksR` in the challenge
  context; the `frame_new` table facts come from the merged table `ShardsJL.tab26` (frames8: the
  old `ShardsJL.tab26` is no longer used; indices `mark_account_created` 395, `htab_new_scratch`
  568, `htab_count` 350) and `fptab26`.
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

/-- **The guest state types**: journal records, table headers, scratch table arrays, owner-encoded
(heap table array) types. -/
def guestSt (t : Nat) : Bool :=
  t == tJOURNAL || hdrTys.contains t || t == tHTAs || decide (ownBase ≤ t)

theorem guestSt_frames : guestSt tEV = false ∧ guestSt tCK = false := by decide

theorem guestSt_msg : guestSt tMSGh = false ∧ guestSt tMSGs = false := by decide

theorem guestSt_blockTys : ∀ t ∈ keepTys, guestSt t = false := by decide

theorem guestSt_own : ∀ t, ownBase ≤ t → guestSt t = true := by
  intro t h; simp [guestSt, h]

/-- `NewPreG` survives runs that keep the `prot` cells outside state objects and extend `Γ`. -/
theorem newPreG_keepS {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    (h : NewPreG vs s Γ) (hpk : ProtKeep guestC (nst guestSt Γ) s t) (hx : Ext Γ Γ') :
    NewPreG vs t Γ' := by
  obtain ⟨msg, rfl, ⟨o, ho, hb, ht, hsz⟩, hcn⟩ := h
  have hp15 : (guestC.ty o.ty).slot 15 = .prot := by
    rcases ht with h | h <;> rw [h]
    · exact msg_codeNProt.1
    · exact msg_codeNProt.2
  have hs : guestSt o.ty = false := by
    rcases ht with h | h <;> rw [h]
    · exact guestSt_msg.1
    · exact guestSt_msg.2
  have hk : o.HasSlot 15 := by unfold Obj.HasSlot; omega
  have he := hpk (o.cell 15) (protCell_nst ho hs hk hp15)
  obtain ⟨o', ho', hb', ht', hs'⟩ := hx o ho
  refine ⟨msg, rfl, ⟨o', ho', hb'.trans hb, by rw [ht']; exact ht, le_trans hsz hs'⟩, ?_⟩
  have hc : o.cell 15 = msg + BitVec.ofNat 64 120 := by unfold Obj.cell; rw [hb]
  rw [hc] at he
  unfold fld rd
  rw [he]
  exact hcn

/-- A summary with fewer writable protected globals. -/
theorem sumSpecA_gw {C : Cfg} {H : Hooks σ} {f : MlS} {ps : List PT} {rt : List RT}
    {gw gw' : List MlS} {g : Bool} (hsub : ∀ x, x ∈ gw → x ∈ gw')
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f ⟨ps, rt, gw, g⟩ Pre PW Q) :
    SumSpecA σ X C H f ⟨ps, rt, gw', g⟩ Pre PW Q := by
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  obtain ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, c8, c9, c10⟩, hq⟩ :=
    h vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs hpre
  exact ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, c7, fun x hx hx' => c8 x hx fun h => hx' (hsub x h),
    c9, c10⟩, hq⟩

/-- The capabilities of `mark_account_created`'s fold entry (all-cells type capabilities of the
table types). -/
def macCaps : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
   ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]

theorem macCaps_g : ∀ c ∈ macCaps, c.g = anyG := by decide

theorem macCaps_st : ∀ c ∈ macCaps, c.ks = [] ∧ (c.all = true → guestSt c.t = true) := by decide

/-- **`mark_account_created`'s fold entry as a state-object summary.** -/
theorem stSum_mac {H : Hooks σ} (hX : X.code.lookup = guestCode)
    (hT : CTabSound σ X guestC H ShardsJL.tab26) :
    StSum σ X guestC H guestSt (nm "mark_account_created") (sgB [Hooks.gJn]) := by
  have hc : CSumm σ X guestC H (nm "mark_account_created") ⟨[.buf 20], [], [], true⟩ macCaps :=
    ctab% hT
  have hs := stSum_of_csumm (St := guestSt) hc (Shards.fptab_sound hX _ (by decide_cbv))
    (fun _ _ _ _ c hc hne => absurd (macCaps_g c hc) hne) macCaps_st guestSt_own
  exact sumSpecA_gw (fun x h => by simp at h) hs

/-- **`start_child`'s summary over `guestC`** (decision 2), with `frame_open` and
`mark_account_created` discharged. -/
theorem sc_sumSpecT_guest {H : Hooks σ} {M : Nat} (hF : FoldOK σ X guestC H)
    (hD : DrvCfg guestC H tEV tCK) (hNH : Hooks.NewHooksL H)
    (hT : CTabSound σ X guestC H ShardsJL.tab26)
    (hds : StSum σ X guestC H guestSt (nm "destroy_storage") (sgB [Hooks.gJn]))
    (hinc : StSum σ X guestC H guestSt (nm "increment_nonce") (sgB [Hooks.gJn]))
    {gwS : List MlS} (hgJS : JrOut (gwS))
    (hfst : SumSpecT σ X guestC H (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) M)
      (QLeX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True)))
    (hfsE : NoEvm σ X (nm "frame_start")) :
    SumSpecT σ X guestC H (nm "start_child") (sgSC ([Hooks.gJn] ++ [] ++ gwS))
      (PreSCT guestC guestSt tEV tCK M NewPreG) (QSC guestC tEV tCK) := by
  have hns : CSumm σ X guestC H (nm "htab_new_scratch")
      ⟨[.eq 20, .eq 4], [.fits (.ptr tHTs20)], [], true⟩ [] :=
    ctab% hT
  have hcnt : CSumm σ X guestC H (nm "htab_count") { params := [.any], grows := false } [] :=
    ctab% hT
  have fp : ∀ f, f ∈ Shards.fptab26 → KeepsFp σ X f := fun f h => Shards.fptab_sound hF.hX f h
  refine sumSpecT_mono (sc_sumSpecT hF.hX hD guestSt_frames guestSt_blockTys (by decide) (by decide) ?_ newPreG_loc
    (fun _ _ _ _ _ h hpk hx => newPreG_keepS h hpk hx) hds (stSum_mac hF.hX hT) hinc
    (open_sumSpec_guest hF hD hNH hns (fp _ (by decide_cbv)) hcnt (fp _ (by decide_cbv))
      (fp _ (by decide_cbv)) (fp _ (by decide_cbv)))
    (noEvm_fopen hF.hX) (P := fun _ _ _ _ => True) (R := fun _ _ _ _ => True)
    (XP := fun _ _ _ _ _ _ => True) (@keepEH_triv _ _ _ _ _ _ _) (@pushEH_triv _ _ _ _ _ _ _)
    hfst hfsE)
    (fun _ _ _ h => preSCX_triv h) (fun _ _ _ _ _ _ _ h => qsc_of_X h)
  intro g hg
  simp only [List.cons_append, List.nil_append, List.append_nil, List.mem_cons, not_or]
  exact ⟨by rcases jrGs_cases hg with rfl | rfl <;> decide, hgJS g hg⟩

/-- The merged table `ShardsJL.tab26` is sound for the final hook family in the challenge
context. -/
theorem tab26_guestR : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) ShardsJL.tab26 :=
  ShardsJL.tab_soundR Rec.foldOK_guestR WaveHelpers.domLow_guestCtx

/-- **`start_child`'s summary for `guestHooksR`** in the challenge context. Open inputs: the
state-object summaries of `destroy_storage` and `increment_nonce`, the footprint-free summary of
`frame_start` and its `NoEvm` fact. -/
theorem sc_sumSpecT_guestR {M : Nat}
    (hds : StSum σ guestCtx guestC Hooks.guestHooksR guestSt (nm "destroy_storage") (sgB [Hooks.gJn]))
    (hinc : StSum σ guestCtx guestC Hooks.guestHooksR guestSt (nm "increment_nonce") (sgB [Hooks.gJn]))
    {gwS : List MlS} (hgJS : JrOut (gwS))
    (hfst : SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "frame_start") (sg0 gwS)
      (PreInvX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) M)
      (QLeX guestC tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True)))
    (hfsE : NoEvm σ guestCtx (nm "frame_start")) :
    SumSpecT σ guestCtx guestC Hooks.guestHooksR (nm "start_child") (sgSC ([Hooks.gJn] ++ [] ++ gwS))
      (PreSCT guestC guestSt tEV tCK M NewPreG) (QSC guestC tEV tCK) :=
  sc_sumSpecT_guest Rec.foldOK_guestR Hooks.drvCfg_guestHooksR Hooks.newHooksL_guestR
    tab26_guestR hds hinc hgJS hfst hfsE

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.stSum_mac
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecT_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecT_guestR
