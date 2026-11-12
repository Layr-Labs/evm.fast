import InitECandidate.Solver.MemSafe.Frames.Assemble

/-!
# Calls to summarized functions inside driver bodies; `frame_start`

* `SumRelG`: the relation of a `SumSpec` (any `Pre`, `PW`, `Q`) for one call; `run_call`:
  calling it from a run-tracked state extends the run and yields `Q`.
* `KLe`: the run-and-chain facts carried through a driver body that does not push frames
  (`Run`, some `Chain`, `Φ` not raised).
* **`start_sumSpec`**: `frame_start` (`try done = frame_prologue() catch EvmErr => err
  { frame_exception(err); } if done != 0 { CK_DONE := 1 }`) keeps `G` and `Chain` and does not
  raise `Φ`, from a summary of `frame_prologue` with that post.

```
fun 1 frame_start() {
  var err = 0; var done = 0;
  try done = frame_prologue() catch EvmErr => err { frame_exception(err); }
  if done != 0 { st cur_cont + CK_DONE, 1; }
  return 0; }
```
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Calling a summarized function -/

/-- The relation of `SumSpec σ X C H f sg Pre PW Q` for one call. -/
def SumRelG (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ∀ Γ, G C H Γ s → (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) →
    Pre vs s Γ → ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
      Q vs s Γ r t Γ'

theorem sumSpec_rel {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpec σ X C H f sg Pre PW Q) : FunSpec σ X f (fun vs s r t => SumRelG C H sg Pre PW Q vs s r t) :=
  h

/-- **A call to a summarized function from a run-tracked state.** -/
theorem run_call {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {sg : Sig}
    (hps : ∀ pt ∈ sg.params, pt = .any) {gw : List MlS} (hsub : ∀ g, g ∈ sg.gw → g ∈ gw)
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    {Γ0 Γ1 : Gam} {s0 s : State σ} {p0 p1 : Ptrs} (hG0 : G C H Γ0 s0)
    (hrun : Run C H gw Γ0 s0 Γ1 s p0 p1) {vs : List (ValueHOL 64)}
    (hlen : vs.length = sg.params.length) {callee : Locs} {r : PanSemResultExact 64}
    {st : State σ} (hR : SumRelG C H sg Pre PW Q vs (callEntryStateHOLFinite s callee) r st)
    (hg : Good (some r)) (hpre : Pre vs (callEntryStateHOLFinite s callee) Γ1) :
    ∃ Γ2 p2, Run C H gw Γ0 s0 Γ2 st p0 p2 ∧ Q vs (callEntryStateHOLFinite s callee) Γ1 r st Γ2 := by
  have hG1 := hrun.2.2.2.2.2.1
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) := (G_locFree hH s _ _).mpr hG1
  have ⟨q, hq, _⟩ := hGe
  obtain ⟨Γ2, q1, q2, hc, hQ⟩ := hR hg Γ1 hGe ⟨q, hq, argsOK_any hps hlen⟩ hpre
  have hq1 : q1 = p1 := by
    have := hc.1
    rw [show ptrsOf (callEntryStateHOLFinite s callee) = ptrsOf s from ptrsOf_congr rfl,
      hrun.2.1, Option.some.injEq] at this
    exact this.symm
  subst hq1
  exact ⟨Γ2, q2, run_trans hG0 hrun (run_entry callee (run_of_sumCore hps hsub hc)), hQ⟩

/-- Run, chain and a non-increasing `Φ`, from `s0`. -/
def KLe (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gw : List MlS) (Γ0 : Gam) (s0 : State σ)
    (p0 : Ptrs) (u : State σ) : Prop :=
  ∃ Γ' p', Run C H gw Γ0 s0 Γ' u p0 p' ∧ Chain C tEV tCK Γ' u ∧ Phi u ≤ Phi s0

theorem kLe_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {u : State σ}
    (h : KLe C H tEV tCK gw Γ0 s0 p0 u) (l : Locs) :
    KLe C H tEV tCK gw Γ0 s0 p0 { u with locals := l } := by
  obtain ⟨Γ', p', hr, hc, hΦ⟩ := h
  exact ⟨Γ', p', run_locals hH hr l, chain_locFree.loc u l |>.mpr hc,
    by rw [phi_locFree.loc]; exact hΦ⟩

/-- The run part of `KLe` (what a summary needs on every good result). -/
def KRun (C : Cfg) (H : Hooks σ) (gw : List MlS) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs)
    (u : State σ) : Prop :=
  ∃ Γ' p', Run C H gw Γ0 s0 Γ' u p0 p'

theorem kRun_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {u : State σ} (h : KRun C H gw Γ0 s0 p0 u) (l : Locs) :
    KRun C H gw Γ0 s0 p0 { u with locals := l } :=
  let ⟨Γ', p', hr⟩ := h; ⟨Γ', p', run_locals hH hr l⟩

/-! ## `frame_start` -/

def startBody : ProgHOL 64 :=
  .dec nmErr .one (cw 0)
    (.dec nmDone .one (cw 0)
      (.seq
        (.call (some (some (.local, nmDone), some (nmEvmErr, nmErr, excH nmErr)))
          (nm "frame_prologue") [])
        (.seq (.ite (.cmp .notEqual (lv nmDone) (cw 0)) (stG "cur_cont" 32 (cw 1)) .skip)
          (.return (cw 0)))))

theorem entry_start : fnEntry Guest.Software.guestFn_frame_start =
    (nm "frame_start", [], startBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_start : guestCode (nm "frame_start") = some ([], startBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 581) (by decide)) ⟨_, rfl⟩
    entry_start

/-- The post `frame_start` needs of `frame_prologue`: `Chain`, `Φ` not raised, on a return or an
`EvmErr`. -/
def QPro (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  (∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t ≤ Phi s) ∧
  (∀ v, r = .exception nmEvmErr v → Chain C tEV tCK Γ' t ∧ Phi t ≤ Phi s)

/-- `Chain` and `Φ` not raised on a return. -/
def QLe (C : Cfg) (tEV tCK : Nat) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → Chain C tEV tCK Γ' t ∧ Phi t ≤ Phi s

/-- `CK_DONE := 1` keeps `G` and `Chain` and does not raise `Φ`. -/
theorem done_write {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {gw : List MlS} {Γ : Gam} {u : State σ} {c : BitVec 64} (hG : G C H Γ u)
    (hch : Chain C tEV tCK Γ u) (hc : gword u nmCC = some c) {t : State σ}
    (hm : t.memory = upd u.memory (c + BitVec.ofNat 64 32) 1) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    ∃ p, Run C H gw Γ u Γ t p p ∧ Chain C tEV tCK Γ t ∧ Phi t ≤ Phi u := by
  obtain ⟨fs, hL⟩ := hch
  obtain ⟨p, e, c', rest, oe, oc, hps, hord, hLy, hfs, he, hc', hoe, hoeb, hoet, hoc, hocb, hoct,
    hse, hsc, hne⟩ := top_objs hF hG hL
  rw [hc, Option.some.injEq] at hc'
  subst hc' hoeb hocb
  have hmod : ModifiesOnly (TopCells oe.base oc.base) u.memory t.memory := by
    rw [hm]; exact modifiesOnly_upd (modifiesOnly_refl _ _) (Or.inr rfl) _
  obtain ⟨p', hrun, hch', hrest⟩ := top_write (gw := gw) hF hG hL hfs hmod hg hd hbe
  refine ⟨p', hrun, ⟨fs, hch'⟩, ?_⟩
  have hx : ∀ j, j < 280 → oe.base + BitVec.ofNat 64 j ≠ oc.base + BitVec.ofNat 64 32 :=
    fun j hj => cell_ne hord hLy hoe hoc (by omega) (by omega) (Or.inl hne)
  rw [phi_eq hch'.chain, phi_eq hL.chain, hfs, wsum_cons, wsum_cons, hrest, wt_eq, wt_eq]
  have h1 : fld t.memory oc.base 32 = 1 := by rw [hm]; unfold fld; rw [rd_upd, if_pos rfl]
  have h64 : fld t.memory oe.base 64 = fld u.memory oe.base 64 := by
    rw [hm]; unfold fld; rw [rd_upd, if_neg (hx 64 (by omega))]
  have h192 : fld t.memory oe.base 192 = fld u.memory oe.base 192 := by
    rw [hm]; unfold fld; rw [rd_upd, if_neg (hx 192 (by omega))]
  rw [h1, h64, h192]
  have h10 : ¬ ((1 : BitVec 64) = 0 ∧ fld t.memory oe.base 104 ≠ 0) := by
    rintro ⟨h, -⟩; exact absurd h (by decide)
  rw [if_neg h10]
  omega

/-- The post of a driver body that pushes no frame: a return ends with run, chain and `Φ` not
raised; any other good result with the run. -/
def DPost (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (gw : List MlS) (Γ0 : Gam) (s0 : State σ)
    (p0 : Ptrs) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  ((∃ v, r = .returned v) ∧ KLe C H tEV tCK gw Γ0 s0 p0 t) ∨
    ((∀ v, r ≠ .returned v) ∧ KRun C H gw Γ0 s0 p0 t)

theorem dPost_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {r : PanSemResultExact 64}
    {t : State σ} (h : DPost C H tEV tCK gw Γ0 s0 p0 r t) (l : Locs) :
    DPost C H tEV tCK gw Γ0 s0 p0 r { t with locals := l } :=
  h.imp (fun ⟨a, b⟩ => ⟨a, kLe_locals hH b l⟩) (fun ⟨a, b⟩ => ⟨a, kRun_locals hH b l⟩)

theorem kRun_of_kLe {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {gw : List MlS} {Γ0 : Gam}
    {s0 : State σ} {p0 : Ptrs} {u : State σ} (h : KLe C H tEV tCK gw Γ0 s0 p0 u) :
    KRun C H gw Γ0 s0 p0 u := let ⟨Γ', p', hr, _⟩ := h; ⟨Γ', p', hr⟩

theorem not_returned_of_abn {r : PanSemResultExact 64} (h : MemSafe.Abn r) :
    ∀ v, r ≠ .returned v := by
  rcases h with ⟨e, w, rfl⟩ | ⟨e, rfl⟩ <;> intro v h <;> cases h

/-- **`frame_start`'s summary.** -/
theorem start_sumSpec {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hC : X.code.lookup = guestCode)
    (hF : FrameCfg C H tEV tCK) {gw : List MlS} {M : Nat}
    {PWp : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    (hpro : SumSpec σ X C H (nm "frame_prologue") (sg0 gw) (PreInv C tEV tCK M) PWp
      (QPro C tEV tCK)) :
    SumSpec σ X C H (nm "frame_start") (sg0 gw) (PreInv C tEV tCK M) (fun _ _ _ _ => True)
      (QLe C tEV tCK) := by
  intro vs body callee rs hl s0 hs0 hloc r hr hg Γ hG _ ⟨hch0, hΦ0⟩
  rw [hC] at hl
  obtain ⟨rfl, -, -⟩ := lookupCode_zero code_start hl
  have ⟨p, hps, _⟩ := hG
  have hH := hF.hooks
  have hsub0 : ∀ g, g ∈ (sg1 []).gw → g ∈ gw := fun g h => by simp [sg1] at h
  have hsubp : ∀ g, g ∈ (sg0 gw).gw → g ∈ gw := fun g h => h
  let KS := KLe C H tEV tCK gw Γ s0 p
  let KA := KRun C H gw Γ s0 p
  have H0 : HoareG σ X (fun u => u = s0) startBody
      (fun ro t => ∀ r, ro = some r → DPost C H tEV tCK gw Γ s0 p r t) := by
    refine hoareG_dec fun s1 _ hs1 v1 _ _ => ?_
    have hs1' := hs1.symm
    subst hs1'
    refine hoareG_dec fun s2 _ hs2 v2 _ _ => ?_
    subst hs2
    have hkl : KS (setVarHOLFinite nmDone v2 (setVarHOLFinite nmErr v1 s0)) :=
      kLe_locals hH ⟨Γ, p, run_refl hG hps, hch0, le_refl _⟩ _
    refine hoareG_seq (R := fun ro u => (ro = none ∧ KS u) ∨
        (ro ≠ none ∧ (∀ v, ro ≠ some (.returned v)) ∧ KA u)) ?_ ?_ ?_
    · refine hoareG_callH (sumSpec_rel hpro) ?_ ?_ ?_
      · intro s _ hs vs hvs callee v st hR _
        subst hs
        obtain ⟨Γ1, p1, hrun1, hc1, hΦ1⟩ := hkl
        obtain ⟨Γ2, p2, hrun2, hQ⟩ := run_call hH (any_sg0 gw) hsubp hG hrun1
          (by rw [evs_zero hvs]; rfl) hR (by simp [Good])
          ⟨(chain_locFree.entry _ _).mpr hc1, by rw [phi_locFree.entry]; omega⟩
        obtain ⟨hc2, hΦ2⟩ := hQ.1 v rfl
        rw [phi_locFree.entry] at hΦ2
        have hk : KS st := ⟨Γ2, p2, hrun2, hc2, by omega⟩
        refine ⟨(fun h => by cases h), fun k x htg _ => ?_⟩
        simp only [Option.some.injEq, Prod.mk.injEq] at htg
        obtain ⟨rfl, rfl⟩ := htg
        exact Or.inl ⟨rfl, kLe_locals hH hk _⟩
      · intro s _ hs vs hvs callee v st hR _
        subst hs
        obtain ⟨Γ1, p1, hrun1, hc1, hΦ1⟩ := hkl
        obtain ⟨Γ2, p2, hrun2, hQ⟩ := run_call hH (any_sg0 gw) hsubp hG hrun1
          (by rw [evs_zero hvs]; rfl) hR (by simp [Good])
          ⟨(chain_locFree.entry _ _).mpr hc1, by rw [phi_locFree.entry]; omega⟩
        obtain ⟨hc2, hΦ2⟩ := hQ.2 v rfl
        rw [phi_locFree.entry] at hΦ2
        refine hoareG_callD (sumSpec_rel (exc_sumSpec hC hF M)) ?_ ?_
        · intro u _ hu vs' hvs' callee' v' st' hR' _
          subst hu
          have hrun2' := run_locals hH hrun2 ((setVarHOLFinite nmDone v2
            (setVarHOLFinite nmErr v1 s0)).locals.update (nmErr, v))
          obtain ⟨Γ3, p3, hrun3, hQ3⟩ := run_call hH (any_sg1 []) hsub0 hG hrun2'
            (evs_one hvs') hR' (by simp [Good])
            ⟨(chain_locFree.entry _ _).mpr ((chain_locFree.loc _ _).mpr hc2),
              by rw [phi_locFree.entry, phi_locFree.loc]; omega⟩
          obtain ⟨hc3, hΦ3⟩ := hQ3 v' rfl
          rw [phi_locFree.entry, phi_locFree.loc st] at hΦ3
          have hk : KS st' := ⟨Γ3, p3, hrun3, hc3, by omega⟩
          exact Or.inl ⟨rfl, kLe_locals hH hk _⟩
        · intro u _ hu vs' hvs' callee' r' st' hR' _ habn
          subst hu
          have hrun2' := run_locals hH hrun2 ((setVarHOLFinite nmDone v2
            (setVarHOLFinite nmErr v1 s0)).locals.update (nmErr, v))
          obtain ⟨Γ3, p3, hrun3, -⟩ := run_call (Q := QExc C tEV tCK) hH (any_sg1 []) hsub0 hG
            hrun2' (evs_one hvs') hR' (good_of_abn habn)
            ⟨(chain_locFree.entry _ _).mpr ((chain_locFree.loc _ _).mpr hc2),
              by rw [phi_locFree.entry, phi_locFree.loc]; omega⟩
          refine Or.inr ⟨by simp, fun v h => ?_, ⟨Γ3, p3, run_emptyLocals hH hrun3⟩⟩
          simp only [Option.some.injEq] at h
          exact not_returned_of_abn habn v h
      · intro s _ hs vs hvs callee r' st hR _ habn _
        subst hs
        obtain ⟨Γ1, p1, hrun1, hc1, hΦ1⟩ := hkl
        obtain ⟨Γ2, p2, hrun2, -⟩ := run_call hH (any_sg0 gw) hsubp hG hrun1
          (by rw [evs_zero hvs]; rfl) hR (good_of_abn habn)
          ⟨(chain_locFree.entry _ _).mpr hc1, by rw [phi_locFree.entry]; omega⟩
        refine Or.inr ⟨by simp, fun v h => ?_, ⟨Γ2, p2, run_emptyLocals hH hrun2⟩⟩
        simp only [Option.some.injEq] at h
        exact not_returned_of_abn habn v h
    · intro r t _ hr _ h rr hrr
      subst hrr
      rcases h with ⟨h0, -⟩ | ⟨-, hnr, hk⟩
      · exact absurd h0 hr
      · exact dPost_locals hH (dPost_locals hH (Or.inr ⟨fun v h => hnr v (by rw [h]), hk⟩) _) _
    · refine hoareG_pre (P := KS) ?_ ?_
      rotate_left
      · rintro u - (⟨-, hk⟩ | ⟨h0, -⟩)
        · exact hk
        · exact absurd rfl h0
      refine hoareG_seq (R := fun ro u => ro = none ∧ KS u) ?_
        (fun r t _ hr _ h => absurd h.1 hr) ?_
      · refine hoareG_ite ?_ ?_
        · refine hoareG_stG fun u _ ⟨hk, _⟩ G v hG' hv => ?_
          rw [ev_cw] at hv; cases hv
          refine ⟨_, rfl, fun _ => ⟨rfl, ?_⟩⟩
          obtain ⟨Γ1, p1, hrun1, hc1, hΦ1⟩ := hk
          obtain ⟨q, hrq, hcq, hΦq⟩ := done_write (gw := gw) (t := { u with memory :=
            (upd u.memory (G + BitVec.ofNat 64 32) (BitVec.ofNat 64 1)) }) hF hrun1.2.2.2.2.2.1 hc1
            hG' rfl rfl rfl rfl
          have hq : q = p1 := Option.some.inj (hrq.1.symm.trans hrun1.2.1)
          subst hq
          exact ⟨Γ1, q, run_trans hG hrun1 hrq, hcq, by omega⟩
        · exact hoareG_skip fun u _ ⟨hk, _⟩ => ⟨rfl, hk⟩
      · refine hoareG_return fun u _ ⟨_, hk⟩ v _ => ?_
        intro rr hrr
        cases hrr
        exact dPost_locals hH (dPost_locals hH (Or.inl ⟨⟨_, rfl⟩, kLe_locals hH hk _⟩) _) _
  obtain hP := H0 s0 hs0 rfl (by rw [hr]; exact hg) r hr
  rcases hP with ⟨⟨v, hv⟩, Γ', p', hrun, hch', hΦ'⟩ | ⟨hnr, Γ', p', hrun⟩
  · exact ⟨Γ', p, p', sumCore_of_run rfl rfl hrun, fun _ _ => ⟨hch', hΦ'⟩⟩
  · exact ⟨Γ', p, p', sumCore_of_run rfl rfl hrun, fun v hv => absurd hv (hnr v)⟩

end InitECandidate.Solver.MemSafe.Frames
