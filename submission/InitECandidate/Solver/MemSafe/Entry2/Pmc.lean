import InitECandidate.Solver.MemSafe.Entry2.Pcm
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Entry2: the conditional cost of `process_message_call` (band item #26)

**`pmc_condCost hF hD0 hM hop`**: `CondCost … "process_message_call" (sg1 []) (PmPre M) (pmcB M Bop)`.

Precondition `PmPre M` (the weakest the callee chain needs): `msg` is a `Γ` message object with
its CALLER / CURRENT_TARGET words `BufOK 20` blocks (`RootMsgX`), `NewPreG`, the `ev` / `cur_cont`
words, `JrNZ`, and `msg_gas + 2 ≤ M`. These are exactly what `process_message` and
`process_create_message` need; `alloc(96)`, `memzero`, `account_deployable` keep them (the fresh
`out` buffer is `FreshBuf`, hence `BufOK`; the callee footprints are state objects / the fresh
buffer). The ~15 stores into `out` and `frame_state_gas_used` are table costs.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Entry2
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

/-! ## Callee summaries -/

theorem alloc_R :
    CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "alloc")
      ⟨[.any], [.freshArg 0 1 0], [], false⟩ [] :=
  ctab% Rec.tab26_guestR

theorem mz_R : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "memzero")
    Helpers.sigMemzero [] :=
  have hF := Rec.foldOK_guestR (σ := σ)
  csumm_of_summ (Helpers.summ_memzero hF.hH Helpers.tagSlots_guestC hF.hX hF.hal)

theorem stSum_dep :
    StSum σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) guestSt (nm "account_deployable") sgB20 := by
  have hc : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "account_deployable")
      sgB20 tblCaps := ctab% tabJL_guestR
  exact stSum_of_csumm (St := guestSt) hc (Wire.keepsFp_guest (by decide_cbv))
    (fun _ _ _ _ => tblCaps_req) (by decide) guestSt_own

/-! ## A fresh block is a writable buffer -/

theorem fresh_na' {p q : Ptrs} (hp : p.Ordered) (hq : q.Ordered) (hm : p.Mono q) {x : BitVec 64}
    (h : Fresh p q x) : ¬ p.Allocated x.toNat ∧ q.Allocated x.toNat := by
  obtain ⟨p1, p2, p3, p4, p5, -⟩ := hp
  obtain ⟨q1, q2, q3, q4, q5, -⟩ := hq
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Ptrs.Allocated
  rcases h with h | h | h <;> omega

theorem bufOK_of_fresh {Γ' : Gam} {p p' : Ptrs} {o : BitVec 64} {n : Nat} (hord : p.Ordered)
    (hord' : p'.Ordered) (hm : p.Mono p') (hf : FreshBuf Γ' p p' o n) :
    BufOK guestC Γ' p' o.toNat n :=
  fun a ha => Or.inr ⟨(hf.2 a ha).2, (fresh_na' hord hord' hm (hf.2 a ha).1).2⟩

/-! ## Invariants -/

def n96 : Nat := 1 * (BitVec.ofNat 64 96).toNat + 0

/-- After `alloc(96)`: `FoPre`, the `out` block `BufOK`, the `msg` / `out` locals. -/
def JO (M : Nat) (msg o : BitVec 64) (s : State σ) : Prop :=
  (∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧ FoPre M msg Γ s ∧
    BufOK guestC Γ p o.toNat n96) ∧
  s.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
  s.locals.lookup (nm "out") = some (.val (.word o))

/-- The precondition of a call `process_message(msg)` / `process_create_message(msg)`. -/
def PreP (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
    ArgsOK guestC Γ p (sg1 []).params vs ∧ PmPre M vs s Γ

theorem preP_of_fl {M : Nat} {msg : BitVec 64} {s : State σ} (hP : FL M msg s) (callee : Locs)
    {vs : List (ValueHOL 64)} (hvs : evs s [lv (nm "msg")] = some vs) :
    PreP M vs (callEntryStateHOLFinite s callee) := by
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hP
  rw [evs_cons (ev_lv_eq hl) evs_nil] at hvs
  cases hvs
  exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s _ _).mpr hG,
    (ptrsOf_congr rfl).trans hp, argsOK_any (by simp [sg1]) rfl, msg, rfl, hfo⟩

def pmcB (M Bop : Nat) : Nat := 2 ^ 202 + pcmB M Bop

def pbCall (M Bop : Nat) : Nat :=
  max (1 + bDEP + (max 0 0 + (1 + pcmB M Bop + 0))) (1 + pmB M Bop + 0)
def pbFr (M Bop : Nat) : Nat := pbCall M Bop + 1
def pbMz (M Bop : Nat) : Nat := (1 + bMZ + 0) + pbFr M Bop
def pbAl (M Bop : Nat) : Nat := 1 + bALLOC + pbMz M Bop
def pb0 (M Bop : Nat) : Nat := 0 + pbAl M Bop

theorem argsOK_b20 {Γ : Gam} {p : Ptrs} {w : BitVec 64} (hb : BufOK guestC Γ p w.toNat 20) :
    ArgsOK guestC Γ p sgB20.params [.val (.word w)] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  match i, hpt, hv with
  | 0, hpt, hv =>
    simp only [sgB20, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hpt hv
    exact ⟨w, rfl, hb⟩

theorem argsOK_mz {Γ : Gam} {p : Ptrs} {o : BitVec 64} (hb : BufOK guestC Γ p o.toNat n96) :
    ArgsOK guestC Γ p Helpers.sigMemzero.params
      [.val (.word o), .val (.word (BitVec.ofNat 64 96))] := by
  refine ⟨rfl, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i
  · simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
    subst hv
    simp only [Helpers.sigMemzero, List.getElem?_cons_zero, Option.some.injEq] at hpt
    subst hpt
    exact ⟨o, BitVec.ofNat 64 96, rfl, rfl, hb⟩
  · simp only [Helpers.sigMemzero, List.getElem?_cons_succ, List.getElem?_cons_zero,
      Option.some.injEq] at hpt
    subst hpt; trivial
  · simp [Helpers.sigMemzero] at hpt

section main
variable (M : Nat) (msg : BitVec 64)

/-- `memzero(out, 96)` keeps `FoPre`. -/
theorem hoare_mz :
    Hoare σ guestCtx (fun t => ∃ o, JO M msg o t) (callD (nm "memzero") [lv (nm "out"), cw 96])
      (fun r t => r = none → FL M msg t) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  refine hoare_callD (sumSpecA_relX mz_R) ?_
  intro s hs ⟨o, hP⟩ vs hvs callee v st hR hst _
  obtain ⟨⟨Γ, p, hG, hp, hfo, hb⟩, hl1, hl2⟩ := hP
  rw [evs_cons (ev_lv_eq hl2) (evs_cons (ev_cw s 96) evs_nil)] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_mz hb) (by simp [Helpers.sigMemzero]) (by simp [Helpers.sigMemzero])
    (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  exact ⟨⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp', hfo'⟩,
    hl1⟩

/-- The bodies of `pmcStoresDep` never complete normally (they end in `return`). -/
theorem storesDep_nn (s : State σ) : (evaluateHOLFiniteState s pmcStoresDep).1 ≠ none := by
  unfold pmcStoresDep
  repeat' (first | exact eval_return_nn _ s | refine eval_seq_nn (fun s => ?_) s)

/-- `account_deployable(msg[32])` as a `decCall`: keeps `FL`. -/
theorem fl_dep {s : State σ} {callee : Locs} {vs : List (ValueHOL 64)} {v : ValueHOL 64}
    {st : State σ} (hs : FL M msg s)
    (hvs : evs s [ldW (nm "msg") 32] = some vs)
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) sgB20 (fun _ s _ => JrNZ s)
      (fun _ _ Γ a => ProtCell guestC Γ a ∧ StCell guestSt Γ a) (fun _ s _ _ t _ => FpQ s t)
      vs (callEntryStateHOLFinite s callee) (.returned v) st) :
    FL M msg (setVarHOLFinite (nm "dep") v { st with locals := s.locals }) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hs
  obtain ⟨w, vs', rfl, hw, hvs'⟩ := evs_cons_inv hvs
  obtain rfl := evs_zero hvs'
  have hw' := ev_lLoad_eq (x := "msg") (k := 32) hl hw
  subst hw'
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  have hJ : JrNZ (callEntryStateHOLFinite s callee) := jrNZ_congr (s := s) rfl hfo.2.2.2.2.1
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_b20 (hfo.1.2 p hp 32 (by simp [msgXOffs]))) (by simp [sgB20]) (by simp [sgB20])
    hJ (fun a h => h)
  exact ⟨⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp', hfo'⟩,
    by rw [lk_set_ne _ _ (by decide)]; exact hl⟩

/-- `alloc(96)` as a `decCall`: gives `JO`. -/
theorem jo_alloc {s : State σ} {callee : Locs} {vs : List (ValueHOL 64)} {v : ValueHOL 64}
    {st : State σ} (hs : FL M msg s) (hvs : evs s [cw 96] = some vs)
    (hR : SumRelX guestC (Hooks.guestHooksR (σ := σ)) ⟨[.any], [.freshArg 0 1 0], [], false⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => ProtCell guestC Γ a ∧ CapPW [] s Γ a)
      (fun _ _ _ _ _ _ => True) vs (callEntryStateHOLFinite s callee) (.returned v) st)
    (hsh : shapeEqHOL (shapeOfHOLExact v) ShapeHOL.one = true) :
    ∃ o, JO M msg o (setVarHOLFinite (nm "out") v { st with locals := s.locals }) := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hs
  obtain ⟨o, rfl⟩ := val_of_shapeEq_one' hsh
  rw [evs_cons (ev_cw s 96) evs_nil] at hvs
  cases hvs
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γ (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', p', hc, hG', hp', hfo', hrun⟩ := fi_rel (M := M) (msg := msg) hR hGe hpe hfo
    (argsOK_any (by simp) rfl) (by simp) (by simp) (fun c hc => absurd hc (by simp))
    (fun a h => absurd h.2 (by rintro ⟨c, hc, -⟩; exact absurd hc (by simp)))
  have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) o rfl (by simp [flattenHOL])
  obtain ⟨x, hx, hfb⟩ := hret
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  have hord : p.Ordered := by
    obtain ⟨q, hq, hord, -⟩ := hGe
    rwa [Option.some.inj (hq.symm.trans hpe)] at hord
  have hord' : p'.Ordered := by
    obtain ⟨q', hq', hord', -⟩ := hG'
    rwa [Option.some.inj (hq'.symm.trans hp')] at hord'
  refine ⟨o, ⟨Γ', p', (G_locFree hH st s.locals st.clock).mpr hG', (ptrsOf_congr rfl).trans hp',
    hfo', bufOK_of_fresh hord hord' hc.2.2.1 hfb⟩, ?_, lk_set_self _ _ _⟩
  rw [lk_set_ne _ _ (by decide)]; exact hl

theorem pmc_create (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) pmcCreate
      (1 + bDEP + (max 0 0 + (1 + pcmB M Bop + 0))) := by
  have hpcm := pcm_condCost hF hD0 hM hop
  refine costP_decCallA (P := FL M msg) (P' := FL M msg) (PreC := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost cc_dep) (fun _ _ _ _ _ _ => trivial)
    (sumSpecA_relX stSum_dep) (fun s callee vs v st hs hvs hR _ => fl_dep M msg hs hvs hR) ?_
  refine Inv.costP_seq (R := FL M msg)
    (Inv.costP_of_cost (cost_ite cost_stores_dep cost_skip)) ?_ ?_
  · exact hoare_ite (fun s _ _ _ hr => absurd hr (storesDep_nn s))
      (hoare_skip fun s _ h _ => h.1)
  · exact Inv.costP_call (info := some (some (VarKind.local, nm "frame"), none))
      (f := nm "process_create_message") (args := [lv (nm "msg")]) (Pre := PreP M) hpcm
      (fun s hs hP vs hvs callee => preP_of_fl hP callee hvs)
      (fun r hid hv hp h => by simp at h)

theorem pmc_pm (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg)
      (.call (some (some (VarKind.local, nm "frame"), none)) (nm "process_message") [lv (nm "msg")])
      (1 + pmB M Bop + 0) :=
  Inv.costP_call (Pre := PreP M) (pm_condCost hF hD0 hM hop)
    (fun s hs hP vs hvs callee => preP_of_fl hP callee hvs)
    (fun r hid hv hp h => by simp at h)

theorem pmc_call (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) pmcCall (pbCall M Bop) := by
  unfold pmcCall pbCall
  exact Inv.costP_ite ((pmc_create M msg hF hD0 hM hop).pre fun s _ h => h.1)
    ((pmc_pm M msg hF hD0 hM hop).pre fun s _ h => h.1)

theorem pmc_frame (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) (.dec (nm "frame") .one (cw 0) (.seq pmcCall pmcTail))
      (pbFr M Bop) := by
  refine Inv.costP_dec fun s hs hP v hv hsh => ?_
  refine (Inv.costP_seq (R := fun _ => True) (pmc_call M msg hF hD0 hM hop)
    (fun s _ _ _ _ => trivial) (Inv.costP_of_cost cost_tail)).pre fun t _ ht => ?_
  subst ht
  obtain ⟨⟨Γ, p, hG, hp, hfo⟩, hl⟩ := hP
  exact ⟨⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s _ s.clock).mpr hG,
    (ptrsOf_congr rfl).trans hp, hfo⟩, by rw [lk_set_ne _ _ (by decide)]; exact hl⟩

theorem pmc_mz (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (fun t => ∃ o, JO M msg o t)
      (.seq (callD (nm "memzero") [lv (nm "out"), cw 96])
        (.dec (nm "frame") .one (cw 0) (.seq pmcCall pmcTail))) (pbMz M Bop) :=
  Inv.costP_seq (R := FL M msg)
    (Inv.costP_callD (Pre := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_mz)
      (fun _ _ _ _ _ _ => trivial))
    (hoare_mz M msg) (pmc_frame M msg hF hD0 hM hop)

theorem pmc_body (hF : FHypsB σ) (hD0 : D0Spec σ) {Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    Inv.CostP σ guestCtx (FL M msg) pmcBody (pb0 M Bop) := by
  unfold pmcBody
  refine costP_skip_seq ?_
  exact costP_decCallA (P := FL M msg) (P' := fun t => ∃ o, JO M msg o t)
    (PreC := fun _ _ => True) (Inv.calleeCostP_of_calleeCost cc_alloc) (fun _ _ _ _ _ _ => trivial)
    (sumSpecA_relX alloc_R) (fun s callee vs v st hs hvs hR hsh => jo_alloc M msg hs hvs hR hsh)
    (pmc_mz M msg hF hD0 hM hop)

end main

/-- **`process_message_call`'s conditional cost** (band item #26). Same hypotheses and
precondition as `Entry.pm_condCost`. -/
theorem pmc_condCost (hF : FHypsB σ) (hD0 : D0Spec σ) {M Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "process_message_call")
      (sg1 []) (PmPre M) (pmcB M Bop) := by
  intro vs body callee rs hl
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pmc hl
  rintro s hs ⟨hloc, Γ, p, hG, hp, hargs, msg, hvs, hfo⟩ hg
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  refine (Inv.CostP.mono (pmc_body M msg hF hD0 hM hop) ?_) s hs
    ⟨⟨Γ, p, hG, hp, hfo⟩, by rw [hloc]; exact hlk⟩ hg
  have h202 : bDEP + bMZ + 100 ≤ 2 ^ 202 := by unfold bDEP bMZ; decide
  unfold pb0 pbAl pbMz pbFr pbCall pmcB pcmB bALLOC
  generalize pmB M Bop = P
  generalize (2 : Nat) ^ 201 = U
  generalize (2 : Nat) ^ 202 = V at h202 ⊢
  omega

end InitECandidate.Solver.MemSafe.Entry2

#print axioms InitECandidate.Solver.MemSafe.Entry2.pmc_condCost
