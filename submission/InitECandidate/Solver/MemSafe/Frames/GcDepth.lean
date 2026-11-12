import InitECandidate.Solver.MemSafe.Frames.GcX

/-!
# `generic_call`: specification shape and the depth-limit path

* `PreGC`, `QGC`: `generic_call`'s precondition (a running chain with the guest extension
  `ChainE GP GR`, the `BufOK 20` blocks `caller` / `to` (frames8), stack room, the output range,
  the Φ budget for the child's gas, the code-length bound of `frame_new`, `JrNZ`) and post
  (returns and `EvmErr`: `ChainX … GP GR`, `Φ` grows by at most `gas + 2`).
* `GPost`: the body post; `GA`: the tracked facts before the depth check; `GD`: the depth path.
* `topw_step`: a store into a driver slot of the running EV keeps the chain; `Φ` moves with the
  gas cells.
* **`gc_depth`**: the depth-limit path (refund `gas` / `reservoir` to the parent, credit the
  state gas, push 0, return 0).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 1600000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type} {X : Ctx 64}

/-! ## The specification shape -/

/-- The word arguments of `generic_call` (the value struct is any value). -/
def gcArgs (gas res : BitVec 64) (value : ValueHOL 64)
    (caller tgt ca tr st is isz os osz code cn dp nac : BitVec 64) : List (ValueHOL 64) :=
  [.val (.word gas), .val (.word res), value, .val (.word caller), .val (.word tgt),
    .val (.word ca), .val (.word tr), .val (.word st), .val (.word is), .val (.word isz),
    .val (.word os), .val (.word osz), .val (.word code), .val (.word cn), .val (.word dp),
    .val (.word nac)]

/-- **`generic_call`'s precondition.** -/
def PreGC (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ (gas res caller tgt ca tr st is isz os osz code cn dp nac : BitVec 64) (value : ValueHOL 64),
    vs = gcArgs gas res value caller tgt ca tr st is isz os osz code cn dp nac ∧
    ∃ fs e0 c0 rest, ChainL guestC tEV tCK Γ s fs ∧ fs = (e0, c0) :: rest ∧
      (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat ∧
      (osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s.memory e0 evMemLen).toNat) ∧ isz.toNat < 2 ^ 32 ∧
      Phi s + gas.toNat + 2 ≤ M ∧ cn.toNat + 63 < 2 ^ 64 ∧ JrNZ s ∧
      ChainE GP GR Γ s fs ∧
      (∀ p, ptrsOf s = some p → BufOK guestC Γ p caller.toNat 20 ∧ BufOK guestC Γ p tgt.toNat 20)

/-- **`generic_call`'s post**: a return or an `EvmErr` ends with a chain, `Φ` grown by at most
the child's gas plus 2 (the child pushed, or the gas refunded to the parent). -/
def QGC (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  ∀ gas, vs.head? = some (.val (.word gas)) →
    (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s + gas.toNat + 2 ∧
      RootK s t) ∧
    (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' t ∧
      Phi t ≤ Phi s + gas.toNat + 2 ∧ RootK s t)

/-- The post of the body. -/
def GPost (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s0 : State σ) (p : Ptrs) (gas : BitVec 64)
    (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ' p', RunT guestC H gw Γ s0 Γ' t p p' ∧
    (∀ v, r = .returned v → ChainX guestC tEV tCK GP GR Γ' t ∧ Phi t ≤ Phi s0 + gas.toNat + 2 ∧
      RootK s0 t) ∧
    (∀ v, r = .exception nmEvmErr v → ChainX guestC tEV tCK GP GR Γ' t ∧
      Phi t ≤ Phi s0 + gas.toNat + 2 ∧ RootK s0 t)

theorem gpost_locals {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ : Gam}
    {s0 : State σ} {p : Ptrs} {gas : BitVec 64} {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : GPost H gw Γ s0 p gas ro t) (l : Locs) : GPost H gw Γ s0 p gas ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', p', hrun, h1, h2⟩ := h r hr hna
  refine ⟨Γ', p', runT_locals hH hrun l, fun v hv => ?_, fun v hv => ?_⟩
  · obtain ⟨a, b, k⟩ := h1 v hv
    exact ⟨chainX_locFree.loc t l |>.mpr a, by rw [phi_locFree.loc]; exact b,
      rootK_congr rfl rfl rfl rfl k⟩
  · obtain ⟨a, b, k⟩ := h2 v hv
    exact ⟨chainX_locFree.loc t l |>.mpr a, by rw [phi_locFree.loc]; exact b,
      rootK_congr rfl rfl rfl rfl k⟩

/-- A run reaching a chain with `Φ` in budget gives the post for any result. -/
theorem gpost_of {H : Hooks σ} {gw : List MlS} {Γ Γ' : Gam} {s0 t : State σ} {p p' : Ptrs}
    {gas : BitVec 64} (hrun : RunT guestC H gw Γ s0 Γ' t p p')
    (hch : ChainX guestC tEV tCK GP GR Γ' t)
    (hΦ : Phi t ≤ Phi s0 + gas.toNat + 2) (hroot : RootK s0 t) (r : PanSemResultExact 64) :
    GPost H gw Γ s0 p gas (some r) t := by
  intro r' hr' _
  cases hr'
  exact ⟨Γ', p', hrun, fun _ _ => ⟨hch, hΦ, hroot⟩, fun _ _ => ⟨hch, hΦ, hroot⟩⟩

/-- The depth-path tracked facts: the run, a chain, `Φ ≤ B`, the journal, the parameter locals. -/
def GD (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s0 : State σ) (p : Ptrs) (B : Nat)
    (u : State σ) : Prop :=
  (∀ x ∈ gcNames, u.locals.lookup x = s0.locals.lookup x) ∧ JrNZ u ∧
  ∃ Γ1 p1, RunT guestC H gw Γ s0 Γ1 u p p1 ∧ ChainX guestC tEV tCK GP GR Γ1 u ∧ Phi u ≤ B

theorem gd_locals {H : Hooks σ} (hH : HooksLawful guestC H) {gw : List MlS} {Γ : Gam}
    {s0 : State σ} {p : Ptrs} {B : Nat} {u : State σ} (h : GD H gw Γ s0 p B u) (l : Locs)
    (hl : ∀ x ∈ gcNames, l.lookup x = u.locals.lookup x) :
    GD H gw Γ s0 p B { u with locals := l } := by
  obtain ⟨hlf, hJ, Γ1, p1, hrun, hch, hΦ⟩ := h
  exact ⟨fun x hx => (hl x hx).trans (hlf x hx), jrNZ_congr rfl hJ, Γ1, p1, runT_locals hH hrun l,
    chainX_locFree.loc u l |>.mpr hch, by rw [phi_locFree.loc]; exact hΦ⟩

/-- **A store into a driver slot `j ≠ 13` of the running EV**: the chain stays; `Φ` moves with
the gas cells. -/
theorem topw_step {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ : Gam} {s : State σ} {e c : BitVec 64} {rest : List Frame}
    (hG : G C H Γ s) (hch : ChainL C tEV tCK Γ s ((e, c) :: rest))
    {j : Nat} (hj : j ∈ evDriverSlots) (hj13 : j ≠ 13) (x : BitVec 64) :
    ∃ p, RunT C H gw Γ s Γ { s with memory := upd s.memory (e + BitVec.ofNat 64 (8 * j)) x } p p ∧
      ChainL C tEV tCK Γ { s with memory := upd s.memory (e + BitVec.ofNat 64 (8 * j)) x }
        ((e, c) :: rest) ∧
      Phi { s with memory := upd s.memory (e + BitVec.ofNat 64 (8 * j)) x } +
        (fld s.memory e 64).toNat + (fld s.memory e 192).toNat ≤
      Phi s + (fld (upd s.memory (e + BitVec.ofNat 64 (8 * j)) x) e 64).toNat +
        (fld (upd s.memory (e + BitVec.ofNat 64 (8 * j)) x) e 192).toNat := by
  set t : State σ := { s with memory := upd s.memory (e + BitVec.ofNat 64 (8 * j)) x } with ht
  have hmod : ModifiesOnly (TopCells e c) s.memory t.memory :=
    modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inl ⟨j, hj, rfl⟩) x
  obtain ⟨p, hrun, hch', hrest⟩ := top_write (gw := gw) hF hG hch rfl hmod rfl rfl rfl
  have ⟨q, hq, hord, hL, _⟩ := hG
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
  obtain ⟨oc, hoc, hocb, hoct⟩ := (hch.objs (e, c) (by simp)).2
  have hoeb' : oe.base = e := hoeb
  have hocb' : oc.base = c := hocb
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hjb : j ≤ 24 := by simp [evDriverSlots] at hj; omega
  have hnB : ¬ KCell C Γ (e + BitVec.ofNat 64 (8 * j)) := by
    intro hbc
    obtain ⟨o, ho, hty, k, hk, -, he⟩ := kCell_keep hbc
    have hjs : oe.HasSlot j := by unfold Obj.HasSlot; omega
    have he' : oe.cell j = o.cell k := by unfold Obj.cell; rw [hoeb']; exact he
    obtain ⟨rfl, -⟩ := cell_inj hord hL hoe ho hjs hk he'
    exact hF.evK (by rw [← hoet]; exact hty)
  refine ⟨p, runT_of_run hrun (bkeep_of_upd (bkeep_refl C Γ s) hnB), hch', ?_⟩
  have hbne : oc.base ≠ oe.base := base_ne_of_ty hL hoc hoe (by rw [hoct, hoet]; exact hF.ne.symm)
  have h32 : fld t.memory c 32 = fld s.memory c 32 := by
    show fld (upd s.memory _ x) c 32 = _
    refine fld_upd_ne' ?_
    rw [← hocb', ← hoeb']
    exact cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hbne)
  have h104 : fld t.memory e 104 = fld s.memory e 104 := by
    show fld (upd s.memory _ x) e 104 = _
    refine fld_upd_ne' ?_
    rw [← hoeb']
    exact cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr (by omega))
  rw [phi_eq hch'.chain, phi_eq hch.chain, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq, h32, h104]
  show _ ≤ _ + (fld t.memory e 64).toNat + (fld t.memory e 192).toNat
  omega

/-- The depth-path tracked facts with the chain of the running frame named. -/
def GDL (H : Hooks σ) (gw : List MlS) (Γ : Gam) (s0 : State σ) (p : Ptrs) (B : Nat)
    (u : State σ) : Prop :=
  (∀ x ∈ gcNames, u.locals.lookup x = s0.locals.lookup x) ∧ JrNZ u ∧
  ∃ Γ1 p1 fs, RunT guestC H gw Γ s0 Γ1 u p p1 ∧ ChainL guestC tEV tCK Γ1 u fs ∧ Phi u ≤ B ∧
    ChainE GP GR Γ1 u fs ∧ RootK s0 u

/-- One driver-slot update `st ev + 8j, (lds 1 (ev + 8j)) + x` (`j ∈ {8, 9}`). -/
theorem gc_addw {H : Hooks σ} (hD : DrvCfg guestC H tEV tCK) {gw : List MlS} {Γ : Gam}
    {s0 : State σ} {p : Ptrs} {B : Nat} {j : Nat} (hj : j = 8 ∨ j = 9) {x : MlS}
    {w : BitVec 64} (hx : x ∈ gcNames) (lx : s0.locals.lookup x = some (.val (.word w)))
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ u, GDL H gw Γ s0 p (B + if j = 8 then w.toNat else 0) u → Q none u) :
    HoareG σ X (GDL H gw Γ s0 p B) (stG "ev" (8 * j) (.op .add [gLoad "ev" (8 * j), lv x])) Q := by
  have hFr := hD.fc
  refine hoareG_stG fun u _ ⟨hlf, hJ, Γ1, p1, fs, hrun, hch, hΦ, hE, hRt⟩ G v hG hv => ?_
  obtain ⟨e, c, rest, rfl, he, -, -⟩ := hch.chain
  have hG' : gword u (nm "ev") = some e := he
  rw [hG', Option.some.injEq] at hG
  subst hG
  obtain ⟨w', rfl⟩ := ev_op_word hv
  obtain ⟨y, z, hy, hz, rfl⟩ := ev_add2_inv hv
  obtain ⟨hy', -⟩ := ev_gLoad_eq hG' hy
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hy'
  subst hy'
  rw [ev_lv_eq ((hlf x hx).trans lx)] at hz
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hz
  subst hz
  refine ⟨_, rfl, fun _ => hQ _ ⟨hlf, hJ, Γ1, p1, (e, c) :: rest, ?_⟩⟩
  have hGu := hrun.2.2.2.2.2.1
  obtain ⟨q, hrun2, hch2, hΦ2⟩ := topw_step (gw := gw) hFr hGu hch (j := j)
    (by rcases hj with rfl | rfl <;> decide) (by omega) (fld u.memory e (8 * j) + w)
  obtain rfl : q = p1 := Option.some.inj (hrun2.1.symm.trans hrun.2.1)
  have ⟨q0, hq0, hord, hL, _⟩ := hGu
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
  have hoeb' : oe.base = e := hoeb
  have hq0p : q0 = q := Option.some.inj (hq0.symm.trans hrun.2.1)
  subst q0
  have hE2 : ChainE GP GR Γ1
      { u with memory := upd u.memory (e + BitVec.ofNat 64 (8 * j)) (fld u.memory e (8 * j) + w) }
      ((e, c) :: rest) :=
    chainE_updEV (t := { u with memory := (upd u.memory (e + BitVec.ofNat 64 (8 * j))
        (fld u.memory e (8 * j) + w)) }) hFr hrun.2.1 ((ptrsOf_congr rfl).trans hrun.2.1) hord hL
      hch hoe hoet (k := 8 * j)
      (by rcases hj with rfl | rfl <;> decide) (by rcases hj with rfl | rfl <;> decide)
      (by show upd _ _ _ = _; rw [hoeb']) hE
  refine ⟨runT_trans hrun hrun2, hch2, ?_, hE2, rootK_trans hRt (rootK_of_same hch.chain hch2.chain) ⟨_, hch.chain⟩⟩
  have hse := ev_size hFr hL hoe hoet
  have h192 : fld (upd u.memory (e + BitVec.ofNat 64 (8 * j)) (fld u.memory e (8 * j) + w)) e 192 =
      fld u.memory e 192 := by
    refine fld_upd_ne' ?_
    rw [← hoeb']
    exact cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr (by omega))
  rw [h192] at hΦ2
  rcases hj with rfl | rfl
  · have hite : (if (8 : Nat) = 8 then w.toNat else 0) = w.toNat := if_pos rfl
    rw [hite]
    rw [show (8 * 8 : Nat) = 64 from rfl, fld_upd_eq] at hΦ2
    rw [show (8 * 8 : Nat) = 64 from rfl]
    have := toNat_add_le (fld u.memory e 64) w
    omega
  · have h64 : fld (upd u.memory (e + BitVec.ofNat 64 (8 * 9)) (fld u.memory e (8 * 9) + w)) e 64 =
        fld u.memory e 64 := by
      refine fld_upd_ne' ?_
      rw [← hoeb']
      exact cell_ne hord hL hoe hoe (by omega) (by omega) (Or.inr (by omega))
    rw [h64] at hΦ2
    have hite : (if (9 : Nat) = 8 then w.toNat else 0) = 0 := if_neg (by decide)
    rw [hite]
    omega

/-- **The depth-limit path of `generic_call`.** -/
theorem gc_depth {H : Hooks σ} (hF : FoldOK σ X guestC H) (hD : DrvCfg guestC H tEV tCK)
    (hK : Shards.GuestHooks H) (fpSp : KeepsFp σ X (nm "stack_push")) {gw : List MlS}
    {Γ : Gam} {s0 : State σ} {p : Ptrs} {gas res : BitVec 64}
    (lgas : s0.locals.lookup (nm "gas") = some (.val (.word gas)))
    (lres : s0.locals.lookup (nm "reservoir") = some (.val (.word res))) :
    HoareG σ X (GDL H gw Γ s0 p (Phi s0)) gcDepth
      (fun r t => r ≠ none ∧ GPost H gw Γ s0 p gas r t) := by
  have hFr := hD.fc
  have hH := hFr.hooks
  unfold gcDepth
  -- `st ev + 64, (lds 1 (ev + 64)) + gas`
  refine hoareG_seq (R := fun r u => r = none ∧ GDL H gw Γ s0 p (Phi s0 + gas.toNat) u)
    (gc_addw (j := 8) hD (Or.inl rfl) (by decide) lgas fun u h => ⟨rfl, by simpa using h⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pre (P := GDL H gw Γ s0 p (Phi s0 + gas.toNat)) ?_ (fun u _ h => h.2)
  -- `st ev + 72, (lds 1 (ev + 72)) + reservoir`
  refine hoareG_seq (R := fun r u => r = none ∧ GDL H gw Γ s0 p (Phi s0 + gas.toNat) u)
    (gc_addw (j := 9) hD (Or.inr rfl) (by decide) lres fun u h => ⟨rfl, by simpa using h⟩)
    (fun r t _ hr _ h => absurd h.1 hr) ?_
  refine hoareG_pre (P := GDL H gw Γ s0 p (Phi s0 + gas.toNat)) ?_ (fun u _ h => h.2)
  -- `if new_account_charged != 0 { credit_state_gas_refund(183600); }`
  let RD : Option (PanSemResultExact 64) → State σ → Prop := fun r u =>
    (r = none ∧ GDL H gw Γ s0 p (Phi s0 + gas.toNat) u) ∨
      (r ≠ none ∧ GPost H gw Γ s0 p gas r u)
  have hRD : ∀ r t, InCtx t X → r ≠ none → Good r → RD r t →
      r ≠ none ∧ GPost H gw Γ s0 p gas r t :=
    fun r t _ hr _ h => ⟨hr, h.elim (fun h => absurd h.1 hr) (fun h => h.2)⟩
  refine hoareG_seq (R := RD) ?_ hRD ?_
  · refine hoareG_ite ?_ (hoareG_skip fun u _ ⟨h, _⟩ => Or.inl ⟨rfl, h⟩)
    refine hoareG_pre (P := GDL H gw Γ s0 p (Phi s0 + gas.toNat)) ?_ (fun u _ h => h.1)
    -- the extension across the call (its memory effect is `creditMem`)
    have hcE : ∀ {u : State σ} {Γ1 : Gam} {p1 : Ptrs} {fs : List Frame},
        RunT guestC H gw Γ s0 Γ1 u p p1 → ChainL guestC tEV tCK Γ1 u fs → ChainE GP GR Γ1 u fs →
        ∀ {callee : Locs} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
          {Γ2 : Gam} {p2 : Ptrs},
        SumCore guestC H (sg1 []) (fun a => ProtCell guestC Γ1 a ∧ ¬ KCell guestC Γ1 a)
          Γ1 (callEntryStateHOLFinite u callee) vs r st Γ2 p1 p2 →
        (Good (some r) → ∃ e a, vs = [.val (.word a)] ∧
          gword (callEntryStateHOLFinite u callee) nmEv = some e ∧ r = .returned (.val (.word 0)) ∧
          st.globals = (callEntryStateHOLFinite u callee).globals ∧
          st.memory = creditMem (callEntryStateHOLFinite u callee).memory e a) →
        Good (some r) → ∀ fs2, ChainL guestC tEV tCK Γ2 st fs2 → ChainE GP GR Γ2 st fs2 ∧ RootK u st := by
      intro u Γ1 p1 fs hrun hch hE callee vs r st Γ2 p2 hc hCr hg fs2 hch2
      obtain ⟨e, a, -, he, -, hgl, hmem⟩ := hCr hg
      obtain ⟨ef, cf, rest, hfs, hef, hcf, hic⟩ := hch.chain
      have he' : e = ef := by
        have : gword u nmEv = some e := he
        rw [hef] at this; exact (Option.some.inj this).symm
      subst he'
      obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, cf) (by rw [hfs]; simp)).1
      have ⟨q1, hq1, hord1, hL1, _⟩ := hrun.2.2.2.2.2.1
      obtain rfl : q1 = p1 := Option.some.inj (hq1.symm.trans hrun.2.1)
      obtain ⟨hpu, hpt, hmo, hext, hnf, hG2, -⟩ := hc
      have ⟨q2, hq2, hord2, hL2, _⟩ := hG2
      obtain rfl : q2 = p2 := Option.some.inj (hq2.symm.trans hpt)
      have hoeb' : oe.base = e := hoeb
      have hck : ∀ f ∈ fs, ∀ j ∈ ckXSlots, fld st.memory f.2 j = fld u.memory f.2 j := by
        intro f hf j hj
        rw [hmem, ← hoeb']; exact ck_credit hFr hord1 hL1 hoe hoet _ a (ck_obj hch hf) hj
      have hof : ChainOf st fs := ⟨e, cf, rest, hfs, by rw [gword_congr hgl]; exact hef,
        by rw [gword_congr hgl]; exact hcf, isChain_keep hic fun f hf j hj => hck f hf j (ckX_sub hj)⟩
      have hfe := chainOf_unique hch2.chain hof
      subst fs2
      have hx : ∀ f ∈ fs, XKeep guestC Γ1 (callEntryStateHOLFinite u callee).memory st.memory f := by
        intro f hf
        rw [hmem, ← hoeb']
        exact xKeep_credit hFr hord1 hL1 hoe hoet _ a (ev_obj hch hf)
      exact ⟨chainE_move hpu hpt hord1 hord2 hL1 hL2 hmo hext hnf hx hck
        (chainE_congr (s := u) rfl rfl hE), rootK_of_same hch.chain hof⟩
    refine hoareG_callD (FunSpec.and (sumSpecA_relX (sumSpecA_of_sumSpec (credit_sumSpec hF.hX hFr)))
      (credit_spec hF.hX)) ?_ ?_
    · intro u _ ⟨hlf, hJ, Γ1, p1, fs, hrun, hch, hΦ, hE, hRt⟩ vs hvs callee v st ⟨hR, hCr⟩ _
      have hlen := evs_one hvs
      obtain ⟨Γ2, p2, hrun2, hc, hq⟩ := run_callT hH (fun g h => by simp [sg1] at h) hrun hR
        (by simp [Good]) (not_abortive_ret v) (argsOK_any (any_sg1 []) hlen)
        (chain_congr (s := u) rfl rfl ⟨fs, hch⟩) (fun a h => h.2)
      obtain ⟨hc2, -, hΦ2⟩ := hq
      have hph : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      have hph' : Phi { st with locals := u.locals } = Phi st := phi_locFree st _ _
      obtain ⟨fs2, hch2⟩ := hc2
      obtain ⟨hE2, hR2⟩ := hcE hrun hch hE hc hCr (by simp [Good]) fs2 hch2
      refine Or.inl ⟨rfl, hlf, jrNZ_congr (s := st) rfl
        (jrNZ_sumCore (by decide) (by simp [sg1]) hc (jrNZ_congr (s := u) rfl hJ)), Γ2, p2, fs2,
        runT_locals hH hrun2 _, chainL_congr (s := st) (s' := { st with locals := u.locals }) rfl rfl hch2,
        by rw [hph']; omega, chainE_congr (s := st) rfl rfl hE2,
        rootK_congr (s := s0) (t := st) rfl rfl rfl rfl (rootK_trans hRt hR2 ⟨_, hch.chain⟩)⟩
    · intro u _ ⟨hlf, hJ, Γ1, p1, fs, hrun, hch, hΦ, hE, hRt⟩ vs hvs callee r st ⟨hR, hCr⟩ _ habn
      have hlen := evs_one hvs
      refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
      cases hr'
      obtain ⟨Γ2, p2, hrun2, hc, hq⟩ := run_callT hH (fun g h => by simp [sg1] at h) hrun hR
        (good_of_abn habn) hna' (argsOK_any (any_sg1 []) hlen) (chain_congr (s := u) rfl rfl ⟨fs, hch⟩)
        (fun a h => h.2)
      obtain ⟨hc2, -, hΦ2⟩ := hq
      obtain ⟨fs2, hch2⟩ := hc2
      obtain ⟨hE2, hR2⟩ := hcE hrun hch hE hc hCr (good_of_abn habn) fs2 hch2
      have hph : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      have hpe : Phi (emptyLocalsHOLFinite st) = Phi st := phi_locFree st _ _
      exact gpost_of (runT_emptyLocals hH hrun2)
        ⟨fs2, chainL_congr (s := st) (s' := emptyLocalsHOLFinite st) rfl rfl hch2,
          chainE_congr (s := st) rfl rfl hE2⟩
        (by rw [hpe]; omega)
        (rootK_congr (s := s0) (t := st) rfl rfl rfl rfl (rootK_trans hRt hR2 ⟨_, hch.chain⟩)) _ r rfl hna'
  refine hoareG_pre (P := GDL H gw Γ s0 p (Phi s0 + gas.toNat)) ?_
    (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  -- `stack_push(<0, 0, 0, 0>)`
  refine hoareG_seq (R := RD) ?_ hRD ?_
  · have hsp := fin_sp hF hK fpSp
    -- the step from a tracked state
    have step : ∀ u, GDL H gw Γ s0 p (Phi s0 + gas.toNat) u → ∀ vs, vs.length = 1 →
        ∀ callee r st,
        SumRelX guestC H (sgA 1 []) (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
          (fun vs s Γ a => ProtCell guestC Γ a ∧ PWtopM tEV tCK [1, 2, 29] vs s Γ a)
          (fun _ s _ r t _ => FpQ s t ∧ ∀ e, gword s nmEv = some e →
            (fld s.memory e 16).toNat < (fld s.memory e 232).toNat →
              (∃ v, r = .returned v) ∧ fld t.memory e 8 = fld s.memory e 8 ∧
                fld t.memory e 232 = fld s.memory e 232)
          vs (callEntryStateHOLFinite u callee) r st → Good (some r) → ¬ Abortive r →
        ∃ Γ2 p2 fs2, RunT guestC H gw Γ s0 Γ2 st p p2 ∧ ChainL guestC tEV tCK Γ2 st fs2 ∧
          Phi st ≤ Phi s0 + gas.toNat ∧ JrNZ st ∧ ChainE GP GR Γ2 st fs2 ∧ RootK s0 st := by
      intro u ⟨hlf, hJ, Γ1, p1, fs, hrun, hch, hΦ, hE, hRt⟩ vs hlen callee r st hR hg hna
      obtain ⟨e, c, rest, rfl, he, -, -⟩ := hch.chain
      obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (by simp)).1
      obtain ⟨Γ2, p2, hrun2, hc, hq, -⟩ := run_callT hH (fun g h => by simp [sgA] at h) hrun hR hg hna
        (argsOK_any (sgA_any 1 []) hlen) ⟨oe, hoe, hoet, by
          have hb : oe.base = e := hoeb
          rw [hb]; exact he⟩
        (fun a ⟨hp, hw⟩ => by
          obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
          exact not_kCell_of_pwtopM hord hL hw)
      have hGe : G guestC H Γ1 (callEntryStateHOLFinite u callee) :=
        (G_locFree hH u _ _).mpr hrun.2.2.2.2.2.1
      have hpe : ptrsOf (callEntryStateHOLFinite u callee) = some p1 :=
        (ptrsOf_congr rfl).trans hrun.2.1
      obtain ⟨hch2, hΦ2, -, -⟩ := pa_coreX hFr hGe
        (chainL_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl rfl hch) (ks := [1, 2, 29])
        (by decide) (by decide) (by simp [sgA]) (sumCore_pwM hc fun a h => ⟨h.1, h.2.1⟩) (fun a ha => absurd ha (argCells_any (sgA_any 1 [])))
        (hq p1 p2 hpe hc.2.1) (Or.inl ⟨by decide, by decide⟩) (Or.inl ⟨by decide, by decide⟩)
      have hph : Phi (callEntryStateHOLFinite u callee) = Phi u := phi_locFree u _ _
      have hE2 : ChainE GP GR Γ2 st ((e, c) :: rest) :=
        chainE_sumCoreM hFr xCfg_guest (by decide) (ks := [1, 2, 29]) (by decide) (by decide) hGe hc
          (fun a ha => absurd ha (argCells_any (sgA_any 1 []))) (fun a _ h => h) he
          ⟨oe, hoe, hoeb, hoet⟩ (fun f hf => hch.objs f hf) (chainE_congr (s := u) rfl rfl hE)
      exact ⟨Γ2, p2, (e, c) :: rest, hrun2, hch2, by omega,
        jrNZ_sumCore (by decide) (by simp [sgA]) hc (jrNZ_congr (s := u) rfl hJ), hE2,
        rootK_trans hRt (rootK_of_same hch.chain hch2.chain) ⟨_, hch.chain⟩⟩
    refine hoareG_callD (sumSpecA_relX hsp) ?_ ?_
    · intro u _ hu vs hvs callee v st hR _
      obtain ⟨Γ2, p2, fs2, hrun2, hch2, hΦ2, hJ2, hE2, hR2⟩ := step u hu vs (evs_one hvs) callee _ st hR
        (by simp [Good]) (not_abortive_ret v)
      refine Or.inl ⟨rfl, hu.1, jrNZ_congr (s := st) rfl hJ2, Γ2, p2, fs2, runT_locals hH hrun2 _,
        chainL_congr (s := st) (s' := { st with locals := u.locals }) rfl rfl hch2,
        by rw [phi_locFree.loc]; exact hΦ2, chainE_congr (s := st) rfl rfl hE2,
        rootK_congr (s := s0) (t := st) rfl rfl rfl rfl hR2⟩
    · intro u _ hu vs hvs callee r st hR _ habn
      refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
      cases hr'
      obtain ⟨Γ2, p2, fs2, hrun2, hch2, hΦ2, -, hE2, hR2⟩ := step u hu vs (evs_one hvs) callee r st hR
        (good_of_abn habn) hna'
      have hpe : Phi (emptyLocalsHOLFinite st) = Phi st := phi_locFree st _ _
      exact gpost_of (runT_emptyLocals hH hrun2)
        ⟨fs2, chainL_congr (s := st) (s' := emptyLocalsHOLFinite st) rfl rfl hch2,
          chainE_congr (s := st) rfl rfl hE2⟩
        (by rw [hpe]; omega) (rootK_congr (s := s0) (t := st) rfl rfl rfl rfl hR2) _ r rfl hna'
  refine hoareG_pre (P := GDL H gw Γ s0 p (Phi s0 + gas.toNat)) ?_
    (fun u _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1))
  -- `return 0`
  refine hoareG_return fun u _ ⟨_, _, Γ1, p1, fs, hrun, hch, hΦ, hE, hRt⟩ v _ => ?_
  have hpe : Phi (emptyLocalsHOLFinite u) = Phi u := phi_locFree u _ _
  have hce : ChainL guestC tEV tCK Γ1 (emptyLocalsHOLFinite u) fs :=
    chainL_congr (s := u) (s' := emptyLocalsHOLFinite u) rfl rfl hch
  have hpb : Phi (emptyLocalsHOLFinite u) ≤ Phi s0 + gas.toNat + 2 := by rw [hpe]; omega
  exact ⟨by simp, gpost_of (runT_emptyLocals hH hrun) ⟨fs, hce, chainE_congr (s := u) rfl rfl hE⟩
    hpb (rootK_congr (s := s0) (t := u) rfl rfl rfl rfl hRt) _⟩

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.gc_depth
#print axioms InitECandidate.Solver.MemSafe.Frames.topw_step
