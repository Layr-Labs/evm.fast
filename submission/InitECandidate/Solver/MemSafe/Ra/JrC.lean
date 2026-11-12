import InitECandidate.Solver.MemSafe.Ra.JrB

/-!
# JrFix, part C: `run_attempt`'s prefix, stage by stage

From `run_attempt`'s entry (no `JrNZ`) to the state after `state_init` (`PAfter`: `JrNZ` and `SiPost`), with the same cost
`bHead (bNdb Sp.bSi B)` as package F1e's walk (`p1_head`, `p1_ndb`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- The tracked locals `si`, `pl`. -/
def Lsp (si0 pl0 : BitVec 64) (l : Locs) : Prop :=
  l.lookup (nm "si") = some (.val (.word si0)) ∧ l.lookup (nm "pl") = some (.val (.word pl0))

/-- A frozen node DB in the memory, named by the value `v`. -/
def RT1 (v : ValueHOL 64) : Gam → Ptrs → State σ → Prop :=
  fun Γ _ t => ∃ T : BitVec 64, v = .val (.word T) ∧ Hooks.NdbR Γ t.memory T

/-- After `state_init`. -/
def PAfter (si0 pl0 : BitVec 64) (t : State σ) : Prop :=
  Lsp si0 pl0 t.locals ∧ ∃ Γ p, Fz si0 pl0 Γ p t ∧ JrNZ t ∧ Ini.SiPost Γ t

section stages
variable {si0 pl0 : BitVec 64}

theorem lsp_set {n : MlS} (h1 : n ≠ nm "si") (h2 : n ≠ nm "pl") :
    ∀ (t : State σ) v, Lsp si0 pl0 t.locals → Lsp si0 pl0 (setVarHOLFinite n v t).locals :=
  fun t v h => ⟨(lk_set_ne t v h1).trans h.1, (lk_set_ne t v h2).trans h.2⟩

theorem rloc_true : RLoc (σ := σ) (fun _ _ _ => True) := fun _ _ _ _ _ h => h
theorem rloc_cpre : RLoc (σ := σ) (fun Γ _ _ => CPre Γ) := fun _ _ _ _ _ h => h

abbrev PT0 (si0 pl0 : BitVec 64) : State σ → Prop := PZ si0 pl0 (Lsp si0 pl0) (fun _ _ _ => True)

theorem freeG_bh : FreeG (nm "block_hashes") :=
  ⟨by decide, ⟨by decide, by decide, by decide⟩, ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩
theorem freeG_bhn : FreeG (nm "block_hashes_n") :=
  ⟨by decide, ⟨by decide, by decide, by decide⟩, ⟨by decide, by decide⟩, ⟨by decide, by decide⟩⟩

/-- `raS16`: `skip`, then the rest. -/
theorem cz_s16 {B : Nat} (hk : Inv.CostP σ guestCtx (PAfter si0 pl0) raS17 B) :
    Inv.CostP σ guestCtx (PAfter si0 pl0) raS16 (0 + B) := by
  unfold raS16; exact cz_seqSame hoare_skipEq cost_skip hk

/-- `raS15`: `state_init(nodedb, parent[32], codedb)`. -/
theorem cz_s15 {v1 v2 : ValueHOL 64} {B : Nat} (hk : Inv.CostP σ guestCtx (PAfter si0 pl0) raS16 B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => Lsp si0 pl0 l ∧ l.lookup (nm "nodedb") = some v1 ∧
      l.lookup (nm "codedb") = some v2) (fun Γ p t => RT1 v1 Γ p t ∧ RT1 v2 Γ p t)) raS15 ((1 + Sp.bSi + 0) + B) := by
  unfold raS15
  have hc : Inv.CalleeCostP σ guestCtx (nm "state_init")
      (fun vs s => ∃ Γ p, G guestC (HR σ) Γ s ∧ ptrsOf s = some p ∧ ArgsOK guestC Γ p (CcSig 3).params vs ∧
        CcPreNJ SiPreC vs s Γ) Sp.bSi := Sp.hypSiCostNJ
  refine Inv.costP_seq (R := PAfter si0 pl0) (Inv.costP_call hc ?_ (by intro _ _ _ _ h; cases h)) ?_ hk
  · intro s _ hP vs hvs callee
    obtain ⟨⟨hL, hn1, hn2⟩, Γ, p, hz, ⟨T1, rfl, hN1⟩, ⟨T2, rfl, hN2⟩⟩ := hP
    obtain ⟨a1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_lv, hn1] at h1
    rw [ev_lv, hn2] at h3
    cases h1
    cases h3
    obtain ⟨x, hx⟩ := ev_ld_word h2
    subst hx
    have hze := fz_entry hz callee
    exact ⟨Γ, p, hze.1, hze.2.1, argsOK_cc rfl, hze.2.2.1, p, hze.2.1, T1, x, T2, rfl, hN1, hN2⟩
  · refine hoare_callD Ini.funSpec_state_init ?_
    intro s _ hP vs hvs callee v st hR _ _
    obtain ⟨⟨hL, hn1, hn2⟩, Γ, p, hz, ⟨T1, rfl, hN1⟩, ⟨T2, rfl, hN2⟩⟩ := hP
    obtain ⟨a1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
    obtain ⟨a2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
    obtain ⟨a3, vs3, rfl, h3, hr3⟩ := evs_cons_inv hr2
    rw [evs_nil] at hr3
    cases hr3
    rw [ev_lv, hn1] at h1
    rw [ev_lv, hn2] at h3
    cases h1
    cases h3
    obtain ⟨x, hx⟩ := ev_ld_word h2
    subst hx
    have hze := fz_entry hz callee
    have hargs : ArgsOK guestC Γ p Ini.siSigW.params [.val (.word T1), .val (.word x), .val (.word T2)] :=
      argsOK_any (by simp [Ini.siSigW]) rfl
    obtain ⟨Γ', p0, p', hc, hpost⟩ := hR v rfl Γ hze.1 ⟨p, hze.2.1, hargs⟩ ⟨T1, x, T2, rfl, hN1, hN2⟩
    obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hze.2.1)
    have hst := stepD_of_core hze.1 hc
    have hpk : PlKeep Γ (callEntryStateHOLFinite s callee) st := plKeep_of_sumCore hze.1 hargs hc (fun a h => h.2.elim)
    have hF := Hooks.frameCfg_guestHooksR (σ := σ)
    have hglob := hc.2.2.2.2.2.2.2.1
    have hE' : EvCc st := by
      obtain ⟨⟨e, he, hs1⟩, ⟨c, hc', hs2⟩⟩ := hze.2.2.1
      exact ⟨⟨e, by unfold gword; rw [hglob _ hF.pgEv (by decide)]; exact he, hs1⟩,
        ⟨c, by unfold gword; rw [hglob _ hF.pgCC (by decide)]; exact hc', hs2⟩⟩
    have hz' := fz_step hze hst.hG' hst.hp' hE' hst.ext hpk
    exact ⟨hL, Γ', p', fz_res hz' s.locals st.clock, jrNZ_of_sipost hpost, hpost⟩

/-- `raS14`: `codedb = nodedb_build(si[56], si[64])`. -/
theorem cz_s14 {v1 : ValueHOL 64} {B : Nat}
    (hk : ∀ v2, Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => Lsp si0 pl0 l ∧ l.lookup (nm "nodedb") = some v1 ∧
      l.lookup (nm "codedb") = some v2) (fun Γ p t => RT1 v1 Γ p t ∧ RT1 v2 Γ p t)) raS15 B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => Lsp si0 pl0 l ∧ l.lookup (nm "nodedb") = some v1) (RT1 v1))
      raS14 (1 + cNdb + B) := by
  unfold raS14
  refine Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) cc_ndb)
    (fun _ _ _ _ _ _ => trivial) Ini.sumSpecA_nodedb_build_79 ?_
  intro s _ hP vs hvs callee v st hR _ _
  refine (hk v).pre fun t _ ht => ?_
  subst ht
  obtain ⟨⟨hL, hn1⟩, Γ, p, hz, ⟨T1, rfl, hN1⟩⟩ := hP
  obtain ⟨a1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  have e1 := ev_lLoad_eq (x := "si") (k := 56) hL.1 h1
  have e2 := ev_lLoad_eq (x := "si") (k := 64) hL.1 h2
  subst e1 e2
  have hze := fz_entry hz callee
  obtain ⟨o, ho, hb, ht⟩ := hze.2.2.2.1
  have hargs : ArgsOK guestC Γ p Wit.ndbSig.params [.val (.word (fld s.memory si0 56)), .val (.word (fld s.memory si0 64))] :=
    argsOK_any (by simp [Wit.ndbSig]) rfl
  obtain ⟨Γ', p', hz', -, hq, hc⟩ := fz_sum (Pre := Ini.NdbPre) (PW := fun _ _ _ _ => False)
    (Q := fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∃ T, v = .val (.word T) ∧ Hooks.NdbR Γ' t.memory T) hR hze hargs (ndbPre_codes hze.1 ho hb ht) (by decide)
    (fun a (h : False) => h.elim)
  obtain ⟨T2, hT2, hN2⟩ := hq v rfl
  obtain ⟨q, hq0, hord, hL0, -⟩ := id hze.1
  obtain rfl : p = q := (Option.some.inj (hq0.symm.trans hze.2.1)).symm
  have hN1' : Hooks.NdbR Γ' st.memory T1 := by
    have hfr : ∀ x, Hooks.NdbFp s.memory T1 x → st.memory x = s.memory x := by
      intro x hx
      have hr' := Hooks.ndbFp_rcell hN1 hx
      refine hc.2.2.2.2.2.2.1 x ?_
      rintro (h | h | h | ⟨-, hF⟩)
      · exact Wit.rcell_not_wcell hord hL0 hr' h
      · exact argCells_any (by simp [Wit.ndbSig]) h
      · exact h (Wit.rcell_alloc hL0 hr')
      · exact hF
    exact Hooks.ndbR_ext hc.2.2.2.1 (Hooks.ndb_frame hN1 hfr).1
  refine ⟨⟨lsp_set (by decide) (by decide) _ _ hL, (lk_set_ne _ _ (by decide)).trans hn1, lk_set_self _ _ _⟩, Γ', p',
    fz_set (fz_res hz' s.locals st.clock) _ _, ⟨T1, rfl, hN1'⟩, ⟨T2, hT2, hN2⟩⟩

/-- `raS13`: `nodedb = nodedb_build(si[40], si[48])`. -/
theorem cz_s13 {B : Nat}
    (hk : ∀ v1, Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => Lsp si0 pl0 l ∧ l.lookup (nm "nodedb") = some v1) (RT1 v1))
      raS14 B) :
    Inv.CostP σ guestCtx (PT0 si0 pl0) raS13 (1 + cNdb + B) := by
  unfold raS13
  refine Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) cc_ndb)
    (fun _ _ _ _ _ _ => trivial) Ini.sumSpecA_nodedb_build_79 ?_
  intro s _ hP vs hvs callee v st hR _ _
  refine (hk v).pre fun t _ ht => ?_
  subst ht
  obtain ⟨hL, Γ, p, hz, -⟩ := hP
  obtain ⟨a1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨a2, vs2, rfl, h2, hr2⟩ := evs_cons_inv hr1
  rw [evs_nil] at hr2
  cases hr2
  have e1 := ev_lLoad_eq (x := "si") (k := 40) hL.1 h1
  have e2 := ev_lLoad_eq (x := "si") (k := 48) hL.1 h2
  subst e1 e2
  have hze := fz_entry hz callee
  obtain ⟨o, ho, hb, ht⟩ := hze.2.2.2.1
  have hargs : ArgsOK guestC Γ p Wit.ndbSig.params [.val (.word (fld s.memory si0 40)), .val (.word (fld s.memory si0 48))] :=
    argsOK_any (by simp [Wit.ndbSig]) rfl
  obtain ⟨Γ', p', hz', -, hq, -⟩ := fz_sum (Pre := Ini.NdbPre) (PW := fun _ _ _ _ => False)
    (Q := fun _ _ _ r t Γ' => ∀ v, r = .returned v → ∃ T, v = .val (.word T) ∧ Hooks.NdbR Γ' t.memory T) hR hze hargs (ndbPre_state hze.1 ho hb ht) (by decide)
    (fun a (h : False) => h.elim)
  obtain ⟨T1, hT1, hN1⟩ := hq v rfl
  exact ⟨⟨lsp_set (by decide) (by decide) _ _ hL, lk_set_self _ _ _⟩, Γ', p',
    fz_set (fz_res hz' s.locals st.clock) _ _, ⟨T1, hT1, hN1⟩⟩

/-- `raS11`: `gas_ok = check_gas_limit(pl[88], parent[104])`. -/
theorem cz_s11 {B : Nat} (hk : Inv.CostP σ guestCtx (PT0 si0 pl0) raS12 B) :
    Inv.CostP σ guestCtx (PT0 si0 pl0) raS11 (1 + cCgl + B) := by
  unfold raS11
  have hcs : SumSpecA σ guestCtx guestC (HR σ) (nm "check_gas_limit") ⟨[.any, .any], [], [], false⟩
      (fun _ s Γ => ReqOK [] s Γ) (fun _ s Γ a => CapPW [] s Γ a) (fun _ _ _ _ _ _ => True) := tab_cgl
  refine Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) cc_cgl)
    (fun _ _ _ _ _ _ => trivial) hcs ?_
  intro s _ hP vs hvs callee v st hR _ _
  refine hk.pre fun t _ ht => ?_
  subst ht
  obtain ⟨hL, Γ, p, hz, -⟩ := hP
  have hze := fz_entry hz callee
  have hargs : ArgsOK guestC Γ p ([.any, .any] : List PT) vs :=
    argsOK_any_eval (args := [.load .one (.op BinOp.add [(lv (nm "pl")), (cw 88)]),
      .load .one (.op BinOp.add [(lv (nm "parent")), (cw 104)])]) (by simp) (by simp) hvs
  obtain ⟨Γ', p', hz', -⟩ := fz_sum (Pre := fun _ s Γ => ReqOK [] s Γ) (PW := fun _ s Γ a => CapPW [] s Γ a)
    (Q := fun _ _ _ _ _ _ => True) hR hze hargs (fun c hc => absurd hc (by simp)) (by decide)
    (fun a h => by simp [CapPW] at h)
  exact ⟨lsp_set (by decide) (by decide) _ _ hL, Γ', p', fz_set (fz_res hz' s.locals st.clock) _ _, trivial⟩

/-- `raS4` to `raS12`, after `validate_headers`. -/
theorem cz_s4 {B : Nat} (hk : Inv.CostP σ guestCtx (PT0 si0 pl0) raS13 B) :
    Inv.CostP σ guestCtx (PT0 si0 pl0) raS4
      (0 + (0 + (0 + (0 + (0 + (1 + cCgl + (0 + B))))))) := by
  unfold raS4
  refine cz_dec rloc_true (lsp_set (by decide) (by decide)) ?_
  unfold raS5
  refine cz_seqSame hoare_guardEq cost_guest_guard ?_
  unfold raS6
  refine cz_dec rloc_true (lsp_set (by decide) (by decide)) ?_
  unfold raS7
  refine cz_assignG freeG_bh (by decide) (fun _ _ _ _ h => h) ?_
  unfold raS8
  refine cz_assignG freeG_bhn (by decide) (fun _ _ _ _ h => h) ?_
  unfold raS9
  refine cz_seqSame hoare_skipEq cost_skip ?_
  unfold raS10
  refine cz_seqSame hoare_guardEq cost_guest_guard ?_
  refine cz_s11 ?_
  unfold raS12
  exact cz_seqSame hoare_guardEq cost_guest_guard hk

/-- `raS3`: `vh = validate_headers(si[72], si[80])`. -/
theorem cz_s3 {B : Nat} (hk : Inv.CostP σ guestCtx (PT0 si0 pl0) raS4 B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 (Lsp si0 pl0) (fun Γ _ _ => CPre Γ)) raS3 (1 + cVh + B) := by
  unfold raS3
  refine Band.costP_decCall (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) cc_vh)
    (fun _ _ _ _ _ _ => trivial) awSpec_vh ?_
  intro s _ hP vs hvs callee v st hR _ _
  refine hk.pre fun t _ ht => ?_
  subst ht
  obtain ⟨hL, Γ, p, hz, hC⟩ := hP
  obtain ⟨Γ', p', hz', -, -⟩ := fz_aw (P := fun _ _ _ => True) (vs := vs)
    (Post := fun _ s v _ => ∀ p, ptrsOf s = some p → Aw.VhPost p v) hR (fz_entry hz callee) hC trivial
  exact ⟨lsp_set (by decide) (by decide) _ _ hL, Γ', p', fz_set (fz_res hz' s.locals st.clock) _ _, trivial⟩

/-- `raS1`: `pl = si[0]`. -/
theorem cz_s1 {B : Nat} (hk : Inv.CostP σ guestCtx (PZ si0 pl0 (Lsp si0 pl0) (fun Γ _ _ => CPre Γ)) raS2 B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => l.lookup (nm "si") = some (.val (.word si0))) (fun Γ _ _ => CPre Γ))
      raS1 B := by
  unfold raS1
  refine Inv.costP_dec fun s _ hP v hv _ => hk.pre fun t _ ht => ?_
  subst ht
  obtain ⟨hsi, Γ, p, hz, hC⟩ := hP
  have e := ev_lLoad_eq (x := "si") (k := 0) hsi hv
  subst e
  refine ⟨⟨(lk_set_ne _ _ (by decide)).trans hsi, ?_⟩, Γ, p, fz_set hz _ _, hC⟩
  rw [lk_set_self]
  have h0 : fld s.memory si0 0 = pl0 := hz.2.2.2.2
  rw [h0]

/-- **`run_attempt`'s prefix**, from the entry to the state after `state_init`. -/
theorem prefix_cost {B : Nat} (hk : Inv.CostP σ guestCtx (PAfter si0 pl0) raS17 B) :
    Inv.CostP σ guestCtx (PZ si0 pl0 (fun l => l.lookup (nm "si") = some (.val (.word si0))) (fun Γ _ _ => CPre Γ))
      raS1 (bHead (bNdb Sp.bSi B)) := by
  refine cz_s1 ?_
  unfold raS2
  refine cz_seqSame hoare_skipEq cost_skip ?_
  refine cz_s3 (cz_s4 (cz_s13 fun v1 => cz_s14 fun v2 => cz_s15 (cz_s16 hk)))

end stages

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.prefix_cost
