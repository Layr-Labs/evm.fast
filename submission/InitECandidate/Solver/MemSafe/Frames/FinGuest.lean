import InitECandidate.Solver.MemSafe.Frames.FinRb
import InitECandidate.Solver.MemSafe.FpKeep
import InitECandidate.Solver.MemSafe.Shards.BaseCaps
import InitECandidate.Solver.MemSafe.Frames.ChainXG
import InitECandidate.Solver.MemSafe.Frames.LogSub

/-!
# `finish_child`: the callee facts from the fold (guest instances of `FinHyps` fields)

* `fpQ_of_fp`, `noEvm_of_escFree`, **`finSpec_of`**: a fold summary (`SumSpecA … True`), a
  `KeepsFp` and a `NoEvm` fact give the `FinHyps` shape (`PWtop ks`, `FQ`), given that the
  summary's `prot` writes are `PWtop` cells.
* `noFrame_cell`: a cell of a non-frame object is outside every EV / CK record.
* Guest instances: **`fin_rb`** (the fold's `rollback_child_access` entry, type capabilities on the
  table types), **`fin_au`** (`address_to_u256`), **`fin_mc`** (`memcpy`), **`fin_sp`**
  (`stack_push` from `sum_stack_push`, with its functional post), **`fin_memObj`**.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Shards InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

theorem fpQ_of_fp {s t : State σ} (h : t.globals.lookup gFrame = s.globals.lookup gFrame) :
    FpQ s t := by
  intro p p' hp hp'
  obtain ⟨a, b, c, -, hb, -, rfl⟩ := ptrsOf_parts hp
  obtain ⟨a', b', c', -, hb', -, rfl⟩ := ptrsOf_parts hp'
  have : gword t gFrame = gword s gFrame := by unfold gword; rw [h]
  rw [this, hb] at hb'
  cases hb'
  rfl

theorem noEvm_of_escFree {f : MlS} (h : CalleeEscFree σ X f) : NoEvm σ X f := by
  intro vs body callee rs hl s hs _ r hr v hv
  have := (h vs body callee rs hl s (by rw [hs.1])).1 nmEvmErr v
  rw [hr, hv] at this
  exact this rfl

/-- **A fold summary in the `FinHyps` shape.** -/
theorem finSpec_of {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {f : MlS} {sg sg' : Sig}
    {Pre Pre' : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop} {ks : List Nat}
    (h : SumSpecA σ X C H f sg Pre PW (fun _ _ _ _ _ _ => True)) (hfp : KeepsFp σ X f)
    (hne : NoEvm σ X f)
    (hsg : sg'.params = sg.params ∧ sg'.ret = sg.ret ∧ sg'.gw = sg.gw ∧
      (sg'.grows = false → sg.grows = false))
    (hpre : ∀ vs s Γ, G C H Γ s → Pre' vs s Γ → Pre vs s Γ)
    (hpw : ∀ vs s Γ a, G C H Γ s → Pre' vs s Γ → ProtCell C Γ a → PW vs s Γ a →
      PWtopM tEV tCK ks vs s Γ a) :
    SumSpecA σ X C H f sg' Pre' (PWtopM tEV tCK ks) FQ := by
  obtain ⟨hp1, hp2, hp3, hp4⟩ := hsg
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG ⟨p0, hp0, hargs⟩ hpre'
  obtain ⟨Γ', p, p', core, -⟩ := h vs body callee rs hl s hs hloc r hr hg hna Γ hG
    ⟨p0, hp0, hp1 ▸ hargs⟩ (hpre vs s Γ hG hpre')
  have h1 := hfp vs body callee rs hl s hs hloc r hr hg hna
  have h2 := hne vs body callee rs hl s hs hloc r hr
  refine ⟨Γ', p, p', ?_, fpQ_of_fp h1, h2⟩
  obtain ⟨c1, c2, c3, c4, c5, c6, hmod, c8, c9, c10⟩ := core
  refine ⟨c1, c2, c3, c4, c5, c6, fun a ha => hmod a fun hR => ha ?_, fun g hg hgw => c8 g hg
    (hp3 ▸ hgw), fun hgr => c9 (hp4 hgr), fun v hv => hp2 ▸ c10 v hv⟩
  rcases hR with h | h | h | ⟨hpc, hw⟩
  · exact Or.inl h
  · exact Or.inr (Or.inl (hp1 ▸ h))
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr ⟨hpc, hpw vs s Γ a hG hpre' hpc hw⟩))

/-- A cell of a `Γ` object that is no EV / CK record is outside every record. -/
theorem noFrame_cell {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {Γ : Gam} {s : State σ}
    (hG : G C H Γ s) {e : Obj} (he : e ∈ Γ) {k : Nat} (hk : e.HasSlot k)
    (hty : e.ty ≠ tEV ∧ e.ty ≠ tCK) : NoFrameCell tEV tCK Γ (e.cell k) := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  intro o ho hot
  have hb : e.base ≠ o.base := base_ne_of_ty hL he ho (by rcases hot with h | h <;> rw [h] <;>
    [exact hty.1; exact hty.2])
  exact inO_disj hL he ho hb (inO_cell hord hL he (by unfold Obj.HasSlot at hk; omega))

/-- A cell of a `Γ` object that is no EV / CK / message record is in `PWtopM []`. -/
theorem noFrameM_cell {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {Γ : Gam} {s : State σ}
    (hG : G C H Γ s) {e : Obj} (he : e ∈ Γ) {k : Nat} (hk : e.HasSlot k)
    (hty : e.ty ≠ tEV ∧ e.ty ≠ tCK) (hm : e.ty ∉ msgTys) {ks : List Nat} {vs : List (ValueHOL 64)} :
    PWtopM tEV tCK ks vs s Γ (e.cell k) := by
  refine ⟨Or.inr (noFrame_cell hG he hk hty), ?_⟩
  obtain ⟨p, -, hord, hL, -⟩ := hG
  exact noMsg_of_ty hL he hm (inO_cell hord hL he (by unfold Obj.HasSlot at hk; omega))

/-! ## Guest instances -/

/-- The type capabilities of the fold's `rollback_child_access` entry. -/
def capsRb : List Cap :=
  [⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩,
    ⟨nm "*", 42, [], true⟩, ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]

/-- `rollback_child_access` (the fold's entry). -/
theorem fin_rb {H : Hooks σ}
    (hs : CSumm σ X guestC H (nm "rollback_child_access") (sgRb tEV) capsRb)
    (hfp : KeepsFp σ X (nm "rollback_child_access"))
    (hne : NoEvm σ X (nm "rollback_child_access")) :
    SumSpecA σ X guestC H (nm "rollback_child_access") (sgRb tEV) (fun _ _ _ => True)
      (PWtopM tEV tCK []) FQ := by
  refine finSpec_of hs hfp hne ⟨rfl, rfl, rfl, fun h => h⟩ (fun _ _ _ _ _ c hc hne => ?_)
    (fun vs s Γ a hG _ _ hw => ?_)
  · simp only [capsRb, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> exact absurd rfl hne
  · obtain ⟨c, hc, ⟨e, -, k, hk, -⟩ | ⟨-, e, he, hall, k, hks, rfl⟩⟩ := hw
    · simp only [capsRb, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp at hk
    · have h01 : (e.ty ≠ 0 ∧ e.ty ≠ 1) ∧ e.ty ≠ 4 ∧ e.ty ≠ 5 ∧ e.ty ≠ 76 ∧ e.ty ≠ 77 ∧ e.ty ≠ 78 ∧ e.ty ≠ 80 ∧ e.ty ≠ 46 ∧ e.ty ≠ 49 ∧ e.ty ≠ 50 ∧ e.ty ≠ 51 ∧ e.ty ≠ 15 ∧ e.ty ≠ 16 ∧ e.ty ≠ 17 ∧ e.ty ≠ 18 := by
        simp only [capsRb, List.mem_cons, List.not_mem_nil, or_false] at hc
        unfold AllTy ownBase at hall
        rcases hc with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> (simp only at hall; omega)
      exact noFrameM_cell hG he hks h01.1 (by simp [msgTys, blockTys]; omega)

/-- `address_to_u256` (the fold's entry; `Summ` shape). -/
theorem fin_au {H : Hooks σ}
    (hs : CSumm σ X guestC H (nm "address_to_u256") { params := [.any], grows := false } [])
    (hfp : KeepsFp σ X (nm "address_to_u256")) (hne : NoEvm σ X (nm "address_to_u256")) :
    SumSpecA σ X guestC H (nm "address_to_u256") (sgA 1 []) (fun _ _ _ => True)
      (PWtopM tEV tCK []) FQ :=
  finSpec_of hs hfp hne ⟨rfl, rfl, rfl, fun h => by cases h⟩
    (fun _ _ _ _ _ c hc => by cases hc) (fun _ _ _ _ _ _ _ ⟨c, hc, _⟩ => by cases hc)

/-- `memcpy` (the base table's entry). -/
theorem fin_mc {H : Hooks σ} (hF : FoldOK σ X guestC H)
    (hfp : KeepsFp σ X (nm "memcpy")) (hne : NoEvm σ X (nm "memcpy")) :
    SumSpecA σ X guestC H (nm "memcpy") (sgMc []) (fun _ _ _ => True) (PWtopM tEV tCK []) FQ :=
  finSpec_of (sumSpecA_of_sumSpec (summ_memcpy hF.hH tagSlots_guestC hF.hX hF.hal)) hfp hne
    ⟨rfl, rfl, rfl, fun h => h⟩ (fun _ _ _ _ _ => trivial) (fun _ _ _ _ _ _ _ h => h.elim)

/-- `stack_push` (`sum_stack_push` under the `ev` capability, with its functional post). -/
theorem fin_sp {H : Hooks σ} (hF : FoldOK σ X guestC H) (hK : GuestHooks H)
    (hfp : KeepsFp σ X (nm "stack_push")) :
    SumSpecA σ X guestC H (nm "stack_push") (sgA 1 []) (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
      (PWtopM tEV tCK [1, 2, 29]) (fun _ s _ r t _ => FpQ s t ∧ ∀ e, gword s nmEv = some e →
        (fld s.memory e 16).toNat < (fld s.memory e 232).toNat →
          (∃ v, r = .returned v) ∧ fld t.memory e 8 = fld s.memory e 8 ∧
            fld t.memory e 232 = fld s.memory e 232) := by
  have hH := hF.hH
  have hS := sumSpecA_of_sumSpec (sumSpec_of_upg (C := guestC) (cs := [capEv [1, 2, 29]]) (by decide) (sum_stack_push hF.hX hH hK.mono
    (evCfg_upg [1, 2, 29]) (evHook_upg hK.ev) (allocSpec_scratch_alloc hF.hX)
    (summ_memcpy hH tagSlots_guestC hF.hX hF.hal)))
  intro vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs ⟨eo, heo, het, heb⟩
  have hev : s.globals.lookup gEv = some (.val (.word eo.base)) := by
    unfold gword at heb
    split at heb
    · rename_i w hw; cases heb; exact hw
    · cases heb
  obtain ⟨Γ', p, p', core, hq⟩ := hS vs body callee rs hl s hs hloc r hr hg hna Γ hG hargs
    ⟨trivial, fun c hc _ => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hc
      subst hc; exact ⟨eo, heo, het, heb⟩⟩
  have h1 := hfp vs body callee rs hl s hs hloc r hr hg hna
  refine ⟨Γ', p, p', ?_, fpQ_of_fp h1, fun e he hlt => ?_⟩
  · obtain ⟨c1, c2, c3, c4, c5, c6, hmod, c8, c9, c10⟩ := core
    refine ⟨c1, c2, c3, c4, c5, c6, fun a ha => hmod a fun hR => ha ?_, c8, c9, c10⟩
    rcases hR with h | h | h | ⟨hpc, ⟨e1, ⟨he1, he1t, he1b⟩, k, hk, rfl⟩⟩
    · exact Or.inl h
    · exact Or.inr (Or.inl h)
    · exact Or.inr (Or.inr (Or.inl h))
    · refine Or.inr (Or.inr (Or.inr ⟨hpc, Or.inl ⟨e1, ⟨he1, he1t, gword_of he1b⟩, k, hk, rfl⟩, ?_⟩))
      obtain ⟨q, -, hord, hL, -⟩ := hG
      have hk' : k ≤ 29 := by simp at hk; omega
      have hsz : 280 ≤ e1.size := by
        have := (lay_obj hL he1).2.2.2.1; rw [he1t] at this; exact le_trans (by decide) this
      exact noMsg_of_frame (tCK := tCK) hL (by decide) he1 (Or.inl he1t)
        (inO_cell hord hL he1 (k := 8 * k) (by omega))
  · rw [heb, Option.some.injEq] at he
    subst he
    obtain ⟨-, hlt'⟩ := hq eo ⟨heo, het, hev⟩
    obtain ⟨-, -, hret, hcap, hstk⟩ := hlt' hlt
    exact ⟨hret, hstk, hcap⟩

/-- The memory object of an EV record (from the EV hook). -/
theorem fin_memObj {H : Hooks σ} (hK : GuestHooks H) :
    ∀ (Γ : Gam) (s : State σ) (o : Obj), o ∈ Γ → o.ty = tEV → H.wf Γ s o →
      ∃ x ∈ Γ, x.base = fld s.memory o.base 24 ∧ (∀ k, (guestC.ty x.ty).slot k = .scalar) ∧
        (fld s.memory o.base 32).toNat ≤ x.size ∧ (fld s.memory o.base 32).toNat % 8 = 0 := by
  intro Γ s o ho hot hw
  obtain ⟨-, hlen, hl32, -, x, hx, hxb, hxt, hxs⟩ := hK.ev.get Γ s o ho hot hw
  refine ⟨x, hx, hxb, fun k => ?_, ?_, ?_⟩
  · have : x.ty = tMEM := hxt
    rw [this]
    show memTy.slot k = .scalar
    unfold memTy TyD.slot
    simp
  · exact le_trans hlen hxs
  · have h := hl32
    change (fld s.memory o.base 32).toNat % 32 = 0 at h
    omega

/-- **`create_finish`'s extra precondition from the guest extension** (frames9): the child's
`CK_MSG` is its `EV_MSG` (`GR`), a `Γ` message object whose CURRENT_TARGET block (slot 4, `prot`)
is `BufOK 20` (`GP`). -/
theorem cfOK_guest {Γ : Gam} {m : Mem} {p : Ptrs} {ch pa : Frame} (hP : GP Γ m p ch)
    (hR : GR Γ m ch pa) : CfOK guestC Γ m p (fld m ch.2 40) := by
  obtain ⟨⟨M, hMΓ, hMb, hMt, hMs⟩, hB, -, -⟩ := hP
  rw [hR.2.2]
  refine ⟨⟨M, hMΓ, hMb, by rcases hMt with h | h <;> rw [h] <;> decide,
    by unfold Obj.HasSlot; omega, (msg_addrProt hMt).2⟩, hB 32 (by simp [msgXOffs])⟩

/-- **`FinHyps` for the guest configuration**, from the fold's entries (`rollback_child_access`,
`address_to_u256`), the `KeepsFp` / `NoEvm` facts of the table callees, and the four callee facts
the fold does not accept (`state_restore`, `create_finish`, `set_retdata`,
`incorporate_child_on_success`: hand specs). -/
theorem finHyps_guest {H : Hooks σ} (hF : FoldOK σ X guestC H) (hK : GuestHooks H)
    (hLH : Hooks.LstHooks H)
    (hD : DrvCfg guestC H tEV tCK) {gsr gcf gsd gic : List MlS}
    (gwsr : nmEv ∉ gsr ∧ nmCC ∉ gsr) (jsr : JrOut (gsr))
    (sr : SumSpecA σ X guestC H (nm "state_restore") (sgA 1 gsr) (fun _ s _ => JrNZ s)
      (PWtopM tEV tCK []) FQ)
    (gwcf : nmEv ∉ gcf ∧ nmCC ∉ gcf) (jcf : JrOut (gcf))
    (cf : SumSpecO σ X guestC H (nm "create_finish") (sgA 2 gcf) (CfPre guestC tEV)
      (PWtopM tEV tCK gasKs) CfQ)
    (gwsd : nmEv ∉ gsd ∧ nmCC ∉ gsd) (jsd : JrOut (gsd))
    (sd : SumSpecA σ X guestC H (nm "set_retdata") (sgA 2 gsd)
      (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ RetOK guestC Γ s.memory e.base)
      (PWtopM tEV tCK [18, 19, 27])
      (fun vs s Γ r t Γ' => FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e → RetOK guestC Γ' t.memory e))
    (gwic : nmEv ∉ gic ∧ nmCC ∉ gic) (jic : JrOut (gic))
    (ic : SumSpecA σ X guestC H (nm "incorporate_child_on_success") (sgA 1 gic)
      (IcPreG tEV Inc.IcsX) (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG)
    (rbS : CSumm σ X guestC H (nm "rollback_child_access") (sgRb tEV) capsRb)
    (rbFp : KeepsFp σ X (nm "rollback_child_access")) (rbNe : NoEvm σ X (nm "rollback_child_access"))
    (auS : CSumm σ X guestC H (nm "address_to_u256") { params := [.any], grows := false } [])
    (auFp : KeepsFp σ X (nm "address_to_u256")) (auNe : NoEvm σ X (nm "address_to_u256"))
    (mcFp : KeepsFp σ X (nm "memcpy")) (mcNe : NoEvm σ X (nm "memcpy"))
    (spFp : KeepsFp σ X (nm "stack_push")) :
    FinHyps σ X guestC H tEV tCK GP GR Inc.IcsX ⟨gsr, gcf, gsd, [], gic, [], []⟩ :=
  { code := hF.hX, drv := hD, xcfg := xCfg_guest, evX := by decide, msgTy := by decide,
    icX := fun _ _ _ _ _ hp hc hr => icsX_of hp hc hr, lstArr := fun hG => lstArrAt_of_G hLH hG,
    logStep := logStep_guest,
    cfX := fun _ _ _ _ _ hp hr => cfOK_guest hp hr, pc0 := rfl, tag := by decide, memObj := fin_memObj hK,
    pgJ := by decide, jsr := jsr, jcf := jcf, jsd := jsd, jsp := by simp, jic := jic,
    jau := by simp, jmc := by simp, gwsrE := gwsr, sr := sr, gwcfE := gwcf, cf := cf, rb := fin_rb rbS rbFp rbNe,
    gwsdE := gwsd, sd := sd, gwspE := by simp, sp := fin_sp hF hK spFp, gwicE := gwic, ic := ic,
    gwauE := by simp, au := fin_au auS auFp auNe, gwmcE := by simp, mc := fin_mc hF mcFp mcNe }

end InitECandidate.Solver.MemSafe.Frames
