import InitECandidate.Solver.Band3.OpAux
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Band item #19: `op_sload` (sonnet-store)

```
fun 1 op_sload() {
  var {1,1,1,1} kv = stack_pop();
  var 1 key = evm_key_buf;
  u256_to_be32(kv, key);
  var target = lds 1 ((lds 1 (ev + EV_MSG)) + MSG_CURRENT_TARGET);
  var 1 warm = is_warm_storage_key(target, key);
  if warm != 0 { charge_gas(100); } else { charge_gas(2100); warm_storage_key(target, key); }
  var {1,1,1,1} v = get_storage(target, key);
  stack_push(v); pc_add(1); return 0; }
```
**`osl_condCost hGT`**: `CondCost … "op_sload" (sg0 []) (PreOpX guestC tEV tCK GP GR M) oslB`, the `hsl` of
`op_dispatch_condCost_R`. The prefix callees are `tab26` entries (536, 549, 76, 532, 75), threaded with
`OpA` (JrNZ, the running EV record, the message record and the `BufOK 20` fact of its
`CURRENT_TARGET` pointer). The last conditional call is `get_storage` (`gs_condCost`); the suffix
(`stack_push`, `pc_add`) is all-states.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.Band3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.Spec.Mpt.Leaves (ev_load1_inv' ev_add2_inv')

variable {σ : Type}

def tgtE : ExpHOL 64 :=
  .load .one (.op .add [.load .one (.op .add [.var .global (nm "ev"), cw 112]), cw 32])

def oslSuf : ProgHOL 64 :=
  .seq (callD (nm "stack_push") [lv (nm "v")]) (.seq (callD (nm "pc_add") [cw 1]) (.return (cw 0)))

def oslBody : ProgHOL 64 :=
  .decCall (nm "kv") sh4 (nm "stack_pop") []
    (.dec (nm "key") .one (.var .global (nm "evm_key_buf"))
      (.seq (callD (nm "u256_to_be32") [lv (nm "kv"), lv (nm "key")])
        (.dec (nm "target") .one tgtE
          (.decCall (nm "warm") .one (nm "is_warm_storage_key") [lv (nm "target"), lv (nm "key")]
            (.seq (.ite (.cmp .notEqual (lv (nm "warm")) (cw 0))
                (callD (nm "charge_gas") [cw 100])
                (.seq (callD (nm "charge_gas") [cw 2100])
                  (callD (nm "warm_storage_key") [lv (nm "target"), lv (nm "key")])))
              (.decCall (nm "v") sh4 (nm "get_storage") [lv (nm "target"), lv (nm "key")]
                oslSuf))))))

theorem entry_osl : fnEntry Guest.Software.guestFn_op_sload =
    (nm "op_sload", [], oslBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv

theorem code_osl : guestCode (nm "op_sload") = some ([], oslBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 527) (by decide)) ⟨_, rfl⟩
    entry_osl

/-! ## Capability facts -/

def stopCaps : List Cap := [⟨nm "ev", 0, [2], false⟩]
def cgCaps : List Cap := [⟨nm "ev", 0, [8, 23], false⟩]
def iwCaps : List Cap := [⟨nm "sk_buf", 24, [], false⟩]
def wskCaps : List Cap :=
  [⟨nm "sk_buf", 24, [], false⟩, ⟨anyG, 10, [], true⟩, ⟨anyG, 14, [], true⟩, ⟨anyG, 11, [], true⟩,
    ⟨anyG, 12, [], true⟩, ⟨anyG, 42, [], true⟩, ⟨anyG, 43, [], true⟩, ⟨anyG, 44, [], true⟩,
    ⟨anyG, 45, [], true⟩, ⟨anyG, 55, [], true⟩, ⟨anyG, 65, [], true⟩, ⟨anyG, 66, [], true⟩, ⟨anyG, 67, [], true⟩, ⟨anyG, 68, [], true⟩, ⟨anyG, 69, [], true⟩, ⟨anyG, 70, [], true⟩, ⟨anyG, 71, [], true⟩]
def pushCaps : List Cap := [⟨nm "ev", 0, [1, 2, 29], false⟩]

/-- The two conditions of `opA_step` on a capability list. -/
def CapOK (cs : List Cap) : Prop :=
  (∀ c ∈ cs, (c.t = tEV → 14 ∉ c.ks) ∧ (c.all = true → c.t ≠ tEV ∧ tEV < ownBase) ∧
      (∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz)) ∧
  (∀ c ∈ cs, (c.t = tMSGh → 4 ∉ c.ks) ∧ (c.t = tMSGs → 4 ∉ c.ks) ∧
      (c.all = true → c.t ≠ tMSGh ∧ c.t ≠ tMSGs ∧ tMSGs < ownBase) ∧
      (∀ k ∈ c.ks, 8 * k + 8 ≤ (guestC.ty c.t).minSz))

theorem capOK_stop : CapOK stopCaps := by unfold CapOK stopCaps; decide
theorem capOK_cg : CapOK cgCaps := by unfold CapOK cgCaps; decide
theorem capOK_iw : CapOK iwCaps := by unfold CapOK iwCaps; decide
theorem capOK_wsk : CapOK wskCaps := by unfold CapOK wskCaps; decide
theorem capOK_nil : CapOK [] := by unfold CapOK; decide

/-- `ReqOK` for capabilities on `ev` / `sk_buf` only (plus type capabilities). -/
theorem reqOK_evsk {cs : List Cap} {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs}
    (hcs : ∀ c ∈ cs, c.g ≠ anyG → (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64))
    (hG : G guestC H Γ s) (hA : OpA s Γ p) : ReqOK cs s Γ := by
  intro c hc hne
  rcases hcs c hc hne with ⟨hg, ht⟩ | ⟨hg, ht⟩
  · obtain ⟨-, e, M, he, het, hev, -⟩ := hA
    exact ⟨e, he, het.trans ht.symm, hg ▸ hev⟩
  · obtain ⟨e, he, het, heb⟩ := Frames.sk_obj hG hA.1
    exact ⟨e, he, het.trans ht.symm, hg ▸ heb⟩

/-- The thread invariant: `OpA` and buffer locals. -/
def AuxL (xs : List (MlS × Nat)) (s : State σ) (Γ : Gam) (p : Ptrs) : Prop :=
  OpA s Γ p ∧ ∀ q ∈ xs, AuxA q.1 q.2 s Γ p

/-- One summary step of a callee with `OpA`-compatible capabilities. -/
theorem auxL_core {H : Hooks σ} (hH : HooksLawful guestC H) {xs : List (MlS × Nat)}
    {sg : Sig} {cs : List Cap} {Γ Γ' : Gam} {s st : State σ} {callee : Lcs}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hG : G guestC H Γ s) (hA : AuxL xs s Γ p)
    (hargs : ArgsOK guestC Γ p sg.params vs) (hc : CapOK cs)
    (hgw : Frames.nmEv ∉ sg.gw ∧ Frames.JrOut sg.gw)
    (hcore : SumCore guestC H sg
      (fun a => ProtCell guestC Γ a ∧ CapPW cs (callEntryStateHOLFinite s callee) Γ a) Γ
      (callEntryStateHOLFinite s callee) vs r st Γ' p p')
    (s' : State σ) (hm : s'.memory = st.memory) (hg : s'.globals = st.globals)
    (hl : ∀ q ∈ xs, s'.locals.lookup q.1 = s.locals.lookup q.1) :
    AuxL xs s' Γ' p' := by
  have hstp := stp_of_core_s hH hG hcore
  have hG' : G guestC H Γ (callEntryStateHOLFinite s callee) := (Frames.G_locFree hH s _ _).mpr hG
  have h1 := opA_step hG' (opA_congr (u := callEntryStateHOLFinite s callee) rfl rfl hA.1) hargs
    hc.1 hc.2 hgw hcore
  exact ⟨opA_congr hm hg h1, fun q hq => auxA_step (hA.2 q hq) hstp (hl q hq)⟩

/-! ## Argument facts -/

theorem argsOK_buf_any {C : Cfg} {Γ : Gam} {p : Ptrs} {sg : Sig} {n : Nat}
    (hsg : sg.params = [.buf n, .any]) {s : State σ} {x y : MlS} {A : BitVec 64}
    (hl : s.locals.lookup x = some (.val (.word A))) (hb : BufOK C Γ p A.toNat n)
    {vs : List (ValueHOL 64)} (hvs : evs s [lv x, lv y] = some vs) : ArgsOK C Γ p sg.params vs := by
  obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2; cases hr2
  rw [ev_lv, hl] at h1; cases h1
  rw [hsg]
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; exact ⟨A, rfl, hb⟩
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; trivial
  · simp at hpt

theorem argsOK_any_buf {C : Cfg} {Γ : Gam} {p : Ptrs} {sg : Sig} {n : Nat}
    (hsg : sg.params = [.any, .buf n]) {s : State σ} {x y : MlS} {B : BitVec 64}
    (hl : s.locals.lookup y = some (.val (.word B))) (hb : BufOK C Γ p B.toNat n)
    {vs : List (ValueHOL 64)} (hvs : evs s [lv x, lv y] = some vs) : ArgsOK C Γ p sg.params vs := by
  obtain ⟨v1, r1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨v2, r2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2; cases hr2
  rw [ev_lv, hl] at h2; cases h2
  rw [hsg]
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; trivial
  · simp only [List.getElem?_cons_succ, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv; exact ⟨B, rfl, hb⟩
  · simp at hpt

/-- `evm_key_buf` is a writable 32-byte block (copy of `Frames.key_bufOK`, which lives in a
heavier module). -/
theorem key_bufOK' {H : Hooks σ} {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC H Γ s)
    (hps : ptrsOf s = some p) {w : BitVec 64} (hw : gword s (nm "evm_key_buf") = some w) :
    BufOK guestC Γ p w.toNat 32 := by
  obtain ⟨q, hq, hord, hL, -, -, hGl, -⟩ := id hG
  obtain rfl : p = q := Option.some.inj (hps.symm.trans hq)
  obtain ⟨v, hv, o, ho, hob, hot⟩ := hGl (nm "evm_key_buf") (.ptr tB32) gt_evm_key_buf
  have hvw : v = w := Option.some.inj (hv.symm.trans hw)
  subst hvw
  have hs : 32 ≤ o.size := by
    have := (hL.1 o ho).2.2.2.1
    rw [hot, ty_B32] at this
    exact this
  refine Struct.bufOK_obj hord hL ho (fun k => by rw [hot, ty_B32]; rfl) ?_ ?_
  · unfold Obj.lo; rw [hob]
  · unfold Obj.hi; rw [hob]; omega

/-! ## Evaluating the target and the key -/

theorem tgt_eval {s : State σ} {Γ : Gam} {p : Ptrs} (hA : OpA s Γ p) {v : ValueHOL 64}
    (hv : ev s tgtE = some v) :
    ∃ T : BitVec 64, v = .val (.word T) ∧ BufOK guestC Γ p T.toNat 20 := by
  obtain ⟨-, e, M, he, het, hev, hM, hMt, hMs, hrd, hbuf⟩ := hA
  unfold tgtE at hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load1_inv' hv
  obtain ⟨x, c, hx, hc, he2⟩ := ev_add2_inv' hw
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at he2
  subst he2
  rw [ev_cw] at hc
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hc
  subst hc
  obtain ⟨w2, hw2, -, hxe⟩ := ev_load1_inv' hx
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hxe
  subst hxe
  obtain ⟨a, b, ha, hb, hab⟩ := ev_add2_inv' hw2
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hab
  subst hab
  have hga : gword s Frames.nmEv = some a := by
    unfold gword; rw [show s.globals.lookup (nm "ev") = some (.val (.word a)) from ha]
  rw [hga] at hev
  have hae : a = e.base := (Option.some.inj hev)
  rw [ev_cw] at hb
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hb
  subst hb
  subst hae
  have h1 : e.cell 14 = e.base + BitVec.ofNat 64 112 := by unfold Obj.cell; rfl
  have h2 : M.cell 4 = M.base + BitVec.ofNat 64 32 := by unfold Obj.cell; rfl
  rw [← h1, hrd, ← h2]
  exact ⟨_, rfl, hbuf⟩

/-! ## The cost -/

def bTb : Nat := 20
def bIw : Nat := 239807672958224171027
def bWsk : Nat := 340282366920938464588625995928050860146
def oslSufB : Nat := 73786976294838206474

set_option cbv.maxSteps 4000000000 in
theorem oslSuf_cost : Cost σ guestCtx oslSuf oslSufB :=
  cost_guest_of_costA (by decide_cbv)

theorem cs_pop : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "stack_pop")
    ⟨[], [], [], false⟩ stopCaps :=
  ctab% Rec.tab26_guestR
theorem cs_tb : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "u256_to_be32")
    ⟨[.any, .buf 32], [], [], false⟩ [] :=
  ctab% Rec.tab26_guestR
theorem cs_iw : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "is_warm_storage_key")
    ⟨[.any, .any], [], [], false⟩ iwCaps :=
  ctab% Rec.tab26_guestR
theorem cs_cg : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "charge_gas")
    ⟨[.any], [], [], false⟩ cgCaps :=
  ctab% Rec.tab26_guestR
theorem cs_wsk : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "warm_storage_key")
    ⟨[.any, .any], [], [], true⟩ wskCaps :=
  ctab% Rec.tab26_guestR

theorem evsk_stop : ∀ c ∈ stopCaps, c.g ≠ anyG →
    (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64) := by
  unfold stopCaps; decide
theorem evsk_cg : ∀ c ∈ cgCaps, c.g ≠ anyG →
    (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64) := by
  unfold cgCaps; decide
theorem evsk_iw : ∀ c ∈ iwCaps, c.g ≠ anyG →
    (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64) := by
  unfold iwCaps; decide
theorem evsk_wsk : ∀ c ∈ wskCaps, c.g ≠ anyG →
    (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64) := by
  unfold wskCaps; decide

theorem reqOK_ent {H : Hooks σ} (hH : HooksLawful guestC H) {cs : List Cap} {xs : List (MlS × Nat)}
    (hcs : ∀ c ∈ cs, c.g ≠ anyG →
      (c.g = Frames.nmEv ∧ c.t = tEV) ∨ (c.g = Frames.nmSk ∧ c.t = tB64))
    {s : State σ} {callee : Lcs} {Γ : Gam} {p : Ptrs} (hG : G guestC H Γ s) (hA : AuxL xs s Γ p) :
    ReqOK cs (callEntryStateHOLFinite s callee) Γ :=
  reqOK_evsk hcs ((Frames.G_locFree hH s _ _).mpr hG) (opA_congr rfl rfl hA.1)

theorem gw_nil {sg : Sig} (h : sg.gw = []) : Frames.nmEv ∉ sg.gw ∧ Frames.JrOut sg.gw := by
  rw [h]; exact ⟨List.not_mem_nil, jrOut_nil⟩

def oslB : Nat :=
  1 + 0 + (1 + bTb + 0 + (1 + bIw + (max (1 + 0 + 0) ((1 + 0 + 0) + (1 + bWsk + 0)) +
    (1 + gsB + oslSufB))))

set_option linter.unusedVariables false in
/-- **Band item #19**: `op_sload`'s conditional cost under `PreOpX` (the `hsl` of
`Wit.op_dispatch_condCost_R`). -/
theorem osl_condCost {M : Nat}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sload") (Frames.sg0 [])
      (Frames.PreOpX guestC tEV tCK Frames.GP Frames.GR M) oslB := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, -, -⟩ := lookupCode_gen code_osl hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, hpre⟩ hg
  have main : Inv.CostP σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ)) (AuxL [])) oslBody
      oslB := by
    unfold oslBody oslB
    -- `kv = stack_pop()`
    refine costP_decCall_S hH (Aux' := AuxL []) (PreC := fun _ _ => True) cs_pop
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "stack_pop") (B := 0) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_stop hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_stop (gw_nil rfl) hcore _ rfl rfl (by simp)) ?_
    -- `var key = evm_key_buf`
    refine costP_dec_G hH (Aux' := AuxL [(nm "key", 32)]) ?_ ?_
    · intro s hs0 Γ p hG hp hA v hv hsh
      have hG' := hG
      obtain ⟨-, -, -, -, -, -, hGl, -⟩ := hG
      obtain ⟨w, hw⟩ : ∃ w, gword s (nm "evm_key_buf") = some w := by
        obtain ⟨u, hu, -⟩ := hGl (nm "evm_key_buf") (.ptr tB32) gt_evm_key_buf
        exact ⟨u, hu⟩
      have hl := Frames.gword_some hw
      have hv' : s.globals.lookup (nm "evm_key_buf") = some v := hv
      rw [hl] at hv'
      cases hv'
      refine ⟨opA_congr rfl rfl hA.1, fun q hq => ?_⟩
      simp only [List.mem_singleton] at hq
      subst hq
      exact ⟨w, lk_set_self _ _ _, key_bufOK' hG' hp hw⟩
    -- `u256_to_be32(kv, key)`
    refine costP_seq_callD_S hH (Aux' := AuxL [(nm "key", 32)]) (PreC := fun _ _ => True) cs_tb
      (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "u256_to_be32") (B := bTb) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG hp hA vs hvs callee => by
        obtain ⟨A, hAl, hb⟩ := hA.2 (nm "key", 32) (by simp)
        exact ⟨argsOK_any_buf rfl hAl hb hvs, reqOK_nil⟩)
      (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_nil (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl)) ?_
    -- `var target = lds (lds (ev + EV_MSG) + MSG_CURRENT_TARGET)`
    refine costP_dec_G hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)]) ?_ ?_
    · intro s hs0 Γ p hG hp hA v hv hsh
      obtain ⟨T, rfl, hT⟩ := tgt_eval hA.1 hv
      refine ⟨opA_congr rfl rfl hA.1, fun q hq => ?_⟩
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
      rcases hq with rfl | rfl
      · obtain ⟨A, hAl, hb⟩ := hA.2 (nm "key", 32) (by simp)
        exact ⟨A, by rw [lk_set_ne _ _ (by decide)]; exact hAl, hb⟩
      · exact ⟨T, lk_set_self _ _ _, hT⟩
    -- `var warm = is_warm_storage_key(target, key)`
    refine costP_decCall_S hH (Aux' := AuxL [(nm "key", 32), (nm "target", 20)])
      (PreC := fun _ _ => True) cs_iw
      (Inv.calleeCostP_of_calleeCost
        (Wire.calleeCost_guest (f := nm "is_warm_storage_key") (B := bIw) rfl))
      (fun _ _ _ _ _ _ => trivial)
      (fun s _ Γ p hG _ hA vs hvs callee =>
        ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_iw hG hA⟩)
      (fun s st callee Γ p Γ' p' vs v hsh hG hA hvs hargsOK hcore hq =>
        auxL_core hH hG hA hargsOK capOK_iw (gw_nil rfl) hcore _ rfl rfl
          (fun q hq => by
            simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
            rcases hq with rfl | rfl <;> exact lk_sv (by decide) _ _ _)) ?_
    -- the warm / cold ite
    have cgC : ∀ n : Nat, Inv.CostP σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ))
        (AuxL [(nm "key", 32), (nm "target", 20)])) (callD (nm "charge_gas") [cw n]) (1 + 0 + 0) :=
      fun n => costP_callD_S (sg := ⟨[.any], [], [], false⟩) (PreC := fun _ _ => True)
        (Inv.calleeCostP_of_calleeCost (Wire.calleeCost_guest (f := nm "charge_gas") (B := 0) rfl))
        (fun _ _ _ _ _ _ => trivial)
    have cgH : ∀ n : Nat, Hoare σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ))
        (AuxL [(nm "key", 32), (nm "target", 20)])) (callD (nm "charge_gas") [cw n])
        (fun r t => r = none → PGt guestC (Hooks.guestHooksR (σ := σ))
          (AuxL [(nm "key", 32), (nm "target", 20)]) t) :=
      fun n => hoare_callD_S hH cs_cg
        (fun s _ Γ p hG _ hA vs hvs callee =>
          ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_cg hG hA⟩)
        (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
          auxL_core hH hG hA hargsOK capOK_cg (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl))
    have wskC : Inv.CostP σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ))
        (AuxL [(nm "key", 32), (nm "target", 20)]))
        (callD (nm "warm_storage_key") [lv (nm "target"), lv (nm "key")]) (1 + bWsk + 0) :=
      costP_callD_S (sg := ⟨[.any, .any], [], [], true⟩) (PreC := fun _ _ => True)
        (Inv.calleeCostP_of_calleeCost
          (Wire.calleeCost_guest (f := nm "warm_storage_key") (B := bWsk) rfl))
        (fun _ _ _ _ _ _ => trivial)
    have wskH : Hoare σ guestCtx (PGt guestC (Hooks.guestHooksR (σ := σ))
        (AuxL [(nm "key", 32), (nm "target", 20)]))
        (callD (nm "warm_storage_key") [lv (nm "target"), lv (nm "key")])
        (fun r t => r = none → PGt guestC (Hooks.guestHooksR (σ := σ))
          (AuxL [(nm "key", 32), (nm "target", 20)]) t) :=
      hoare_callD_S hH cs_wsk
        (fun s _ Γ p hG _ hA vs hvs callee =>
          ⟨hargs_any (by simp) rfl hvs, reqOK_ent hH evsk_wsk hG hA⟩)
        (fun s st callee Γ p Γ' p' vs v hG hA hvs hargsOK hcore hq =>
          auxL_core hH hG hA hargsOK capOK_wsk (gw_nil rfl) hcore _ rfl rfl (fun _ _ => rfl))
    refine costP_seq_ite_S (Aux' := AuxL [(nm "key", 32), (nm "target", 20)]) (cgC 100)
      (Inv.costP_seq (R := PGt guestC (Hooks.guestHooksR (σ := σ))
        (AuxL [(nm "key", 32), (nm "target", 20)])) (cgC 2100) (cgH 2100) wskC)
      (cgH 100)
      (Spec.hoare_seq (cgH 2100) (fun r t _ hne _ _ h => absurd h hne)
        (hoare_pre wskH (fun s _ h => h rfl))) ?_
    -- `var v = get_storage(target, key)`; the suffix
    refine Band.costP_decCall (gs_condCost (σ := σ) hGT) ?_ (funSpec_true _) ?_
    · intro s _ hP vs hvs callee
      obtain ⟨Γ, p, hG, hp, hA⟩ := hP
      obtain ⟨A, hAl, hb⟩ := hA.2 (nm "target", 20) (by simp)
      exact ⟨Γ, p, (Frames.G_locFree hH s _ _).mpr hG, (Frames.ptrsOf_congr rfl).trans hp,
        argsOK_buf_any rfl hAl hb hvs, Frames.jrNZ_congr (s := s) rfl hA.1.1⟩
    · intro _ _ _ _ _ _ _ _ _ _ _
      exact Inv.costP_of_cost oslSuf_cost
  exact main s hs ⟨Γ, p, hG, hp, opA_init hp hpre, by simp⟩ hg

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.opA_init
#print axioms InitECandidate.Solver.Band3.osl_condCost
