import InitECandidate.Solver.MemSafe.Frames.Open

/-!
# `frame_open`'s summary

**`open_sumSpec`**: from `frame_new`'s summary (hypothesis, post `NewQ`), `frame_open(msg, kind)`
has the summary with signature `sgFO gwN` (writes `ev`, `cur_cont` and what `frame_new` writes),
precondition `PreFO`, no protected writes to existing objects (`PW = False`), and post `FOQ`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The `prot` cells of `Γ` objects are unchanged. -/
def ProtKeep (C : Cfg) (Γ : Gam) (s t : State σ) : Prop :=
  ∀ a, ProtCell C Γ a → t.memory a = s.memory a

theorem run_gw {C : Cfg} {H : Hooks σ} {gw gw' : List MlS} (hsub : ∀ g, g ∈ gw → g ∈ gw')
    {Γ Γ' : Gam} {s t : State σ} {p p' : Ptrs} (h : Run C H gw Γ s Γ' t p p') :
    Run C H gw' Γ s Γ' t p p' :=
  let ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  ⟨h1, h2, h3, h4, h5, h6, h7, fun g hg hgw => h8 g hg fun h => hgw (hsub g h)⟩

/-- A run that keeps the `prot` cells is a summary core with `PW = False`. -/
theorem sumCore_of_run_prot {C : Cfg} {H : Hooks σ} {sg : Sig} (hret : sg.ret = [])
    (hgrow : sg.grows = true) {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (h : Run C H sg.gw Γ s Γ' t p p')
    (hpk : ProtKeep C Γ s t) :
    SumCore C H sg (fun a => ProtCell C Γ a ∧ False) Γ s vs r t Γ' p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, hmod, hpg⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, fun a ha => ?_, hpg,
    fun h => absurd (hgrow.symm.trans h) (by decide), fun v _ i rt w hrt => ?_⟩
  · by_cases hp : ProtCell C Γ a
    · exact hpk a hp
    · refine hmod a ?_
      rintro (h | h | h)
      · exact ha (Or.inl h)
      · exact hp h
      · exact ha (Or.inr (Or.inr (Or.inl h)))
  · rw [hret] at hrt; simp at hrt

/-- The post of `frame_open`'s body. -/
def OPost (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gwN : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (vs : List (ValueHOL 64)) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ' p', Run C H (sgFO gwN).gw Γ s0 Γ' t p p' ∧
    ProtKeep C Γ s0 t ∧ FOQ tEV tCK vs s0 Γ r t Γ'

theorem opost_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gwN : List MlS} {Γ : Gam} {s0 : State σ} {p : Ptrs} {vs : List (ValueHOL 64)}
    {ro : Option (PanSemResultExact 64)} {t : State σ} (h : OPost C H tEV tCK gwN Γ s0 p vs ro t)
    (l : Locs) : OPost C H tEV tCK gwN Γ s0 p vs ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', p', hrun, hpk, hq⟩ := h r hr hna
  exact ⟨Γ', p', run_locals hH hrun l, hpk, hq⟩

/-- The abnormal results: only the run and the kept `prot` cells. -/
theorem opost_abn {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gwN : List MlS} {Γ Γ' : Gam} {s0 st : State σ} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    (hrun : Run C H gwN Γ s0 Γ' st p p') (hpk : ProtKeep C Γ s0 st) {r : PanSemResultExact 64}
    (habn : MemSafe.Abn r) :
    OPost C H tEV tCK gwN Γ s0 p vs (some r) (emptyLocalsHOLFinite st) := by
  intro r' hr' _
  simp only [Option.some.injEq] at hr'
  subst hr'
  refine ⟨Γ', p', run_emptyLocals hH (run_gw (fun g h => by simp [sgFO, h]) hrun), hpk, ?_⟩
  intro v hv
  exact absurd hv (not_returned_of_abn habn v)

theorem fp_of_glob {s t : State σ} {p p' : Ptrs} (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p')
    (h : t.globals.lookup gFrame = s.globals.lookup gFrame) : p'.fp = p.fp := by
  unfold ptrsOf at hp hp'
  have hf : gword t gFrame = gword s gFrame := by unfold gword; rw [h]
  rw [hf] at hp'
  split at hp <;> split at hp' <;> simp_all
  all_goals (subst_vars; rfl)

theorem run_loc2 {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gw : List MlS} {Γ Γ' : Gam}
    {s t : State σ} {p p' : Ptrs} (h : Run C H gw Γ s Γ' t p p') (l : Locs) (c : Nat) :
    Run C H gw Γ s Γ' { t with locals := l, clock := c } p p' := by
  obtain ⟨h1, h2, h3, h4, h5, h6, h7, h8⟩ := h
  exact ⟨h1, h2, h3, h4, h5, (G_locFree hH t l c).mpr h6, h7, h8⟩

/-- The tracked facts after the record is allocated (state `w`, locals `L`, globals `g`). -/
def OTT (C : Cfg) (H : Hooks σ) (gwN : List MlS) (Γ Γ1 : Gam) (s0 st : State σ) (p p1 p2 : Ptrs)
    (L : Locs) (g : HolFiniteMapExact MlS (ValueHOL 64)) (w : State σ) : Prop :=
  w.locals = L ∧ w.globals = g ∧ Run C H gwN Γ s0 Γ1 w p p2 ∧ ProtKeep C Γ s0 w ∧
    ∀ a : BitVec 64, p1.Allocated a.toNat → w.memory a = st.memory a

/-- A write inside the fresh record block keeps the run, the `prot` cells and the cells
allocated after `frame_new`. -/
theorem ott_core {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gwN : List MlS} {Γ Γ1 : Gam}
    {s0 st : State σ} {p p1 p2 : Ptrs} {L : Locs} {g : HolFiniteMapExact MlS (ValueHOL 64)}
    {w w' : State σ} (h : OTT C H gwN Γ Γ1 s0 st p p1 p2 L g w) {q : BitVec 64}
    (hord : p.Ordered) (hL : Layout C p Γ)
    (hblk : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
      ¬ InObj Γ1 a.toNat ∧ ¬ p.Allocated a.toNat ∧ ¬ p1.Allocated a.toNat)
    {B : BitVec 64 → Prop} (hB : ∀ a, B a → q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + 104)
    (hmod : ModifiesOnly B w.memory w'.memory) (hg : w'.globals = w.globals)
    (hd : w'.memaddrs = w.memaddrs) (hbe : w'.be = w.be) :
    Run C H gwN Γ s0 Γ1 w' p p2 ∧ ProtKeep C Γ s0 w' ∧
      ∀ a : BitVec 64, p1.Allocated a.toNat → w'.memory a = st.memory a := by
  obtain ⟨-, -, h3, h4, h5⟩ := h
  have hB' : ∀ a, B a → ¬ InObj Γ1 a.toNat ∧ ¬ p.Allocated a.toNat ∧ ¬ p1.Allocated a.toNat :=
    fun a ha => hblk a (hB a ha).1 (hB a ha).2
  refine ⟨run_block hH h3 (fun a ha => ⟨(hB' a ha).1, (hB' a ha).2.1⟩) hmod hg hd hbe,
    fun a ha => ?_, fun a ha => ?_⟩
  · rw [hmod a fun hb => ?_, h4 a ha]
    obtain ⟨o, ho, k, hk, -, rfl⟩ := ha
    exact (hB' _ hb).2.1 (Helpers.allocated_of_inObj hL (cell_in hord hL ho hk))
  · rw [hmod a fun hb => (hB' a hb).2.2 ha, h5 a ha]

theorem ott_block {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gwN : List MlS} {Γ Γ1 : Gam}
    {s0 st : State σ} {p p1 p2 : Ptrs} {L : Locs} {g : HolFiniteMapExact MlS (ValueHOL 64)}
    {w w' : State σ} (h : OTT C H gwN Γ Γ1 s0 st p p1 p2 L g w) {q : BitVec 64}
    (hord : p.Ordered) (hL : Layout C p Γ)
    (hblk : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
      ¬ InObj Γ1 a.toNat ∧ ¬ p.Allocated a.toNat ∧ ¬ p1.Allocated a.toNat)
    {B : BitVec 64 → Prop} (hB : ∀ a, B a → q.toNat ≤ a.toNat ∧ a.toNat < q.toNat + 104)
    (hmod : ModifiesOnly B w.memory w'.memory) (hl : w'.locals = L) (hg : w'.globals = w.globals)
    (hd : w'.memaddrs = w.memaddrs) (hbe : w'.be = w.be) : OTT C H gwN Γ Γ1 s0 st p p1 p2 L g w' :=
  ⟨hl, hg.trans h.2.1, ott_core hH h hord hL hblk hB hmod hg hd hbe⟩

theorem ott_store {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gwN : List MlS} {Γ Γ1 : Gam}
    {s0 st : State σ} {p p1 p2 : Ptrs} {L : Locs} {g : HolFiniteMapExact MlS (ValueHOL 64)}
    {w : State σ} (h : OTT C H gwN Γ Γ1 s0 st p p1 p2 L g w) {q : BitVec 64} (hord : p.Ordered)
    (hL : Layout C p Γ) (hqe : q.toNat + 104 ≤ scratchEnd)
    (hblk : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
      ¬ InObj Γ1 a.toNat ∧ ¬ p.Allocated a.toNat ∧ ¬ p1.Allocated a.toNat)
    {k : Nat} (hk : k < 104) (x : BitVec 64) :
    OTT C H gwN Γ Γ1 s0 st p p1 p2 L g
      { w with memory := upd w.memory (q + BitVec.ofNat 64 k) x } := by
  have hs : scratchEnd < 2 ^ 64 := by decide
  have hqk : (q + BitVec.ofNat 64 k).toNat = q.toNat + k := by
    rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega : k < 2 ^ 64),
      Nat.mod_eq_of_lt (by omega)]
  refine ott_block hH h hord hL hblk (B := fun a => a = q + BitVec.ofNat 64 k)
    (fun a ha => by subst ha; rw [hqk]; omega)
    (modifiesOnly_upd (R := fun a => a = q + BitVec.ofNat 64 k) (modifiesOnly_refl _ _) rfl _)
    h.1 rfl rfl rfl

theorem fld_upd_ne {m : Mem} {q : BitVec 64} {k k' : Nat} (x : BitVec 64)
    (h : q + BitVec.ofNat 64 k' ≠ q + BitVec.ofNat 64 k) :
    fld (upd m (q + BitVec.ofNat 64 k) x) q k' = fld m q k' := by
  unfold fld; rw [rd_upd, if_neg h]

theorem fld_upd_eq {m : Mem} {q : BitVec 64} {k : Nat} (x : BitVec 64) :
    fld (upd m (q + BitVec.ofNat 64 k) x) q k = x := by
  unfold fld; rw [rd_upd, if_pos rfl]

/-- **`frame_open`'s summary.** -/
theorem open_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hD : DrvCfg C H tEV tCK) (hA : Helpers.AlignedDom X) (hLg : 16 ≤ (C.ty Types.tLSTs).minSz)
    {gwN : List MlS}
    (hgwN : nmEv ∉ gwN ∧ nmCC ∉ gwN)
    {NewPre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hNP : ∀ vs (s : State σ) Γ (l : Locs) (c : Nat),
      NewPre vs { s with locals := l, clock := c } Γ ↔ NewPre vs s Γ)
    (hfn : SumSpecA σ X C H (nm "frame_new") (sgFN gwN) NewPre (fun _ _ _ _ => False) (NewQ tEV)) :
    SumSpecA σ X C H (nm "frame_open") (sgFO gwN) (PreFO NewPre) (fun _ _ _ _ => False)
      (FOQ tEV tCK) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg hna Γ hG _ ⟨msg, kind, hvs, hnp, ⟨e0, he0⟩, ⟨c0, hc0⟩⟩
  subst hvs
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, hAB, -, -, hA', hB'⟩ := lookupCode_two code_open (by decide) hl
  simp only [List.cons.injEq, and_true] at hAB
  obtain ⟨rfl, rfl⟩ := hAB
  have hmsg : s0.locals.lookup (nm "msg") = some (.val (.word msg)) := by rw [hloc]; exact hA'
  have hkind : s0.locals.lookup (nm "kind") = some (.val (.word kind)) := by rw [hloc]; exact hB'
  have ⟨p, hps, hord, hL, _⟩ := hG
  have hF := hD.fc
  have hH := hF.hooks
  have hpsFN : ∀ pt ∈ (sgFN gwN).params, pt = .any := fun pt h => by simpa [sgFN] using h
  let OP := OPost C H tEV tCK gwN Γ s0 p [.val (.word msg), .val (.word kind)]
  have H0 : HoareG σ X (fun u => u = s0) openBody OP := by
    refine hoareG_dec fun s _ hs v1 hv1 _ => ?_
    have hs' := hs.symm; subst hs'
    have hv1' : v1 = .val (.word e0) := by
      have : ev s0 (gv nmEv) = some (.val (.word e0)) := gword_some he0
      rw [this] at hv1; exact (Option.some.inj hv1).symm
    subst hv1'
    refine hoareG_conseq (Q := OP) ?_ (fun _ _ h => h) (fun r t _ _ h => opost_locals hH h _)
    set s1 := setVarHOLFinite (nm "parent") (.val (.word e0)) s0 with hs1
    refine hoareG_decCall hfn ?_ ?_
    · intro s _ hs vs1 hvs1 callee1 v st hR _ _
      subst hs
      have hlm : s1.locals.lookup (nm "msg") = some (.val (.word msg)) := by
        rw [hs1, lk_set_ne _ _ (by decide)]; exact hmsg
      rw [show evs s1 [lv (nm "msg")] = some [.val (.word msg)] from
        evs_cons (lv_of rfl hlm) evs_nil] at hvs1
      cases hvs1
      have hGe : G C H Γ (callEntryStateHOLFinite s1 callee1) := (G_locFree hH s0 callee1 _).mpr hG
      obtain ⟨Γ1, q0, p1, hc1, hq1⟩ := hR (by simp [Good]) (not_abortive_ret v) Γ hGe
        ⟨p, hps, argsOK_any hpsFN rfl⟩ ((hNP _ s0 Γ callee1 _).mpr hnp)
      have hq0 : q0 = p := Option.some.inj (hc1.1.symm.trans hps)
      subst hq0
      have hrun1 : Run C H gwN Γ s0 Γ1 st q0 p1 := run_of_sumCore hpsFN (fun g h => h) hc1
      have hpk1 : ProtKeep C Γ s0 st := by
        intro a ⟨o, ho, k, hk, hpr, he⟩
        subst he
        exact hc1.2.2.2.2.2.2.1 _ (prot_not_foot hord hL hpsFN ho hk hpr)
      obtain ⟨msg', e, hvsm, rfl, hcf⟩ := hq1 v rfl
      simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvsm
      subst hvsm
      refine hoareG_conseq (Q := OP) ?_ (fun _ _ h => h) (fun r t _ _ h => opost_locals hH h _)
      obtain ⟨p1', hp1', hord1, hL1, _⟩ := hrun1.2.2.2.2.2.1
      have hp11 : p1' = p1 := Option.some.inj (hp1'.symm.trans hrun1.2.1)
      subst hp11
      set t2 := setVarHOLFinite (nm "child") (.val (.word e)) { st with locals := s1.locals }
        with ht2
      refine hoareG_decCall (FunSpec.and (allocSpec_scratch_alloc hC) (funSpec_dom _)) ?_ ?_
      · intro s _ hs vs2 hvs2 callee2 v2 st2 ⟨hR2, hd2, hbe2⟩ _ _
        subst hs
        rw [show evs t2 [cw 104] = some [.val (.word (BitVec.ofNat 64 104))] from
          evs_cons (ev_cw _ 104) evs_nil] at hvs2
        cases hvs2
        obtain ⟨hm2, hg2, p2, hp2, hord2, hmono2, hret2⟩ :=
          hR2 (by simp [Good]) _ p1' rfl hrun1.2.1 hord1
        obtain ⟨q, hv2, hq8, hlive, hfree⟩ := hret2 v2 rfl
        subst hv2
        have hrun2 : Run C H gwN Γ s0 Γ1 st2 q0 p2 :=
          run_alloc hH hD.allocG (run_loc2 hH hrun1 callee2 (st.clock - 1)) hm2
            (fun g _ _ h3 => hg2 g h3) hd2 hbe2 hp2 hord2 hmono2
        have hblk : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
            ¬ InObj Γ1 a.toNat ∧ ¬ q0.Allocated a.toNat ∧ ¬ p1'.Allocated a.toNat := by
          intro a h1 h2
          have hn := hfree a.toNat h1 (by simpa using h2)
          exact ⟨fun hi => hn (Helpers.allocated_of_inObj hL1 hi),
            fun ha => hn (allocated_mono hrun1.2.2.1 ha), hn⟩
        have hqe : q.toNat + 104 ≤ scratchEnd := by unfold Region.Live at hlive; simpa using hlive.2
        have hfresh : ∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 →
            Fresh q0 p2 a := by
          intro a h1 h2
          have hn := hfree a.toNat h1 (by simpa using h2)
          unfold Region.Live at hlive
          have hm1 := hrun1.2.2.1
          unfold Ptrs.Allocated at hn
          unfold Fresh
          unfold Ptrs.Mono at hm1 hmono2
          right; right
          simp only [BitVec.toNat_ofNat] at hlive
          omega
        refine hoareG_conseq (Q := OP) ?_ (fun _ _ h => h) (fun r t _ _ h => opost_locals hH h _)
        set t3 := setVarHOLFinite (nm "rec") (.val (.word q)) { st2 with locals := t2.locals }
          with ht3
        set L3 := t3.locals with hL3
        have lk3 : ∀ x, x ≠ nm "rec" → x ≠ nm "child" → x ≠ nm "parent" →
            L3.lookup x = s0.locals.lookup x := by
          intro x h1 h2 h3
          rw [hL3, ht3]
          show (setVarHOLFinite _ _ _).locals.lookup x = _
          rw [lk_set_ne _ _ (Ne.symm h1)]
          show t2.locals.lookup x = _
          rw [ht2, lk_set_ne _ _ (Ne.symm h2)]
          show s1.locals.lookup x = _
          rw [hs1, lk_set_ne _ _ (Ne.symm h3)]
        have hrec3 : L3.lookup (nm "rec") = some (.val (.word q)) := by
          rw [hL3, ht3]; exact lk_set_self _ _ _
        have hchild3 : L3.lookup (nm "child") = some (.val (.word e)) := by
          rw [hL3, ht3]
          show (setVarHOLFinite _ _ _).locals.lookup _ = _
          rw [lk_set_ne _ _ (by decide)]
          show t2.locals.lookup _ = _
          rw [ht2]; exact lk_set_self _ _ _
        have hpar3 : L3.lookup (nm "parent") = some (.val (.word e0)) := by
          rw [hL3, ht3]
          show (setVarHOLFinite _ _ _).locals.lookup _ = _
          rw [lk_set_ne _ _ (by decide)]
          show t2.locals.lookup _ = _
          rw [ht2, lk_set_ne _ _ (by decide)]
          show s1.locals.lookup _ = _
          rw [hs1]; exact lk_set_self _ _ _
        have hmsg3 : L3.lookup (nm "msg") = some (.val (.word msg)) := by
          rw [lk3 _ (by decide) (by decide) (by decide)]; exact hmsg
        have hkind3 : L3.lookup (nm "kind") = some (.val (.word kind)) := by
          rw [lk3 _ (by decide) (by decide) (by decide)]; exact hkind
        -- `cur_cont` is unchanged up to here
        have hcc2 : st2.globals.lookup nmCC = some (.val (.word c0)) := by
          rw [hg2 nmCC (by decide)]
          show st.globals.lookup nmCC = _
          rw [hrun1.2.2.2.2.2.2.2 nmCC hF.pgCC hgwN.2]
          exact gword_some hc0
        have hott3 : OTT C H gwN Γ Γ1 s0 st q0 p1' p2 L3 st2.globals t3 :=
          ⟨rfl, rfl, run_locals hH hrun2 _, fun a ha => (congrFun hm2 a).trans (hpk1 a ha),
            fun a _ => congrFun hm2 a⟩
        let T0 : State σ → Prop := fun w => OTT C H gwN Γ Γ1 s0 st q0 p1' p2 L3 st2.globals w
        -- memzero
        refine hoareG_seq (R := fun r w => (r = none ∧ T0 w) ∨ (r ≠ none ∧ OP r w)) ?_
          (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2)) ?_
        · refine hoareG_callD (FunSpec.and (Helpers.foot_memzero hC hA) (funSpec_dom _)) ?_ ?_
          · intro s _ hs vs3 hvs3 callee3 v3 st3 ⟨hfz, hd3, hbe3⟩ _
            subst hs
            rw [show evs t3 [lv (nm "rec"), cw 104] = some [.val (.word q),
              .val (.word (BitVec.ofNat 64 104))] from
              evs_cons (lv_of rfl hrec3) (evs_cons (ev_cw _ 104) evs_nil)] at hvs3
            cases hvs3
            obtain ⟨hg3, hmod3⟩ := hfz (by simp [Good])
              ⟨q, _, rfl, rfl, Or.inr (by simp; omega)⟩
            refine Or.inl ⟨rfl, ott_block hH hott3 hord hL hblk ?_ hmod3 rfl hg3 hd3 hbe3⟩
            rintro a ⟨D, N, hD, hN, ho⟩
            simp [argW, wordOf] at hD hN
            subst hD hN
            unfold Overlap at ho
            simp only [BitVec.toNat_ofNat] at ho
            omega
          · intro s _ hs vs3 hvs3 callee3 r3 st3 ⟨hfz, hd3, hbe3⟩ _ habn
            subst hs
            rw [show evs t3 [lv (nm "rec"), cw 104] = some [.val (.word q),
              .val (.word (BitVec.ofNat 64 104))] from
              evs_cons (lv_of rfl hrec3) (evs_cons (ev_cw _ 104) evs_nil)] at hvs3
            cases hvs3
            obtain ⟨hg3, hmod3⟩ := hfz (good_of_abn habn)
              ⟨q, _, rfl, rfl, Or.inr (by simp; omega)⟩
            have h' := ott_core (w' := st3) hH hott3 hord hL hblk ?_ hmod3 hg3 hd3 hbe3
            · exact Or.inr ⟨by simp, opost_abn hH h'.1 h'.2.1 habn⟩
            · rintro a ⟨D, N, hD, hN, ho⟩
              simp [argW, wordOf] at hD hN
              subst hD hN
              unfold Overlap at ho
              simp only [BitVec.toNat_ofNat] at ho
              omega
        -- the record's fields, the switch, the return
        refine hoareG_pre (P := T0) ?_ (fun w _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
        have hlive' : Region.Live p2 .scratch q.toNat 104 := by simpa using hlive
        have hst : ∀ (w : State σ), T0 w → ∀ k, k < 104 → ∀ x,
            T0 { w with memory := upd w.memory (q + BitVec.ofNat 64 k) x } :=
          fun w hw k hk x => ott_store hH hw hord hL hqe hblk hk x
        refine hoareG_seq (R := fun r w => r = none ∧ T0 w ∧ fld w.memory q 0 = e0) ?_
          (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stL fun w _ hw B v hB hv => ?_
          rw [hw.1, hrec3, Option.some.injEq] at hB; cases hB
          rw [lv_of hw.1 hpar3] at hv; cases hv
          exact ⟨_, rfl, fun _ => ⟨rfl, hst w hw 0 (by omega) e0, fld_upd_eq _⟩⟩
        refine hoareG_seq (R := fun r w => r = none ∧ T0 w ∧ fld w.memory q 0 = e0 ∧
            fld w.memory q 8 = c0) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stL fun w _ ⟨_, hw, h0⟩ B v hB hv => ?_
          rw [hw.1, hrec3, Option.some.injEq] at hB; cases hB
          have : ev w (gv nmCC) = some (.val (.word c0)) := by
            show w.globals.lookup nmCC = _; rw [hw.2.1]; exact hcc2
          rw [this] at hv; cases hv
          exact ⟨_, rfl, fun _ => ⟨rfl, hst w hw 8 (by omega) c0,
            by rw [fld_upd_ne _ (by simp)]; exact h0, fld_upd_eq _⟩⟩
        refine hoareG_seq (R := fun r w => r = none ∧ T0 w ∧ fld w.memory q 0 = e0 ∧
            fld w.memory q 8 = c0 ∧ fld w.memory q 16 = kind) ?_
            (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stL fun w _ ⟨_, hw, h0, h8⟩ B v hB hv => ?_
          rw [hw.1, hrec3, Option.some.injEq] at hB; cases hB
          rw [lv_of hw.1 hkind3] at hv; cases hv
          exact ⟨_, rfl, fun _ => ⟨rfl, hst w hw 16 (by omega) kind,
            by rw [fld_upd_ne _ (by simp)]; exact h0, by rw [fld_upd_ne _ (by simp)]; exact h8,
            fld_upd_eq _⟩⟩
        refine hoareG_seq (R := fun r w => r = none ∧ T0 w ∧ fld w.memory q 0 = e0 ∧
            fld w.memory q 8 = c0 ∧ fld w.memory q 16 = kind ∧ fld w.memory q 40 = msg) ?_
            (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_stL fun w _ ⟨_, hw, h0, h8, h16⟩ B v hB hv => ?_
          rw [hw.1, hrec3, Option.some.injEq] at hB; cases hB
          rw [lv_of hw.1 hmsg3] at hv; cases hv
          exact ⟨_, rfl, fun _ => ⟨rfl, hst w hw 40 (by omega) msg,
            by rw [fld_upd_ne _ (by simp)]; exact h0, by rw [fld_upd_ne _ (by simp)]; exact h8,
            by rw [fld_upd_ne _ (by simp)]; exact h16, fld_upd_eq _⟩⟩
        refine hoareG_pre (hoareG_ex fun (w4 : State σ) => hoareG_pure
          (P0 := T0 w4 ∧ fld w4.memory q 0 = e0 ∧ fld w4.memory q 8 = c0 ∧
            fld w4.memory q 16 = kind ∧ fld w4.memory q 40 = msg)
          (P := fun w => w = w4) fun ⟨hT4, h0, h8, h16, h40⟩ => ?_)
          (fun w _ ⟨_, hw⟩ => ⟨w, hw, rfl⟩)
        have hev4 : ev w4 (lv (nm "child")) = some (.val (.word e)) := lv_of hT4.1 hchild3
        have hrc4 : ev w4 (lv (nm "rec")) = some (.val (.word q)) := lv_of hT4.1 hrec3
        refine hoareG_seq (R := fun r w => r = none ∧
            w = setGlobalHOLFinite nmEv (.val (.word e)) w4) ?_
            (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_assignK fun w _ hw v hv _ => ?_
          subst hw
          rw [hev4] at hv; cases hv
          exact ⟨rfl, rfl⟩
        refine hoareG_seq (R := fun r w => r = none ∧
            w = setGlobalHOLFinite nmCC (.val (.word q))
              (setGlobalHOLFinite nmEv (.val (.word e)) w4)) ?_
            (fun r t _ hr _ h => absurd h.1 hr) ?_
        · refine hoareG_assignK fun w _ ⟨_, hw⟩ v hv _ => ?_
          subst hw
          have : ev (setGlobalHOLFinite nmEv (.val (.word e)) w4) (lv (nm "rec")) =
            some (.val (.word q)) := hrc4
          rw [this] at hv; cases hv
          exact ⟨rfl, rfl⟩
        refine hoareG_return fun w _ ⟨_, hw⟩ v hv => ?_
        subst hw
        have : ev (setGlobalHOLFinite nmCC (.val (.word q))
            (setGlobalHOLFinite nmEv (.val (.word e)) w4)) (lv (nm "child")) =
          some (.val (.word e)) := hev4
        rw [this] at hv; cases hv
        set w5 := setGlobalHOLFinite nmCC (.val (.word q))
          (setGlobalHOLFinite nmEv (.val (.word e)) w4) with hw5
        have hge : w5.globals.lookup nmEv = some (.val (.word e)) := by
          rw [hw5]
          show ((w4.globals.update (nmEv, _)).update (nmCC, _)).lookup nmEv = _
          rw [lookup_update_ne _ _ (by decide), lookup_update_self]
        have hgc : w5.globals.lookup nmCC = some (.val (.word q)) := by
          rw [hw5]
          show ((w4.globals.update (nmEv, _)).update (nmCC, _)).lookup nmCC = _
          rw [lookup_update_self]
        have hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → w5.globals.lookup g = w4.globals.lookup g := by
          intro g h1 h2
          rw [hw5]
          show ((w4.globals.update (nmEv, _)).update (nmCC, _)).lookup g = _
          rw [lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
        obtain ⟨⟨o, ho, hob, hot, hfr⟩, f64, f192, f104, f16, f232, f32, f40, hfp, f216, hmy,
          hnx⟩ := hcf
        have hrunF := run_pushCK hD hT4.2.2.1 hq8 hlive'
          (fun a h1 h2 => ⟨(hblk a h1 h2).1, hfresh a h1 h2⟩) ⟨o, ho, hob, hot⟩
          (t := w5) rfl rfl rfl hge hgc hgo
        intro rr hrr _
        simp only [Option.some.injEq] at hrr
        subst hrr
        refine ⟨Γ1 ++ [⟨q, tCK, 104⟩], p2, run_emptyLocals hH hrunF,
          fun a ha => hT4.2.2.2.1 a ha,
          ?_⟩
        intro v hv
        simp only [PanSemResultExact.returned.injEq] at hv
        subst hv
        have hosz := ev_size hF hL1 ho hot
        have hkeep : ∀ k, k < 280 → fld w5.memory e k = fld st.memory e k := by
          intro k hk
          rw [← hob]
          exact fld_keep hord1 hL1 ho (by omega) fun a ha =>
            hT4.2.2.2.2 a (Helpers.allocated_of_inObj hL1 ⟨o, ho, ha.1, ha.2⟩)
        have hp2 : ptrsOf w5 = some p2 := hrunF.2.1
        refine ⟨msg, kind, e, q, rfl, rfl, gword_of hge, gword_of hgc,
          List.mem_append_right _ (List.mem_singleton_self _), ?_, ⟨⟨o, List.mem_append_left _ ho,
            hob, hot, hfr⟩, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩, ?_, ?_, h16, h40⟩
        · intro pa hpa a h1 h2
          rw [hps, Option.some.injEq] at hpa
          subst hpa
          exact (hblk a h1 h2).2.1
        · exact (hkeep 64 (by omega)).trans f64
        · exact (hkeep 192 (by omega)).trans f192
        · exact (hkeep 104 (by omega)).trans f104
        · exact (hkeep 16 (by omega)).trans f16
        · exact (hkeep 232 (by omega)).trans f232
        · exact (hkeep 32 (by omega)).trans f32
        · exact (hkeep 40 (by omega)).trans f40
        · intro pa pb hpa hpb
          rw [hps, Option.some.injEq] at hpa
          subst hpa
          have hpb' : ptrsOf w5 = some pb := hpb
          rw [hp2, Option.some.injEq] at hpb'
          subst hpb'
          obtain ⟨hmem, hfp1⟩ := hfp _ _ hps hrun1.2.1
          have hfp2 : p2.fp = p1'.fp := fp_of_glob hrun1.2.1 hp2 (by
            show w4.globals.lookup gFrame = _
            rw [hT4.2.1]
            exact hg2 gFrame (by decide))
          exact ⟨(congrArg BitVec.toNat (hkeep 24 (by omega))).trans hmem, by omega⟩
        · exact (hkeep 216 (by omega)).trans f216
        · intro pa hpa
          rw [hps, Option.some.injEq] at hpa
          subst hpa
          obtain ⟨y, hy, hyl⟩ := hmy _ hps
          exact ⟨y, List.mem_append_left _ hy, hyl⟩
        · intro pa hpa
          rw [hps, Option.some.injEq] at hpa
          subst hpa
          obtain ⟨x112, ⟨Lo, hLo, hLb, hLt, hLe⟩, ⟨Do, hDo, hDb, hDt⟩, hDf, hMk⟩ := hnx _ hps
          have hkL : ∀ k, k < 2 → rd w5.memory (Lo.cell k) = rd st.memory (Lo.cell k) := fun k hk => by
            have hks := lgEmp_slotC hL1 hLg hLo hLt hk
            have := hT4.2.2.2.2 (Lo.cell k) (Helpers.allocated_of_inObj hL1 (cell_in hord1 hL1 hLo hks))
            show rd w4.memory _ = _
            unfold rd
            rw [this]
          refine ⟨(hkeep 112 (by omega)).trans x112,
            ⟨Lo, List.mem_append_left _ hLo, hLb.trans (hkeep 88 (by omega)).symm, hLt,
              lgEmp_ext (lgEmp_congr hLe (hkL 0 (by omega)) (hkL 1 (by omega)))
                (ext_append Γ1 _) rfl⟩,
            ⟨Do, List.mem_append_left _ hDo, hDb.trans (hkeep 136 (by omega)).symm, hDt⟩, ?_, ?_⟩
          · show ¬ q0.Allocated (fld w5.memory e 136).toNat
            rw [hkeep 136 (by omega)]
            exact hDf
          · show MarkV w5.memory e
            unfold MarkV
            rw [hkeep 208 (by omega), hkeep 224 (by omega)]
            exact hMk
        · intro ea hea
          rw [he0, Option.some.injEq] at hea
          subst hea
          exact h0
        · intro ca hca
          rw [hc0, Option.some.injEq] at hca
          subst hca
          exact h8
      · intro s _ hs vs2 hvs2 callee2 r2 st2 ⟨hR2, hd2, hbe2⟩ _ habn
        subst hs
        rw [show evs t2 [cw 104] = some [.val (.word (BitVec.ofNat 64 104))] from
          evs_cons (ev_cw _ 104) evs_nil] at hvs2
        cases hvs2
        obtain ⟨hm2, hg2, p2, hp2, hord2, hmono2, -⟩ :=
          hR2 (good_of_abn habn) _ p1' rfl hrun1.2.1 hord1
        have hrun2 : Run C H gwN Γ s0 Γ1 st2 q0 p2 :=
          run_alloc hH hD.allocG (run_loc2 hH hrun1 callee2 (st.clock - 1)) hm2
            (fun g _ _ h3 => hg2 g h3) hd2 hbe2 hp2 hord2 hmono2
        exact opost_abn hH hrun2 (fun a ha => by rw [hm2]; exact hpk1 a ha) habn
    · intro s _ hs vs1 hvs1 callee1 r1 st hR _ habn
      subst hs
      have hlm : s1.locals.lookup (nm "msg") = some (.val (.word msg)) := by
        rw [hs1, lk_set_ne _ _ (by decide)]; exact hmsg
      rw [show evs s1 [lv (nm "msg")] = some [.val (.word msg)] from
        evs_cons (lv_of rfl hlm) evs_nil] at hvs1
      cases hvs1
      have hGe : G C H Γ (callEntryStateHOLFinite s1 callee1) := (G_locFree hH s0 callee1 _).mpr hG
      intro r' hr' hna'
      simp only [Option.some.injEq] at hr'
      subst hr'
      obtain ⟨Γ1, q0, p1, hc1, -⟩ := hR (good_of_abn habn) hna' Γ hGe
        ⟨p, hps, argsOK_any hpsFN rfl⟩ ((hNP _ s0 Γ callee1 _).mpr hnp)
      have hq0 : q0 = p := Option.some.inj (hc1.1.symm.trans hps)
      subst hq0
      have hrun1 : Run C H gwN Γ s0 Γ1 st q0 p1 := run_of_sumCore hpsFN (fun g h => h) hc1
      have hpk1 : ProtKeep C Γ s0 st := by
        intro a ⟨o, ho, k, hk, hpr, he⟩
        subst he
        exact hc1.2.2.2.2.2.2.1 _ (prot_not_foot hord hL hpsFN ho hk hpr)
      exact opost_abn hH hrun1 hpk1 habn _ rfl hna'
  obtain ⟨Γ', p', hrun, hpk, hq⟩ := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr hna
  exact ⟨Γ', p, p', sumCore_of_run_prot rfl rfl hrun hpk, hq⟩

end InitECandidate.Solver.MemSafe.Frames
