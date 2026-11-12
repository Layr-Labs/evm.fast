import InitECandidate.Solver.MemSafe.Frames.RetData
import InitECandidate.Solver.MemSafe.Struct.Cost

/-!
# `create_finish`: the `FinHyps.cf` callee fact

```
fun 1 create_finish(1 msg, 1 child) {
  var code = lds 1 (child + EV_OUTPUT); var n = lds 1 (child + EV_OUTPUT_N);
  if n >+ 0 { if (ld8 code) == 239 { throw EvmErr E_INVALID_CONTRACT_PREFIX; } }
  if n >+ MAX_CODE_SIZE { throw EvmErr E_OUT_OF_GAS; }
  var 1 w = words_of(n); charge_gas(G_KECCAK256_PER_WORD * w);
  charge_state_gas(n * SG_COST_PER_STATE_BYTE);
  var 1 stored_code = alloc(n + 8); memcpy(stored_code, code, n);
  set_code(lds 1 (msg + MSG_CURRENT_TARGET), stored_code, n); return 0; }
```

* `code_cf` (`guestAst[589]`).
* `TrkG`: `Trk` where the protected globals of a list `gw` may change (for `set_code`, which
  writes `journal_n`); `trkG_call`, `trkG_sumCore`.
* **`cf_spec`** (frames9, set_code option B): the `FinHyps.cf` shape (`SumSpecO`, precondition
  `CfPre`: the message's CURRENT_TARGET block `BufOK 20`; `prot` writes in `PWtopM gasKs`, also
  cells outside every `Γ` object; `GAS_LEFT + STATE_GAS_SPILLED` of the running frame not raised),
  from the fold's summary of `set_code` (`sgSet`: `buf 20` target, Pre `JrNZ` and the length bound `CodeLen`, `prot` writes
  outside every frame / message record).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Struct
open InitECandidate.Solver.MemSafe.Helpers

variable {σ : Type} {X : Ctx 64}

/-! ## The code -/

def cfTail : ProgHOL 64 :=
  .decCall (nm "stored_code") .one (nm "alloc") [.op .add [lv (nm "n"), cw 8]]
    (.seq (callD (nm "memcpy") [lv (nm "stored_code"), lv (nm "code"), lv (nm "n")])
      (.seq (callD (nm "set_code") [lLoad "msg" 32, lv (nm "stored_code"), lv (nm "n")])
        (.return (cw 0))))

def cfGas : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "words_of") [lv (nm "n")]
    (.seq (callD (nm "charge_gas") [.panop .mul [cw 6, lv (nm "w")]])
      (.seq (callD (nm "charge_state_gas") [.panop .mul [lv (nm "n"), cw 1530]]) cfTail))

def cfBody : ProgHOL 64 :=
  .dec (nm "code") .one (lLoad "child" 120)
    (.dec (nm "n") .one (lLoad "child" 128)
      (.seq (.ite (.cmp .lower (cw 0) (lv (nm "n")))
          (.ite (.cmp .equal (.loadByte (lv (nm "code"))) (cw 239)) (.raise nmEvmErr (cw 11)) .skip)
          .skip)
        (.seq (.ite (.cmp .lower (cw 65536) (lv (nm "n"))) (.raise nmEvmErr (cw 4)) .skip) cfGas)))

theorem entry_cf : fnEntry Guest.Software.guestFn_create_finish =
    (nm "create_finish", [(nm "msg", .one), (nm "child", .one)], cfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_cf :
    guestCode (nm "create_finish") = some ([(nm "msg", .one), (nm "child", .one)], cfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 589) (by decide)) ⟨_, rfl⟩
    entry_cf

/-! ## Tracking with protected global writes -/

/-- `Trk` where the protected globals in `gw` may change. -/
def TrkG (C : Cfg) (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (PW : BitVec 64 → Prop) (Γ : Gam) (t : State σ) : Prop :=
  ∃ p, ptrsOf t = some p ∧ p0.Mono p ∧ Ext Γ0 Γ ∧ NewFresh Γ0 Γ p0 p ∧ G C H Γ t ∧
    ModifiesOnly (fun a => WCell C Γ0 a ∨ ¬ p0.Allocated a.toNat ∨ PW a) s0.memory t.memory ∧
    (∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s0.globals.lookup g) ∧ t.memaddrs = s0.memaddrs ∧
    t.be = s0.be

section trkG
variable {C : Cfg} {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}
  {PW : BitVec 64 → Prop}

theorem trkG_of_trk {Γ : Gam} {t : State σ} (h : Trk C H Γ0 s0 p0 PW Γ t) :
    TrkG C H gw Γ0 s0 p0 PW Γ t := by
  obtain ⟨p, a, b, c, d, e, f, g, i, j⟩ := h
  exact ⟨p, a, b, c, d, e, f, fun x hx _ => g x hx, i, j⟩

theorem trkG_congr (hH : HooksLawful C H) {Γ : Gam} {t t' : State σ}
    (h : TrkG C H gw Γ0 s0 p0 PW Γ t) (hm : t'.memory = t.memory) (hg : t'.globals = t.globals)
    (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be) : TrkG C H gw Γ0 s0 p0 PW Γ t' := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, hd0, hbe0⟩ := h
  refine ⟨p, by rw [← hp]; unfold ptrsOf gword; rw [hg], hm0, hx, hnf, G_congr hH hm hg hd hbe hG,
    fun a ha => by rw [hm]; exact hmod a ha, fun g hg' hgw => by rw [hg]; exact hpg g hg' hgw,
    hd.trans hd0, hbe.trans hbe0⟩

/-- A call from a `Trk` state to a callee that may write the protected globals of `gw`. -/
theorem trkG_call {Γ Γ' : Gam} {t t' st : State σ} {sg : Sig} {PW' : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (h : Trk C H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0)
    (htm : t'.memory = t.memory) (htg : t'.globals = t.globals)
    (hc : SumCore C H sg (fun a => ProtCell C Γ a ∧ PW' a) Γ t' vs r st Γ' p p')
    (hgw : ∀ g ∈ C.PG, g ∈ sg.gw → g ∈ gw)
    (hArg : ∀ a, ArgCells sg.params vs a → WCell C Γ a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hPW : ∀ a, ProtCell C Γ a → PW' a → WCell C Γ0 a ∨ ¬ p0.Allocated a.toNat ∨ PW a)
    (hd : st.memaddrs = t.memaddrs) (hbe : st.be = t.be) : TrkG C H gw Γ0 s0 p0 PW Γ' st := by
  obtain ⟨p1, hp1, hm1, hx1, hnf1, hG1, hmod1, hpg1, hd1, hbe1⟩ := h
  obtain ⟨hpe, hpst, hmc, hxc, hnfc, hGc, hmodc, hpgc, -, -⟩ := hc
  have hpe' : ptrsOf t = some p := by rw [← hpe]; unfold ptrsOf gword; rw [htg]
  rw [hp1] at hpe'
  cases hpe'
  obtain ⟨q, hq, hordp, hLp, -⟩ := hG1
  rw [hp1] at hq
  cases hq
  refine ⟨p', hpst, mono_trans hm1 hmc, ext_trans hx1 hxc, newFresh_trans hm1 hmc hnf1 hnfc, hGc,
    ?_, ?_, hd.trans hd1, hbe.trans hbe1⟩
  · intro a ha
    have e1 : st.memory a = t.memory a := by
      rw [← htm]
      refine hmodc a fun hc => ?_
      rcases hc with hw | harg | hna | ⟨hpc, hpw⟩
      · rcases wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
        · exact ha (Or.inl h')
        · exact ha (Or.inr (Or.inl h'))
      · rcases hArg a harg with hw | hna | hpw
        · rcases wcell_back hord0 hordp hm1 hL0 hLp hnf1 hw with h' | h'
          · exact ha (Or.inl h')
          · exact ha (Or.inr (Or.inl h'))
        · exact ha (Or.inr (Or.inl hna))
        · exact ha (Or.inr (Or.inr hpw))
      · exact ha (Or.inr (Or.inl (notAlloc_mono hm1 hna)))
      · rcases hPW a hpc hpw with h' | h' | h'
        · exact ha (Or.inl h')
        · exact ha (Or.inr (Or.inl h'))
        · exact ha (Or.inr (Or.inr h'))
    rw [e1, hmod1 a ha]
  · intro g hg hgw'
    rw [hpgc g hg (fun h => hgw' (hgw g hg h)), htg, hpg1 g hg]

/-- The final `SumCore`. -/
theorem trkG_sumCore {Γ : Gam} {t : State σ} {sg : Sig} {PWs : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (h : TrkG C H gw Γ0 s0 p0 PW Γ t) (hp0 : ptrsOf s0 = some p0)
    (hPW : ∀ a, PW a → PWs a) (hgw : ∀ g ∈ C.PG, g ∈ gw → g ∈ sg.gw) (hgrow : sg.grows = true)
    (hret : sg.ret = []) : ∃ p, SumCore C H sg PWs Γ0 s0 vs r t Γ p0 p := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, -, -⟩ := h
  refine ⟨p, hp0, hp, hm0, hx, hnf, hG, ?_, fun g hg hgw' => hpg g hg (fun h => hgw' (hgw g hg h)),
    fun hg => absurd (hgrow.symm.trans hg) (by decide), fun v _ i rt w hrt => ?_⟩
  · exact hmod.mono fun a ha => by
      rcases ha with ha | ha | ha
      · exact Or.inl ha
      · exact Or.inr (Or.inr (Or.inl ha))
      · exact Or.inr (Or.inr (Or.inr (hPW a ha)))
  · rw [hret] at hrt; simp at hrt

end trkG

/-! ## Gas cells -/

/-- `GAS_LEFT + STATE_GAS_SPILLED` of the record at `e`. -/
def GS (m : Mem) (e : BitVec 64) : Nat := (fld m e 64).toNat + (fld m e 192).toNat

theorem gs_charge {m : Mem} {e a : BitVec 64} (h : a ≤ fld m e 64) :
    GS (chargeMem m e a) e ≤ GS m e := by
  have h64 : fld (chargeMem m e a) e 64 = fld m e 64 - a := by
    unfold chargeMem fld
    rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd, if_pos rfl]
  have h192 : fld (chargeMem m e a) e 192 = fld m e 192 := by
    unfold chargeMem fld
    rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
      if_neg (off_ne e (by decide) (by decide) (by decide))]
  unfold GS
  rw [h64, h192, BitVec.toNat_sub_of_le h]
  omega

theorem gs_csg {m m' : Mem} {e a : BitVec 64} {r : PanSemResultExact 64}
    (h : CsgCase m e a r m') : GS m' e ≤ GS m e := by
  rcases h with ⟨_, _, hm⟩ | ⟨hlt, hle, _, hm⟩ | ⟨_, _, _, hm⟩
  · subst hm
    unfold GS fld
    rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
      if_neg (off_ne e (by decide) (by decide) (by decide))]
  · subst hm
    have h64 : fld (csgMem m e a) e 64 = fld m e 64 - (a - fld m e 72) := by
      unfold csgMem fld
      rw [rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd, if_pos rfl]
    have h192 : fld (csgMem m e a) e 192 = fld m e 192 + (a - fld m e 72) := by
      unfold csgMem fld
      rw [rd_upd, if_pos rfl, rd_upd, if_neg (off_ne e (by decide) (by decide) (by decide)), rd_upd,
        if_neg (off_ne e (by decide) (by decide) (by decide))]
    have hrl := rem_le hlt hle
    have hrl' : a - fld m e 72 ≤ fld m e 64 := by rw [BitVec.le_def]; exact hrl
    unfold GS
    rw [h64, h192, BitVec.toNat_sub_of_le hrl', BitVec.toNat_add]
    have := Nat.mod_le ((fld m e 192).toNat + (a - fld m e 72).toNat) (2 ^ 64)
    omega
  · subst hm; exact le_refl _

/-- Writes to driver slots of the running frame (gas functions). -/
theorem trk_drv {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}
    {PW : BitVec 64 → Prop} (hF : FrameCfg guestC H tEV tCK) {Γ : Gam} {t t' : State σ}
    (h : Trk guestC H Γ0 s0 p0 PW Γ t) (he0 : e0 ∈ Γ0) (het : e0.ty = tEV) {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∈ evDriverSlots)
    (hmod : ModifiesOnly (fun a => ∃ k ∈ ks, a = e0.base + BitVec.ofNat 64 (8 * k)) t.memory t'.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (hRW : ∀ k ∈ ks, WCell guestC Γ0 (e0.cell k) ∨ PW (e0.cell k)) : Trk guestC H Γ0 s0 p0 PW Γ t' := by
  obtain ⟨e1, he1, hb1, ht1, -⟩ := trk_ext h e0 he0
  obtain ⟨p, -, -, hL, -⟩ := trk_G h
  refine trk_safe hF.hooks h ?_ hmod hg hd hbe ?_
  · rintro a ⟨k, hk, rfl⟩
    exact safe_ev hF hL he1 (ht1.trans het) (hks k hk) (by unfold Obj.cell; rw [hb1])
  · rintro a ⟨k, hk, rfl⟩
    exact hRW k hk


/-! ## The body -/

/-- `set_code`'s signature (the fold's: the target address as `buf 20`). -/
def sgSet (gw : List MlS) : Sig := ⟨[.buf 20, .any, .any], [], gw, true⟩

/-- `set_code`'s length bound: the code-slice record's invariant (`Hooks.cslD`) needs it, and
`create_finish` has `n ≤ MAX_CODE_SIZE` by then. -/
def CodeLen (vs : List (ValueHOL 64)) : Prop :=
  ∃ n : BitVec 64, vs[2]? = some (.val (.word n)) ∧ n.toNat ≤ 2 ^ 32

/-- The extra cells `create_finish` may write: the running frame's gas slots or `prot` cells
outside every frame / message record, and cells outside every `Γ` object (`set_code`'s `buf 20`
target block). -/
def PWf (e0 : Obj) (Γ0 : Gam) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ ((∃ k ∈ gasKs, a = e0.cell k) ∨ NoFrameCell tEV tCK Γ0 a) ∧
    NoMsgCell Γ0 a) ∨ ¬ InObj Γ0 a.toNat

theorem argsOK_set {Γ : Gam} {p : Ptrs} {gw : List MlS} {w : BitVec 64} {v2 v3 : ValueHOL 64}
    (hb : BufOK guestC Γ p w.toNat 20) :
    ArgsOK guestC Γ p (sgSet gw).params [.val (.word w), v2, v3] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | _ | i <;> simp [sgSet] at hpt hv <;> subst hpt <;> subst hv
  · exact ⟨w, rfl, hb⟩
  · trivial
  · trivial

theorem argCells_set {gw : List MlS} {w : BitVec 64} {v2 v3 : ValueHOL 64} {a : BitVec 64}
    (h : ArgCells (sgSet gw).params [.val (.word w), v2, v3] a) : Overlap w.toNat 20 a := by
  obtain ⟨i, x, hx, ⟨m, hm, hov⟩ | ⟨j, c, d, y, hm, -⟩⟩ := h
  · rcases i with _ | _ | _ | i <;> simp [sgSet] at hm
    simp [argW, wordOf] at hx
    subst hx; subst hm; exact hov
  · rcases i with _ | _ | _ | i <;> simp [sgSet] at hm

/-- The cells of a `BufOK` block are no `prot` cells. -/
theorem bufOK_noProt {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {b n : Nat} (hb : BufOK C Γ p b n) {a : BitVec 64} (ha : Overlap b n a) :
    ¬ ProtCell C Γ a := by
  rintro ⟨o, ho, k, hk, hpr, rfl⟩
  rcases hb _ ha with ⟨o', ho', k', hk', hsc, he⟩ | ⟨hni, -⟩
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho ho' hk hk' he
    rw [hpr] at hsc; cases hsc
  · exact hni (cell_in hord hL ho hk)

section cfb0
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- `JrNZ` along a tracked run. -/
theorem trk_jrNZ {PW : BitVec 64 → Prop} {Γ : Gam} {t : State σ}
    (h : Trk guestC H Γ0 s0 p0 PW Γ t) (hJ : JrNZ s0) : JrNZ t := by
  obtain ⟨-, -, -, -, -, -, -, hpg, -⟩ := h
  exact jrNZ_of_lookup (fun g hg => hpg g ((by decide : JrPG guestC) g hg)) hJ

/-- **The target block at a tracked state**: the message's CURRENT_TARGET word is unchanged (a
`prot` cell of a message object, outside `PWf`), and its block is still `BufOK 20`. -/
theorem cf_buf {Γ : Gam} {t : State σ} (hT : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ t)
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Mw : BitVec 64}
    (hcf : CfOK guestC Γ0 s0.memory p0 Mw) {pp : Ptrs} (hpp : ptrsOf t = some pp) :
    BufOK guestC Γ pp (fld t.memory Mw 32).toNat 20 := by
  obtain ⟨⟨o, ho, hob, hot, hk4, hpr⟩, hb⟩ := hcf
  obtain ⟨p, hp, hmo, hext, hnf, hG, hmod, -⟩ := hT
  obtain rfl : p = pp := Option.some.inj (hp.symm.trans hpp)
  obtain ⟨q, hq, hord, -, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hp)
  have hc : t.memory (o.cell 4) = s0.memory (o.cell 4) := by
    refine hmod _ fun h => ?_
    rcases h with ⟨o', ho', k', hk', hnp, he⟩ | hna | ⟨-, -, hnm⟩ | hni
    · obtain ⟨rfl, rfl⟩ := cell_inj hord0 hL0 ho ho' hk4 hk' he
      exact hnp hpr
    · exact hna (prot_alloc hord0 hL0 ⟨o, ho, 4, hk4, hpr, rfl⟩)
    · exact hnm o ho hot (inO_cell hord0 hL0 ho (k := 8 * 4) (by unfold Obj.HasSlot at hk4; omega))
    · exact hni (cell_in hord0 hL0 ho hk4)
  have hkeep : fld t.memory Mw 32 = fld s0.memory Mw 32 := by
    have he : Mw + BitVec.ofNat 64 32 = o.cell 4 := by rw [← hob]; rfl
    unfold fld rd; rw [he, hc]
  rw [hkeep]
  exact bufOK_stepX hord0 hord hmo hext hnf hb

/-- The cells of a `BufOK` block at a tracked state are writable, unallocated at entry, or outside
every entry object (in `PWf`). -/
theorem cf_argW {Γ : Gam} {t : State σ} (hT : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ t) {pp : Ptrs}
    {b n : Nat} (hb : BufOK guestC Γ pp b n) {a : BitVec 64} (ha : Overlap b n a) :
    WCell guestC Γ a ∨ ¬ p0.Allocated a.toNat ∨ PWf e0 Γ0 a := by
  rcases hb a ha with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, -⟩
  · exact Or.inl ⟨o, ho, k, hk, by rw [hsc]; decide, rfl⟩
  · refine Or.inr (Or.inr (Or.inr fun ⟨o, ho, h1, h2⟩ => hni ?_))
    obtain ⟨o', ho', hb', -, hs'⟩ := trk_ext hT o ho
    exact ⟨o', ho', by unfold Obj.lo at *; rw [hb']; exact h1,
      by unfold Obj.hi at *; rw [hb']; omega⟩

end cfb0

/-- What every non-abortive end of `create_finish` satisfies. -/
def KC (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 : Obj) (u : State σ) :
    Prop :=
  ∃ Γ, TrkG guestC H gw Γ0 s0 p0 (PWf e0 Γ0) Γ u ∧ GS u.memory e0.base ≤ GS s0.memory e0.base

def QC (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 : Obj)
    (r : Option (PanSemResultExact 64)) (u : State σ) : Prop :=
  ∀ rr, r = some rr → ¬ Abortive rr → KC H gw Γ0 s0 p0 e0 u

section cfb
variable {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

theorem qc_locals (hH : HooksLawful guestC H) {r : Option (PanSemResultExact 64)} {u : State σ}
    (h : QC H gw Γ0 s0 p0 e0 r u) (l : Locs) : QC H gw Γ0 s0 p0 e0 r { u with locals := l } := by
  intro rr hr hna
  obtain ⟨Γ, hT, hgs⟩ := h rr hr hna
  exact ⟨Γ, trkG_congr hH hT rfl rfl rfl rfl, hgs⟩

theorem qc_of_trk {r : Option (PanSemResultExact 64)} {Γ : Gam} {u : State σ}
    (hT : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ u) (hgs : GS u.memory e0.base ≤ GS s0.memory e0.base) :
    QC H gw Γ0 s0 p0 e0 r u := fun _ _ _ => ⟨Γ, trkG_of_trk hT, hgs⟩

/-- The gas slots of the running frame are writable cells or in `PWf`. -/
theorem gas_foot (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) (he0 : e0 ∈ Γ0)
    (het : e0.ty = tEV) (hsz0 : 280 ≤ e0.size) :
    ∀ k ∈ gasKs, WCell guestC Γ0 (e0.cell k) ∨ PWf e0 Γ0 (e0.cell k) := by
  intro k hk
  have hs : e0.HasSlot k := by
    unfold Obj.HasSlot; simp [gasKs] at hk; omega
  have hnm : NoMsgCell Γ0 (e0.cell k) := noMsg_of_frame (tCK := tCK) hL0 (by decide) he0
    (Or.inl het) (inO_cell hord0 hL0 he0 (k := 8 * k) (by unfold Obj.HasSlot at hs; omega))
  simp only [gasKs, List.mem_cons, List.not_mem_nil, or_false] at hk
  rcases hk with rfl | rfl | rfl | rfl
  · exact Or.inr (Or.inl ⟨⟨e0, he0, 8, hs, by rw [het]; rfl, rfl⟩, Or.inl ⟨8, by simp [gasKs], rfl⟩,
      hnm⟩)
  · exact Or.inl ⟨e0, he0, 9, hs, by rw [het]; decide, rfl⟩
  · exact Or.inl ⟨e0, he0, 23, hs, by rw [het]; decide, rfl⟩
  · exact Or.inr (Or.inl ⟨⟨e0, he0, 24, hs, by rw [het]; rfl, rfl⟩, Or.inl ⟨24, by simp [gasKs], rfl⟩,
      hnm⟩)

/-- A slot cell of a tracked typing is a slot cell of an entry object of the same base and type,
or was unallocated at entry. -/
theorem cell_back {PW : BitVec 64 → Prop} {Γ : Gam} {t : State σ}
    (h : Trk guestC H Γ0 s0 p0 PW Γ t) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {o : Obj}
    (ho : o ∈ Γ) {k : Nat} (hk : o.HasSlot k) :
    (∃ o0 ∈ Γ0, o0.base = o.base ∧ o0.ty = o.ty ∧ o0.HasSlot k) ∨ ¬ p0.Allocated (o.cell k).toNat := by
  obtain ⟨p, hp, hm, -, hnf, ⟨q, hq, hord, hL, -⟩, -⟩ := h
  rw [hp] at hq
  cases hq
  obtain ⟨hc, -⟩ := cell_toNat hord hL ho hk
  have hin1 : o.lo ≤ (o.cell k).toNat := by rw [hc]; omega
  have hin2 : (o.cell k).toNat < o.hi := by
    rw [hc]; unfold Obj.HasSlot at hk; unfold Obj.hi Obj.lo; omega
  rcases hnf o ho _ hin1 hin2 with ⟨o0, ho0, hb, ht, hl, hh⟩ | hf
  · left
    refine ⟨o0, ho0, hb, ht, ?_⟩
    unfold Obj.HasSlot
    rw [hc] at hl hh
    simp only [Obj.lo, Obj.hi, hb] at hl hh
    have h8 : o0.size % 8 = 0 := (hL0.1 o0 ho0).2.1
    omega
  · exact Or.inr (fresh_notAlloc hord0 hord hm hf)

end cfb


section cft
variable {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- `GAS_LEFT` / `STATE_GAS_SPILLED` survive a call that writes no `prot` cell of the record. -/
theorem gs_keep {Γ Γ' : Gam} {sg : Sig} {PW : BitVec 64 → Prop} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW a) Γ s vs r t Γ' p p')
    (hG : G guestC H Γ s) (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a)
    {e1 : Obj} (he1 : e1 ∈ Γ) (ht1 : e1.ty = tEV) (hsz : 280 ≤ e1.size)
    (hpw : ∀ k, k = 8 ∨ k = 24 → ¬ PW (e1.cell k)) : GS t.memory e1.base = GS s.memory e1.base := by
  have hk : ∀ k, k = 8 ∨ k = 24 → fld t.memory e1.base (8 * k) = fld s.memory e1.base (8 * k) := by
    intro k hk
    have hpc : ProtCell guestC Γ (e1.cell k) := ⟨e1, he1, k, by
      unfold Obj.HasSlot; rcases hk with rfl | rfl <;> omega, by
      rw [ht1]; rcases hk with rfl | rfl <;> rfl, rfl⟩
    have := sumCore_prot hc hG hac _ hpc (hpw k hk)
    unfold fld rd
    rw [show e1.base + BitVec.ofNat 64 (8 * k) = e1.cell k from rfl, this]
  unfold GS
  rw [hk 8 (Or.inl rfl), hk 24 (Or.inr rfl)]

/-- The allocation, the copy, `set_code` and the return. -/
theorem cf_tail (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hsc : SumSpecA σ X guestC H (nm "set_code") (sgSet gw) (fun vs s _ => JrNZ s ∧ CodeLen vs)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True))
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) (he0 : EvRun tEV Γ0 s0 e0)
    (hsz0 : 280 ≤ e0.size) {Mw : BitVec 64} (hcf : CfOK guestC Γ0 s0.memory p0 Mw)
    (hJ0 : JrNZ s0) {Nn Cc : BitVec 64} :
    HoareG σ X (fun u => u.locals.lookup (nm "n") = some (.val (.word Nn)) ∧
        u.locals.lookup (nm "code") = some (.val (.word Cc)) ∧ Nn.toNat ≤ 65536 ∧
        u.locals.lookup (nm "msg") = some (.val (.word Mw)) ∧
        ∃ Γ, Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ u ∧ GS u.memory e0.base ≤ GS s0.memory e0.base)
      cfTail (QC H gw Γ0 s0 p0 e0) := by
  have hH := hD.fc.hooks
  have hA : AllocG guestC := ⟨fun g hg => (hF.hAC g hg).1, fun g hg => (hF.hAC g hg).2⟩
  have hxA : NoExc σ X (nm "alloc") := HtabEntries.noExc_htabX hF.hX _ (by decide)
  have hxM : NoExc σ X (nm "memcpy") := HtabEntries.noExc_htabX hF.hX _ (by decide)
  have habrt : ∀ {r : PanSemResultExact 64}, (Good (some r) → (∃ v, r = .returned v) ∨ Abortive r) →
      MemSafe.Abn r → Abortive r := by
    intro r h hab
    rcases h (good_of_abn hab) with ⟨v, rfl⟩ | h
    · rcases hab with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
    · exact h
  refine hoareG_decCall (FunSpec.and (allocSpec_alloc hF.hX) (FunSpec.and hxA (funSpec_dom _))) ?_ ?_
  · intro s _ ⟨hn, hc, hN, hml, Γ, hT, hgs⟩ vs hvs callee v st ⟨hAl, _, hd, hbe⟩ _ _
    have hev : evs s [.op .add [lv (nm "n"), cw 8]] = some [.val (.word (Nn + BitVec.ofNat 64 8))] :=
      evs_cons (ev_add2 (lv_of rfl hn) (ev_cw s 8)) evs_nil
    rw [hev] at hvs
    cases hvs
    obtain ⟨p, hps, hmo0, -, -, ⟨q0, hq0, hord, hL, -⟩, -⟩ := id hT
    rw [hps] at hq0
    cases hq0
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := by
      rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl]; exact hps
    obtain ⟨hm, hgl, p', hp', hord', hmo, hret⟩ := hAl (by simp [Good]) _ p rfl hpe hord
    obtain ⟨q, rfl, hq8, hlive, hna⟩ := hret _ rfl
    have hN8 : (Nn + BitVec.ofNat 64 8).toNat = Nn.toNat + 8 := by
      rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 8 < 2 ^ 64),
        Nat.mod_eq_of_lt (by omega)]
    rw [hN8] at hlive hna
    have hT1 := trk_alloc hH hA hT rfl rfl hpe hm hgl hp' hord' hmo hd hbe
    have hblk : ∀ a, q.toNat ≤ a → a < q.toNat + Nn.toNat →
        ¬ InObj Γ a ∧ ¬ p0.Allocated a ∧ p'.Allocated a := fun a h1 h2 =>
      ⟨fun hio => hna a h1 (by omega) (allocated_of_inObj hL hio),
        notAlloc_mono hmo0 (hna a h1 (by omega)),
        Or.inl ⟨by have := hlive.1; omega, by have := hlive.2; omega⟩⟩
    refine hoareG_conseq (Q := QC H gw Γ0 s0 p0 e0) ?_ (fun _ _ h => h)
      (fun r t _ _ h => qc_locals hH h _)
    set u1 := setVarHOLFinite (nm "stored_code") (.val (.word q)) { st with locals := s.locals }
      with hu1
    have hT1' : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ u1 := trk_congr hH hT1 rfl rfl rfl rfl
    have hgs1 : GS u1.memory e0.base ≤ GS s0.memory e0.base := by
      rw [show u1.memory = s.memory from hm]; exact hgs
    have hsq : u1.locals.lookup (nm "stored_code") = some (.val (.word q)) := lk_set_self _ _ _
    have hcq : u1.locals.lookup (nm "code") = some (.val (.word Cc)) :=
      (lk_set_ne _ _ (by decide)).trans hc
    have hnq : u1.locals.lookup (nm "n") = some (.val (.word Nn)) :=
      (lk_set_ne _ _ (by decide)).trans hn
    have hmq : u1.locals.lookup (nm "msg") = some (.val (.word Mw)) :=
      (lk_set_ne _ _ (by decide)).trans hml
    refine hoareG_seq (R := fun r u => (r = none ∧ u.locals = u1.locals ∧
        ∃ Γ', Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ' u ∧ GS u.memory e0.base ≤ GS s0.memory e0.base) ∨
        (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_callD (FunSpec.and (sumSpec_rel (summ_memcpy hH tagSlots_guestC hF.hX hF.hal))
        (FunSpec.and hxM (funSpec_dom _))) ?_ ?_
      · intro s' _ hs' vs hvs callee v st2 ⟨hS, _, hd2, hbe2⟩ _
        rw [hs'] at hvs hS hd2 hbe2 ⊢
        have hev : evs u1 [lv (nm "stored_code"), lv (nm "code"), lv (nm "n")] =
            some [.val (.word q), .val (.word Cc), .val (.word Nn)] :=
          evs_cons (lv_of rfl hsq) (evs_cons (lv_of rfl hcq) (evs_cons (lv_of rfl hnq) evs_nil))
        rw [hev] at hvs
        cases hvs
        have hG1 := trk_G hT1'
        have hGe : G guestC H Γ (callEntryStateHOLFinite u1 callee) := (G_locFree hH u1 _ _).mpr hG1
        have hpu : ptrsOf u1 = some p' := by
          rw [show ptrsOf u1 = ptrsOf st from ptrsOf_congr rfl]; exact hp'
        have hpe1 : ptrsOf (callEntryStateHOLFinite u1 callee) = some p' := by
          rw [show ptrsOf (callEntryStateHOLFinite u1 callee) = ptrsOf u1 from ptrsOf_congr rfl]; exact hpu
        have hov : ∀ a, Overlap q.toNat (1 * Nn.toNat + 0) a → q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + Nn.toNat :=
          fun a ⟨h8, h1, h2⟩ => ⟨by omega, by omega⟩
        have hargs : ArgsOK guestC Γ p' sigMemcpy.params
            [.val (.word q), .val (.word Cc), .val (.word Nn)] := by
          refine ⟨rfl, fun i pt w hpt hw => ?_⟩
          rcases i with _ | _ | _ | i <;> simp [sigMemcpy] at hpt hw <;> subst hpt <;> subst hw
          · exact ⟨q, Nn, rfl, rfl, fun a ha => Or.inr ⟨(hblk _ (hov a ha).1 (hov a ha).2).1,
              (hblk _ (hov a ha).1 (hov a ha).2).2.2⟩⟩
          · trivial
          · trivial
        obtain ⟨Γ', q1, q2, hc', -⟩ := hS (by simp [Good]) Γ hGe ⟨p', hpe1, hargs⟩ trivial
        have hq1 : q1 = p' := by have := hc'.1; rw [hpe1] at this; exact (Option.some.inj this).symm
        subst hq1
        have hT2 := trk_call hT1' hord0 hL0 rfl rfl hc' (fun g _ => by simp [sigMemcpy])
          (fun a ha => Or.inr (Or.inl (hblk _ (hov a (argCells_memcpy (gr := false) ha)).1
            (hov a (argCells_memcpy (gr := false) ha)).2).2.1)) (fun a _ h => h.elim) hd2 hbe2
        obtain ⟨e1, he1, hb1, ht1, hs1⟩ := trk_ext hT1' e0 he0.1
        obtain ⟨pp, -, hordp, hLp, -⟩ := id hG1
        have hac : ∀ a, ArgCells sigMemcpy.params [.val (.word q), .val (.word Cc), .val (.word Nn)] a →
            ¬ ProtCell guestC Γ a := by
          rintro a ha ⟨o, ho, k, hk, -, he⟩
          have hov' := hov a (argCells_memcpy (gr := false) ha)
          exact (hblk _ hov'.1 hov'.2).1 (by rw [he]; exact cell_in hordp hLp ho hk)
        have hgs2 := gs_keep hc' hGe hac he1 (ht1.trans he0.2.1) (le_trans hsz0 hs1) (fun _ _ h => h)
        rw [hb1] at hgs2
        exact Or.inl ⟨rfl, rfl, Γ', trk_congr hH hT2 rfl rfl rfl rfl, by
          show GS st2.memory e0.base ≤ _
          rw [hgs2]; exact hgs1⟩
      · intro s' _ _ vs _ callee r st2 ⟨_, hx, _⟩ _ habn
        refine Or.inr ⟨by simp, fun rr hrr hna => ?_⟩
        simp only [Option.some.injEq] at hrr
        subst hrr
        exact absurd (habrt hx habn) hna
    · refine hoareG_pre (P := fun u => u.locals = u1.locals ∧ ∃ Γ', Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ' u ∧
          GS u.memory e0.base ≤ GS s0.memory e0.base) ?_
        (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
      have key : ∀ s', s'.locals.lookup (nm "msg") = some (.val (.word Mw)) →
          s'.locals.lookup (nm "n") = some (.val (.word Nn)) →
          (∃ Γ', Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ' s' ∧
          GS s'.memory e0.base ≤ GS s0.memory e0.base) → ∀ vs,
          evs s' [lLoad "msg" 32, lv (nm "stored_code"), lv (nm "n")] = some vs → ∀ callee r st3,
          SumRelA guestC H (sgSet gw) (fun vs s _ => JrNZ s ∧ CodeLen vs) (PWtopM tEV tCK [])
            (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite s' callee) r st3 →
          st3.memaddrs = s'.memaddrs → st3.be = s'.be → Good (some r) → ¬ Abortive r →
          KC H gw Γ0 s0 p0 e0 st3 := by
        intro s' hlm hln ⟨Γ', hT', hgs'⟩ vs hvs callee r st3 hR hd3 hbe3 hg hna
        obtain ⟨v1, vs1, rfl, hv1, hvs1⟩ := evs_cons_inv hvs
        obtain ⟨v2, vs2, rfl, -, hvs2⟩ := evs_cons_inv hvs1
        obtain ⟨v3, vs3, rfl, hv3, hvs3⟩ := evs_cons_inv hvs2
        have hv3' : v3 = .val (.word Nn) := by
          rw [lv_of rfl hln] at hv3; exact (Option.some.inj hv3).symm
        subst hv3'
        have h3 : vs3 = [] := by
          have : evs s' ([] : List (ExpHOL 64)) = some [] := evs_nil
          rw [this] at hvs3; exact (Option.some.inj hvs3).symm
        subst h3
        have hv1' := ev_lLoad_eq hlm hv1
        subst hv1'
        have hGs := trk_G hT'
        have hGe : G guestC H Γ' (callEntryStateHOLFinite s' callee) := (G_locFree hH s' _ _).mpr hGs
        obtain ⟨pp, hpp, hordp, hLp, -⟩ := id hGs
        have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some pp := by
          rw [show ptrsOf (callEntryStateHOLFinite s' callee) = ptrsOf s' from ptrsOf_congr rfl]; exact hpp
        -- the target block (`BufOK 20`, the `buf 20` argument)
        have hbuf : BufOK guestC Γ' pp (fld s'.memory Mw 32).toNat 20 := cf_buf hT' hord0 hL0 hcf hpp
        have hJs : JrNZ (callEntryStateHOLFinite s' callee) :=
          jrNZ_congr (s := s') rfl (trk_jrNZ hT' hJ0)
        have hac : ∀ a, ArgCells (sgSet gw).params [.val (.word (fld s'.memory Mw 32)), v2, .val (.word Nn)] a →
            ¬ ProtCell guestC Γ' a := fun a ha => bufOK_noProt hordp hLp hbuf (argCells_set ha)
        obtain ⟨Γ'', q1, q2, hc3, -⟩ := hR hg hna Γ' hGe ⟨pp, hpe, argsOK_set hbuf⟩ ⟨hJs, Nn, rfl, by omega⟩
        have hq1 : q1 = pp := by have := hc3.1; rw [hpe] at this; exact (Option.some.inj this).symm
        subst hq1
        have hT3 := trkG_call (gw := gw) hT' hord0 hL0 rfl rfl hc3 (fun g _ h => h)
          (fun a ha => cf_argW hT' hbuf (argCells_set ha)) (by
            rintro a ⟨o, ho, k, hk, hpr, he⟩ hpw
            subst he
            have hnf : NoFrameCell tEV tCK Γ' (o.cell k) := by
              rcases hpw.1 with ⟨e, -, k', hk', -⟩ | h
              · simp at hk'
              · exact h
            have hnm : NoMsgCell Γ' (o.cell k) := hpw.2
            rcases cell_back hT' hord0 hL0 ho hk with ⟨o0, ho0, hb0, ht0, hk0⟩ | hfr
            · refine Or.inr (Or.inr (Or.inl ⟨⟨o0, ho0, k, hk0, by rw [ht0]; exact hpr,
                by unfold Obj.cell; rw [hb0]⟩, Or.inr ?_, ?_⟩))
              · intro x hx hxt ⟨hin1, hin2⟩
                obtain ⟨x', hx', hxb, hxt', hxs⟩ := trk_ext hT' x hx
                refine hnf x' hx' (by rw [hxt']; exact hxt) ⟨?_, ?_⟩
                · unfold Obj.lo at hin1 ⊢; rw [hxb]; exact hin1
                · unfold Obj.hi at hin2 ⊢; rw [hxb]; omega
              · intro x hx hxt ⟨hin1, hin2⟩
                obtain ⟨x', hx', hxb, hxt', hxs⟩ := trk_ext hT' x hx
                refine hnm x' hx' (by rw [hxt']; exact hxt) ⟨?_, ?_⟩
                · unfold Obj.lo at hin1 ⊢; rw [hxb]; exact hin1
                · unfold Obj.hi at hin2 ⊢; rw [hxb]; omega
            · exact Or.inr (Or.inl hfr)) hd3 hbe3
        obtain ⟨e1, he1, hb1, ht1, hs1⟩ := trk_ext hT' e0 he0.1
        have hgs3 := gs_keep hc3 hGe hac he1
          (ht1.trans he0.2.1) (le_trans hsz0 hs1) (by
            intro k hk h
            rcases h.1 with ⟨e, -, k', hk', -⟩ | h
            · simp at hk'
            · exact h e1 he1 (Or.inl (ht1.trans he0.2.1))
                (inO_cell hordp hLp he1 (k := 8 * k) (by rcases hk with rfl | rfl <;> omega)))
        rw [hb1] at hgs3
        exact ⟨Γ'', hT3, by rw [hgs3]; exact hgs'⟩
      refine hoareG_seq (R := fun r u => (r = none ∧ KC H gw Γ0 s0 p0 e0 u) ∨
          (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
        (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
      · refine hoareG_callD (FunSpec.and (sumSpecA_rel hsc) (funSpec_dom _)) ?_ ?_
        · intro s' _ ⟨hl', hK⟩ vs hvs callee v st3 ⟨hR, hd3, hbe3⟩ _
          obtain ⟨Γ'', hT3, hgs3⟩ := key s' (by rw [hl']; exact hmq) (by rw [hl']; exact hnq) hK vs hvs callee _ st3 hR
            hd3 hbe3 (by simp [Good]) (not_abortive_ret v)
          exact Or.inl ⟨rfl, Γ'', trkG_congr hH hT3 rfl rfl rfl rfl, hgs3⟩
        · intro s' _ ⟨hl', hK⟩ vs hvs callee r st3 ⟨hR, hd3, hbe3⟩ _ habn
          refine Or.inr ⟨by simp, fun rr hrr hna => ?_⟩
          simp only [Option.some.injEq] at hrr
          subst hrr
          obtain ⟨Γ'', hT3, hgs3⟩ := key s' (by rw [hl']; exact hmq) (by rw [hl']; exact hnq) hK vs hvs callee _ st3 hR
            hd3 hbe3 (good_of_abn habn) hna
          exact ⟨Γ'', trkG_congr hH hT3 rfl rfl rfl rfl, hgs3⟩
      · refine hoareG_return fun u _ h v _ rr _ _ => ?_
        rcases h with ⟨_, Γ'', hT3, hgs3⟩ | ⟨h, -⟩
        · exact ⟨Γ'', trkG_congr hH hT3 rfl rfl rfl rfl, hgs3⟩
        · exact absurd rfl h
  · intro s _ _ vs _ callee r st ⟨_, hx, _⟩ _ habn rr hrr hna
    simp only [Option.some.injEq] at hrr
    subst hrr
    exact absurd (habrt hx habn) hna

end cft


section cfg
variable {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- The tracked state between the gas calls. -/
def TP (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 : Obj) (Mw Nn Cc : BitVec 64)
    (u : State σ) : Prop :=
  u.locals.lookup (nm "n") = some (.val (.word Nn)) ∧
    u.locals.lookup (nm "code") = some (.val (.word Cc)) ∧ Nn.toNat ≤ 65536 ∧
    u.locals.lookup (nm "msg") = some (.val (.word Mw)) ∧
    ∃ Γ, Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ u ∧ GS u.memory e0.base ≤ GS s0.memory e0.base

theorem gas_sub (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {ks : List Nat}
    (hks : ks ⊆ gasKs) (he0 : e0 ∈ Γ0) (het : e0.ty = tEV)
    (hsz0 : 280 ≤ e0.size) : ∀ k ∈ ks, WCell guestC Γ0 (e0.cell k) ∨ PWf e0 Γ0 (e0.cell k) :=
  fun k hk => gas_foot hord0 hL0 he0 het hsz0 k (hks hk)

/-- A gas call (`charge_gas` / `charge_state_gas`): its effect on the tracked state. -/
theorem tp_gas (hD : DrvCfg guestC H tEV tCK) (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0)
    (he0 : EvRun tEV Γ0 s0 e0) (hsz0 : 280 ≤ e0.size)
    {Mw Nn Cc : BitVec 64} {s st : State σ} (hs : TP H Γ0 s0 p0 e0 Mw Nn Cc s) {ks : List Nat}
    (hks : ks ⊆ gasKs)
    (hmod : ModifiesOnly (fun a => ∃ k ∈ ks, a = e0.base + BitVec.ofNat 64 (8 * k)) s.memory st.memory)
    (hg : st.globals = s.globals) (hd : st.memaddrs = s.memaddrs) (hbe : st.be = s.be)
    (hgs : GS st.memory e0.base ≤ GS s.memory e0.base) :
    ∃ Γ, Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ st ∧ GS st.memory e0.base ≤ GS s0.memory e0.base := by
  obtain ⟨-, -, -, -, Γ, hT, hgs0⟩ := hs
  have hks' : ∀ k ∈ ks, k ∈ evDriverSlots := fun k hk => by
    have := hks hk; simp [gasKs] at this; simp [evDriverSlots]; omega
  exact ⟨Γ, trk_drv hD.fc hT he0.1 he0.2.1 hks' hmod hg hd hbe (gas_sub hord0 hL0 hks he0.1 he0.2.1 hsz0),
    le_trans hgs hgs0⟩

theorem cf_gas (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hsc : SumSpecA σ X guestC H (nm "set_code") (sgSet gw) (fun vs s _ => JrNZ s ∧ CodeLen vs)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True))
    (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) (he0 : EvRun tEV Γ0 s0 e0)
    (hsz0 : 280 ≤ e0.size) {Mw : BitVec 64} (hcf : CfOK guestC Γ0 s0.memory p0 Mw)
    (hJ0 : JrNZ s0) {Nn Cc : BitVec 64} :
    HoareG σ X (TP H Γ0 s0 p0 e0 Mw Nn Cc) cfGas (QC H gw Γ0 s0 p0 e0) := by
  have hH := hD.fc.hooks
  refine hoareG_decCall (FunSpec.and (pure_words_of hF.hX) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs _ callee v st ⟨hR, hd, hbe⟩ _ _
    obtain ⟨hm, hg, v', hv', -⟩ := hR (by simp [Good])
    cases hv'
    refine hoareG_conseq (Q := QC H gw Γ0 s0 p0 e0) ?_ (fun _ _ h => h)
      (fun r t _ _ h => qc_locals hH h _)
    have hs3 : TP H Γ0 s0 p0 e0 Mw Nn Cc
        (setVarHOLFinite (nm "w") v { st with locals := s.locals }) := by
      obtain ⟨hn, hc, hN, hml, Γ, hT, hgs⟩ := hs
      exact ⟨(lk_set_ne _ _ (by decide)).trans hn, (lk_set_ne _ _ (by decide)).trans hc, hN,
        (lk_set_ne _ _ (by decide)).trans hml, Γ,
        trk_congr hH hT hm hg hd hbe, by rw [show (setVarHOLFinite (nm "w") v
          { st with locals := s.locals }).memory = s.memory from hm]; exact hgs⟩
    refine hoareG_pre (P := TP H Γ0 s0 p0 e0 Mw Nn Cc) ?_ (fun u _ hu => by rw [hu]; exact hs3)
    refine hoareG_seq (R := fun r u => (r = none ∧ TP H Γ0 s0 p0 e0 Mw Nn Cc u) ∨
        (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_callD (FunSpec.and (charge_spec hF.hX) (funSpec_dom _)) ?_ ?_
      · intro s' _ hs' vs _ callee v st' ⟨hR, hd, hbe⟩ _
        obtain ⟨e, a, -, he, hg, hcase⟩ := hR (by simp [Good])
        obtain ⟨-, -, -, -, Γ, hT, -⟩ := id hs'
        rw [show gword (callEntryStateHOLFinite s' callee) nmEv = gword s' nmEv from rfl,
          trk_ev hT he0.2.2, Option.some.injEq] at he
        subst he
        rcases hcase with ⟨hr, -, -⟩ | ⟨-, hle, hm⟩
        · cases hr
        · have hmod : ModifiesOnly (fun a => ∃ k ∈ [8, 23], a = e0.base + BitVec.ofNat 64 (8 * k))
              s'.memory st'.memory := by
            rw [hm]
            exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _) ⟨8, by simp, rfl⟩ _)
              ⟨23, by simp, rfl⟩ _
          obtain ⟨Γ', hT', hgs'⟩ := tp_gas hD hord0 hL0 he0 hsz0 hs' (by simp [gasKs]) hmod hg hd hbe
            (by rw [hm]; exact gs_charge hle)
          obtain ⟨hn, hc, hN, hml, -⟩ := hs'
          exact Or.inl ⟨rfl, hn, hc, hN, hml, Γ', trk_congr hH hT' rfl rfl rfl rfl, hgs'⟩
      · intro s' _ hs' vs _ callee r st' ⟨hR, hd, hbe⟩ _ habn
        obtain ⟨e, a, -, -, hg, hcase⟩ := hR (good_of_abn habn)
        rcases hcase with ⟨-, -, hm⟩ | ⟨hr, -, -⟩
        · obtain ⟨-, -, -, -, Γ, hT, hgs⟩ := hs'
          exact Or.inr ⟨by simp, qc_of_trk (trk_congr hH hT hm hg hd hbe) (by
            show GS st'.memory e0.base ≤ _; rw [hm]; exact hgs)⟩
        · subst hr; rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
    · refine hoareG_pre (P := TP H Γ0 s0 p0 e0 Mw Nn Cc) ?_
        (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
      refine hoareG_seq (R := fun r u => (r = none ∧ TP H Γ0 s0 p0 e0 Mw Nn Cc u) ∨
          (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
        (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
      · refine hoareG_callD (FunSpec.and (csg_spec hF.hX) (funSpec_dom _)) ?_ ?_
        · intro s' _ hs' vs _ callee v st' ⟨hR, hd, hbe⟩ _
          obtain ⟨e, a, -, he, hg, hcase⟩ := hR (by simp [Good])
          obtain ⟨-, -, -, -, Γ, hT, -⟩ := id hs'
          rw [show gword (callEntryStateHOLFinite s' callee) nmEv = gword s' nmEv from rfl,
            trk_ev hT he0.2.2, Option.some.injEq] at he
          subst he
          have hgs := gs_csg hcase
          have hmod : ModifiesOnly (fun a => ∃ k ∈ [9, 8, 24], a = e0.base + BitVec.ofNat 64 (8 * k))
              s'.memory st'.memory := by
            rcases hcase with ⟨-, -, hm⟩ | ⟨-, -, -, hm⟩ | ⟨-, -, hr, -⟩
            · rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) ⟨9, by simp, rfl⟩ _
            · rw [hm]
              unfold csgMem
              exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
                ⟨9, by simp, rfl⟩ _) ⟨8, by simp, rfl⟩ _) ⟨24, by simp, rfl⟩ _
            · cases hr
          obtain ⟨Γ', hT', hgs'⟩ := tp_gas hD hord0 hL0 he0 hsz0 hs' (by simp [gasKs]) hmod hg hd hbe hgs
          obtain ⟨hn, hc, hN, hml, -⟩ := hs'
          exact Or.inl ⟨rfl, hn, hc, hN, hml, Γ', trk_congr hH hT' rfl rfl rfl rfl, hgs'⟩
        · intro s' _ hs' vs _ callee r st' ⟨hR, hd, hbe⟩ _ habn
          obtain ⟨e, a, -, -, hg, hcase⟩ := hR (good_of_abn habn)
          rcases hcase with ⟨-, hr, -⟩ | ⟨-, -, hr, -⟩ | ⟨-, -, -, hm⟩
          · subst hr; rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
          · subst hr; rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h
          · obtain ⟨-, -, -, -, Γ, hT, hgs⟩ := hs'
            exact Or.inr ⟨by simp, qc_of_trk (trk_congr hH hT hm hg hd hbe) (by
              show GS st'.memory e0.base ≤ _; rw [hm]; exact hgs)⟩
      · exact hoareG_pre (cf_tail hF hD hsc hord0 hL0 he0 hsz0 hcf hJ0)
          (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  · intro s _ _ vs _ callee r st ⟨hR, _⟩ _ habn
    obtain ⟨-, -, v', hv', -⟩ := hR (good_of_abn habn)
    subst hv'
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

end cfg


section cfh
variable {H : Hooks σ} {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 : Obj}

/-- **The body of `create_finish`.** -/
theorem cf_hoare (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hsc : SumSpecA σ X guestC H (nm "set_code") (sgSet gw) (fun vs s _ => JrNZ s ∧ CodeLen vs)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True))
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0) (hord0 : p0.Ordered)
    (hL0 : Layout guestC p0 Γ0) (he0 : EvRun tEV Γ0 s0 e0) (hsz0 : 280 ≤ e0.size)
    {Mw : BitVec 64} (hMl : s0.locals.lookup (nm "msg") = some (.val (.word Mw)))
    (hcf : CfOK guestC Γ0 s0.memory p0 Mw) (hJ0 : JrNZ s0) :
    HoareG σ X (fun u => u = s0) cfBody (QC H gw Γ0 s0 p0 e0) := by
  have hH := hD.fc.hooks
  have hT0 : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ0 s0 := trk_refl hG0 hp0
  refine hoareG_dec fun s1 _ hs1 v hv _ => ?_
  rw [hs1] at hv ⊢
  obtain ⟨Cc, rfl⟩ := ev_load_word hv
  refine hoareG_conseq (Q := QC H gw Γ0 s0 p0 e0) ?_ (fun _ _ h => h) (fun r t _ _ h => qc_locals hH h _)
  refine hoareG_dec fun s2 _ hs2 v2 hv2 _ => ?_
  rw [hs2] at hv2 ⊢
  obtain ⟨Nn, rfl⟩ := ev_load_word hv2
  refine hoareG_conseq (Q := QC H gw Γ0 s0 p0 e0) ?_ (fun _ _ h => h) (fun r t _ _ h => qc_locals hH h _)
  set u2 := setVarHOLFinite (nm "n") (.val (.word Nn))
    (setVarHOLFinite (nm "code") (.val (.word Cc)) s0) with hu2
  have hT2 : Trk guestC H Γ0 s0 p0 (PWf e0 Γ0) Γ0 u2 := trk_congr hH hT0 rfl rfl rfl rfl
  have hn2 : u2.locals.lookup (nm "n") = some (.val (.word Nn)) := lk_set_self _ _ _
  have hc2 : u2.locals.lookup (nm "code") = some (.val (.word Cc)) :=
    (lk_set_ne _ _ (by decide)).trans (lk_set_self _ _ _)
  have hm2 : u2.locals.lookup (nm "msg") = some (.val (.word Mw)) :=
    (lk_set_ne _ _ (by decide)).trans ((lk_set_ne _ _ (by decide)).trans hMl)
  have hq : ∀ u : State σ, u = u2 → ∀ r, QC H gw Γ0 s0 p0 e0 r (emptyLocalsHOLFinite u) := by
    intro u hu r
    subst hu
    exact qc_of_trk (trk_congr hH hT2 rfl rfl rfl rfl) (le_refl _)
  refine hoareG_seq (R := fun r u => (r = none ∧ u = u2) ∨ (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
  · refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨hu, _⟩ => Or.inl ⟨rfl, hu⟩)
    refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨⟨hu, _⟩, _⟩ => Or.inl ⟨rfl, hu⟩)
    exact hoareG_raise fun u _ ⟨⟨hu, _⟩, _⟩ v _ => Or.inr ⟨by simp, hq u hu _⟩
  · refine hoareG_pre (P := fun u => u = u2) ?_
      (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
    refine hoareG_seq (R := fun r u => (r = none ∧ u = u2 ∧ Nn.toNat ≤ 65536) ∨
        (r ≠ none ∧ QC H gw Γ0 s0 p0 e0 r u)) ?_
      (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
    · refine hoareG_ite (hoareG_raise fun u _ ⟨hu, _⟩ v _ => Or.inr ⟨by simp, hq u hu _⟩) ?_
      refine hoareG_skip fun u _ ⟨hu, hc⟩ => Or.inl ⟨rfl, hu, ?_⟩
      rw [hu] at hc
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
      rw [ev_cw] at hx
      rw [lv_of rfl hn2] at hy
      cases hx; cases hy
      have := lower_false hxy
      simpa using this
    · refine hoareG_pre (cf_gas hF hD hsc hord0 hL0 he0 hsz0 hcf hJ0 (Nn := Nn) (Cc := Cc)) ?_
      intro u _ h
      rcases h with ⟨-, hu, hN⟩ | ⟨h, -⟩
      · rw [hu]; exact ⟨hn2, hc2, hN, hm2, Γ0, hT2, le_refl _⟩
      · exact absurd rfl h

end cfh

/-- **`create_finish`** (the `FinHyps.cf` callee fact over `guestC`), from the fold's summary of
`set_code` (`sgSet`: the target address `buf 20`; Pre `JrNZ`; `prot` writes outside every frame /
message record). -/
theorem cf_spec {H : Hooks σ} (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    {gw : List MlS}
    (hsc : SumSpecA σ X guestC H (nm "set_code") (sgSet gw) (fun vs s _ => JrNZ s ∧ CodeLen vs)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True))
    (hfp : KeepsFp σ X (nm "create_finish")) :
    SumSpecO σ X guestC H (nm "create_finish") (sgA 2 gw) (CfPre guestC tEV)
      (PWtopM tEV tCK gasKs) CfQ := by
  rintro vs body callee rs hl s0 hs hloc r hr hg hna Γ0 hG0 ⟨p0, hp0, -⟩ ⟨⟨e0, he0⟩, hJ0, hcf0⟩
  have hfp' := hfp vs body callee rs hl s0 hs hloc r hr hg hna
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A, B, rfl, hshA, -, hlA, -⟩ := lookupCode_two code_cf (by decide) hl
  obtain ⟨Mw, rfl⟩ := val_of_shapeEq_one hshA
  have hMl : s0.locals.lookup (nm "msg") = some (.val (.word Mw)) := by rw [hloc]; exact hlA
  have hcf := hcf0 Mw rfl p0 hp0
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hsz0 : 280 ≤ e0.size := by
    have := (hL0.1 e0 he0.1).2.2.2.1; rw [he0.2.1] at this; exact this
  have Hb := cf_hoare hF hD hsc hG0 hp0 hord0 hL0 he0 hsz0 hMl hcf hJ0 s0 hs rfl
    (by rw [hr]; exact hg)
  rw [hr] at Hb
  obtain ⟨Γ', hT, hgs⟩ := Hb r rfl hna
  obtain ⟨p', hc⟩ := trkG_sumCore (sg := sgA 2 gw) (r := r) (vs := [.val (.word Mw), B])
    (PWs := fun a => (ProtCell guestC Γ0 a ∧
      PWtopM tEV tCK gasKs [.val (.word Mw), B] s0 Γ0 a) ∨ ¬ InObj Γ0 a.toNat) hT hp0
    (fun a h => h.elim (fun ⟨hpc, h, hm⟩ =>
      Or.inl ⟨hpc, h.elim (fun ⟨k, hk, ha⟩ => Or.inl ⟨e0, he0, k, hk, ha⟩) Or.inr, hm⟩) Or.inr)
    (fun g _ h => h) rfl rfl
  refine ⟨Γ', _, p', hc, fpQ_of_fp hfp', fun e he => ?_⟩
  rw [he0.2.2, Option.some.injEq] at he
  subst he
  exact hgs


/-! ## `FinHyps` with `set_retdata` and `create_finish` discharged -/

/-- **`finHyps_guest` with the `set_retdata` and `create_finish` facts proved** (`sd_spec`,
`cf_spec`). Open: `state_restore`, `incorporate_child_on_success`, a `set_code` summary, and the
table facts of `finHyps_guest`. -/
theorem finHyps_guest_rc {H : Hooks σ} (hF : FoldOK σ X guestC H) (hK : Shards.GuestHooks H)
    (hLH : Hooks.LstHooks H)
    (hD : DrvCfg guestC H tEV tCK) (hR : RdHooks H) {gsr gsc gic : List MlS}
    (gwsr : nmEv ∉ gsr ∧ nmCC ∉ gsr) (jsr : JrOut (gsr))
    (sr : SumSpecA σ X guestC H (nm "state_restore") (sgA 1 gsr) (fun _ s _ => JrNZ s)
      (PWtopM tEV tCK []) FQ)
    (gwsc : nmEv ∉ gsc ∧ nmCC ∉ gsc) (jsc : JrOut (gsc))
    (hsc : SumSpecA σ X guestC H (nm "set_code") (sgSet gsc) (fun vs s _ => JrNZ s ∧ CodeLen vs)
      (PWtopM tEV tCK []) (fun _ _ _ _ _ _ => True))
    (cfFp : KeepsFp σ X (nm "create_finish")) (sdFp : KeepsFp σ X (nm "set_retdata"))
    (gwic : nmEv ∉ gic ∧ nmCC ∉ gic) (jic : JrOut (gic))
    (ic : SumSpecA σ X guestC H (nm "incorporate_child_on_success") (sgA 1 gic)
      (IcPreG tEV Inc.IcsX) (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG)
    (rbS : CSumm σ X guestC H (nm "rollback_child_access") (sgRb tEV) capsRb)
    (rbFp : KeepsFp σ X (nm "rollback_child_access")) (rbNe : NoEvm σ X (nm "rollback_child_access"))
    (auS : CSumm σ X guestC H (nm "address_to_u256") { params := [.any], grows := false } [])
    (auFp : KeepsFp σ X (nm "address_to_u256")) (auNe : NoEvm σ X (nm "address_to_u256"))
    (mcFp : KeepsFp σ X (nm "memcpy")) (mcNe : NoEvm σ X (nm "memcpy"))
    (spFp : KeepsFp σ X (nm "stack_push")) :
    FinHyps σ X guestC H tEV tCK GP GR Inc.IcsX ⟨gsr, gsc, [], [], gic, [], []⟩ :=
  finHyps_guest hF hK hLH hD gwsr jsr sr gwsc jsc (cf_spec hF hD hsc cfFp) (by simp) (by simp)
    (sd_spec hF hD hR sdFp) gwic jic ic rbS rbFp rbNe auS auFp auNe mcFp mcNe spFp


end InitECandidate.Solver.MemSafe.Frames
