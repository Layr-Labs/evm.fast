import InitECandidate.Solver.MemSafe.Frames.FinJ

/-!
# `finish_child`: the bundle entry `finCost`

**`fin_condCost`**: `CondCost … "finish_child" (sg0 []) (PreFinJ M) (finBnd b)`, from the callee
costs `FinCosts` (all-states table entries, and a conditional entry for `rollback_child_access`
under `G` with the child's EV object as argument: `htab_truncate` needs well-formed tables).

The walk: the 11 local loads (`DL`), then `finA` (all-states cost; `finA_hoare` gives `PA` after
it), the switch (exact states, `finB_switch` gives `G` and the child's EV object: `PRb`), `finB`
(the rollback calls under `PRb`, the rest all-states) and `finR` (all-states).
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The callee bounds of `finish_child`. -/
structure FinBs where
  sr : Nat
  rf : Nat
  fh : Nat
  cf : Nat
  rb : Nat
  ie : Nat
  cr : Nat
  sd : Nat
  sp : Nat
  ios : Nat
  au : Nat
  mn : Nat
  mc : Nat
  scr : Nat
  fmr : Nat
  pc : Nat

/-- The callee costs of `finish_child`: table entries, and the conditional entry of
`rollback_child_access`. -/
structure FinCosts (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tEV : Nat) (b : FinBs) :
    Prop where
  sr : CalleeCost σ X (nm "state_restore") b.sr
  rf : CalleeCost σ X (nm "refill_frame_state_gas") b.rf
  fh : CalleeCost σ X (nm "frame_halt") b.fh
  cf : CalleeCost σ X (nm "create_finish") b.cf
  rb : CondCost σ X C H (nm "rollback_child_access") (sgRb tEV) (fun _ _ _ => True) b.rb
  ie : CalleeCost σ X (nm "incorporate_child_on_error") b.ie
  cr : CalleeCost σ X (nm "credit_state_gas_refund") b.cr
  sd : CalleeCost σ X (nm "set_retdata") b.sd
  sp : CalleeCost σ X (nm "stack_push") b.sp
  ios : CalleeCost σ X (nm "incorporate_child_on_success") b.ios
  au : CalleeCost σ X (nm "address_to_u256") b.au
  mn : CalleeCost σ X (nm "min") b.mn
  mc : CalleeCost σ X (nm "memcpy") b.mc
  scr : CalleeCost σ X (nm "scratch_release") b.scr
  fmr : CalleeCost σ X (nm "frame_mem_release") b.fmr
  pc : CalleeCost σ X (nm "pc_add") b.pc

def bH (b : FinBs) : Nat := 3 + b.sr + b.rf + b.fh
def bA (b : FinBs) : Nat := 2 + b.cf + bH b + b.sr
def bErr (b : FinBs) : Nat := 5 + b.rb + b.ie + b.cr + b.sd + b.sp
def bOk2 (b : FinBs) : Nat := 4 + b.ios + b.sd + b.au + b.sp
def bOk1 (b : FinBs) : Nat := 3 + b.ios + b.sd + b.sp
def bCopy (b : FinBs) : Nat := 2 + b.mn + b.mc
def bB (b : FinBs) : Nat := bErr b + bOk2 b + bOk1 b + bCopy b
def bR (b : FinBs) : Nat := 3 + b.scr + b.fmr + b.pc

/-- **The bound of `finish_child`.** -/
def finBnd (b : FinBs) : Nat := bA b + bB b + bR b

theorem good_of_tracked {r : Option (PanSemResultExact 64)} (h : Tracked r) : Good r := by
  rcases r with _ | r
  · exact good_none
  · cases r <;> simp_all [Tracked, Good]

theorem hoare_of_hoareG {P : State σ → Prop} {p : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop} (h : HoareG σ X P p Q) :
    Hoare σ X P p Q :=
  fun s hs hp ht => h s hs hp (good_of_tracked ht)

/-- At the rollback calls: the child's local and EV object, and `G`. -/
def PRb (C : Cfg) (H : Hooks σ) (tEV : Nat) (e : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "child") = some (.val (.word e)) ∧
    ∃ Γ, G C H Γ s ∧ ∃ o ∈ Γ, o.base = e ∧ o.ty = tEV

theorem prb_setVar {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV : Nat} {e : BitVec 64}
    {s : State σ} (h : PRb C H tEV e s) {n : MlS} (hn : n ≠ nm "child") (v : ValueHOL 64) :
    PRb C H tEV e (setVarHOLFinite n v s) := by
  obtain ⟨hc, Γ, hG, ho⟩ := h
  exact ⟨by rw [lk_set_ne _ _ hn]; exact hc, Γ, (G_locFree hH s _ s.clock).mpr hG, ho⟩

/-- One local load, for the cost walk. -/
theorem dl_costDec {s0 : State σ} {lw : List (MlS × BitVec 64)} {n : MlS} {e : ExpHOL 64}
    {w : BitVec 64} {k : ProgHOL 64} {B : Nat}
    (hn : n ∉ lw.map Prod.fst)
    (hv : ∀ u, DL s0 lw u → ∀ v, ev u e = some v → v = .val (.word w))
    (hk : Inv.CostP σ X (DL s0 ((n, w) :: lw)) k B) :
    Inv.CostP σ X (DL s0 lw) (.dec n .one e k) B := by
  refine Inv.costP_dec fun s _ hs v hev _ => Inv.CostP.pre hk fun t _ ht => ?_
  obtain rfl := hv s hs v hev
  subst ht
  obtain ⟨⟨l, rfl⟩, hlw⟩ := hs
  refine ⟨⟨_, rfl⟩, fun xw hxw => ?_⟩
  rcases List.mem_cons.mp hxw with rfl | hxw
  · exact lk_set_self _ _ _
  · rw [lk_set_ne _ _ (fun h => hn (by rw [h]; exact List.mem_map_of_mem hxw))]; exact hlw xw hxw

section costs
variable {C : Cfg} {H : Hooks σ} {tEV : Nat} {b : FinBs} (K : FinCosts σ X C H tEV b)

include K

theorem noH {f : MlS} {args : List (ExpHOL 64)} {B : Nat} (hf : CalleeCost σ X f B) :
    Cost σ X (callD f args) (1 + B + 0) :=
  cost_call hf (fun _ _ _ _ h => by cases h)

theorem finH_cost : Cost σ X finH (bH b) :=
  Cost.mono (cost_seq (noH K K.sr) (cost_seq (noH K K.rf) (cost_seq (noH K K.fh)
    (cost_seq (cost_store _ _) (cost_store _ _))))) (by simp only [bH]; omega)

theorem finA_cost : Cost σ X finA (bA b) :=
  Cost.mono (cost_ite (cost_dec (cost_ite (cost_dec (cost_call K.cf
    (fun _ _ _ _ h => by cases h; exact finH_cost K))) (noH K K.sr))) cost_skip)
    (by simp only [bA]; omega)

theorem finErrR_cost : Cost σ X (.seq (callD (nm "incorporate_child_on_error") [lv (nm "child")])
    (.seq (.ite (.cmp .notEqual (lv (nm "new_account_charged")) (cw 0))
      (callD (nm "credit_state_gas_refund") [cw 183600]) .skip)
    (.seq (callD (nm "set_retdata") [lLoad "child" 120, lLoad "child" 128])
      (callD (nm "stack_push") [.rstruct [cw 0, cw 0, cw 0, cw 0]]))))
    (4 + b.ie + b.cr + b.sd + b.sp) :=
  Cost.mono (cost_seq (noH K K.ie) (cost_seq (cost_ite (noH K K.cr) cost_skip)
    (cost_seq (noH K K.sd) (noH K K.sp)))) (by omega)

theorem finOk2_cost : Cost σ X finOk2 (bOk2 b) :=
  Cost.mono (cost_seq (noH K K.ios) (cost_seq (noH K K.sd) (cost_decCall K.au (noH K K.sp))))
    (by simp only [bOk2]; omega)

theorem finOk1_cost : Cost σ X finOk1 (bOk1 b) :=
  Cost.mono (cost_seq (noH K K.ios) (cost_seq (noH K K.sd) (noH K K.sp)))
    (by simp only [bOk1]; omega)

theorem finCopy_cost : Cost σ X finCopy (bCopy b) :=
  Cost.mono (cost_decCall K.mn (cost_ite (noH K K.mc) cost_skip)) (by simp only [bCopy]; omega)

theorem finR_cost : Cost σ X finR (bR b) :=
  Cost.mono (cost_seq (noH K K.scr) (cost_seq (noH K K.fmr) (cost_seq (noH K K.pc)
    (cost_return _)))) (by simp only [bR]; omega)

/-- The failed child's branch: the rollback under `PRb`. -/
theorem finErr_costP (hH : HooksLawful C H) {e : BitVec 64} :
    Inv.CostP σ X (PRb C H tEV e) finErr (bErr b) := by
  have hrb : Inv.CostP σ X (PRb C H tEV e) (callD (nm "rollback_child_access") [lv (nm "child")])
      (1 + b.rb + 0) := by
    refine Inv.costP_callD K.rb fun s _ hs vs hvs callee => ?_
    obtain ⟨hc, Γ, hG, o, ho, hob, hot⟩ := hs
    obtain ⟨v, vs', rfl, hv, hvs'⟩ := evs_cons_inv hvs
    rw [evs_nil] at hvs'
    cases hvs'
    rw [ev_lv, hc] at hv
    cases hv
    have hG0 := hG
    obtain ⟨p, hp, -⟩ := hG0
    refine ⟨Γ, p, (G_locFree hH s _ _).mpr hG, (ptrsOf_congr rfl).trans hp,
      ⟨rfl, fun i pt v' hpt hv' => ?_⟩, trivial⟩
    rcases i with _ | i
    · simp only [sgRb, List.getElem?_cons_zero, Option.some.injEq] at hpt hv'
      subst hpt hv'
      exact ⟨e, rfl, o, ho, hob, hot⟩
    · simp [sgRb] at hpt
  unfold finErr
  exact Inv.CostP.mono (Inv.costP_seq (R := fun _ => True) hrb (fun _ _ _ _ _ => trivial)
    (Inv.costP_of_cost (finErrR_cost K))) (by simp only [bErr]; omega)

/-- **The parent's part** under `PRb`. -/
theorem finB_costP (hH : HooksLawful C H) {e : BitVec 64} :
    Inv.CostP σ X (PRb C H tEV e) finB (bB b) := by
  have hE := finErr_costP K hH (e := e)
  have h2 : Inv.CostP σ X (PRb C H tEV e)
      (.ite (.cmp .notEqual (lLoad "child" 160) (cw 0)) finErr finOk2) (bErr b + bOk2 b) :=
    Inv.CostP.mono (Inv.costP_ite (Inv.CostP.pre hE fun t _ h => h.1)
      (Inv.costP_of_cost (finOk2_cost K))) (by omega)
  have h1 : Inv.CostP σ X (PRb C H tEV e)
      (.seq (.ite (.cmp .notEqual (lLoad "child" 160) (cw 0)) finErr finOk1) finCopy)
      (bErr b + bOk1 b + bCopy b) :=
    Inv.CostP.mono (Inv.costP_seq (R := fun _ => True) (Inv.costP_ite (Inv.CostP.pre hE fun t _ h => h.1)
      (Inv.costP_of_cost (finOk1_cost K))) (fun _ _ _ _ _ => trivial)
      (Inv.costP_of_cost (finCopy_cost K))) (by omega)
  unfold finB
  refine Inv.CostP.mono (Inv.costP_ite (Inv.costP_dec fun s _ hs v _ _ =>
    Inv.CostP.pre h2 fun t _ ht => ?_) (Inv.CostP.pre h1 fun t _ h => h.1)) (by simp only [bB]; omega)
  subst ht
  exact prb_setVar hH hs.1 (by decide) v

end costs

section walk
variable {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
  {R : Gam → Mem → Frame → Frame → Prop} {Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop} {W : FinGw}
  (Hy : FinHyps σ X C H tEV tCK P R Ic W)
  {b : FinBs} (K : FinCosts σ X C H tEV b)

include Hy K

/-- **The tail of `finish_child`**: its cost from `PA`. -/
theorem finTail_costP {s0 : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {L0 : Locs}
    (hLc : L0.lookup (nm "child") = some (.val (.word e)))
    (hLp : L0.lookup (nm "parent") = some (.val (.word (fld s0.memory c 0))))
    (hLr : L0.lookup (nm "rec") = some (.val (.word c)))
    (hLmsg : L0.lookup (nm "msg") = some (.val (.word (fld s0.memory c 40)))) :
    Inv.CostP σ X (PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0) finTail (finBnd b) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  have hD := Hy.drv
  have hA : Hoare σ X (PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0) finA
      (fun r t => r = none → PA C H tEV tCK P R s0 e c ((e', c') :: rest) L0 t) :=
    hoare_of_hoareG (hoareG_conseq (finA_hoare Hy hLmsg) (fun _ _ h => h)
      (fun r t _ _ h hr => h.elim (fun h => h.2) (fun h => absurd hr h.1)))
  unfold finTail
  refine Inv.CostP.mono (Inv.costP_seq (Inv.costP_of_cost (finA_cost K)) hA ?_)
    (show bA b + (bB b + bR b) ≤ finBnd b by simp only [finBnd]; omega)
  intro u hu hpa
  obtain ⟨hfl, hJ, Γa, hG, hch, -, hck, hx⟩ := hpa
  have hck0 := hck 0 (by omega)
  simp only [show (8 * 0 : Nat) = 0 from rfl] at hck0
  have hic : fld u.memory c 0 = e' ∧ fld u.memory c 8 = c' := by
    obtain ⟨e1, c1, rest1, hfs1, -, -, hic⟩ := hch.chain
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs1
    cases hic with
    | step _ hp _ =>
        simp only [List.head?_cons, Option.some.injEq, Prod.mk.injEq] at hp
        exact ⟨hp.1.symm, hp.2.symm⟩
  have hpv : ev u (lv (nm "parent")) = some (.val (.word e')) := by
    rw [ev_lv, hfl _ (by simp [finNames]), hLp, ← hck0, hic.1]
  let u1 := setGlobalHOLFinite nmEv (.val (.word e')) u
  have hrv : ∀ v, ev u1 (lLoad "rec" 8) = some v → v = .val (.word c') := by
    intro v hv
    have hl : u1.locals.lookup (nm "rec") = some (.val (.word c)) := by
      show u.locals.lookup _ = _; rw [hfl _ (by simp [finNames]), hLr]
    rw [ev_lLoad_eq hl hv]
    show ValueHOL.val (.word (fld u.memory c 8)) = _
    rw [hic.2]
  let u2 := setGlobalHOLFinite nmCC (.val (.word c')) u1
  have hge : u2.globals.lookup nmEv = some (.val (.word e')) := by
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmEv = _
    rw [lookup_update_ne _ _ (by decide), lookup_update_self]
  have hgc : u2.globals.lookup nmCC = some (.val (.word c')) := by
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmCC = _
    rw [lookup_update_self]
  have hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → u2.globals.lookup g = u.globals.lookup g := by
    intro g h1 h2
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  obtain ⟨hB, -⟩ := finB_switch hD hG hch (t := u2) rfl rfl rfl hge hgc hgo hJ hx
  have hprb : PRb C H tEV e u2 := by
    refine ⟨?_, Γa, hB.G, (hB.objs (e, c) (by simp)).1⟩
    show u.locals.lookup _ = _
    rw [hfl _ (by simp [finNames]), hLc]
  -- the exact states of the switch
  suffices H0 : Inv.CostP σ X (fun w => w = u) (.seq (.assign .global nmEv (lv (nm "parent")))
      (.seq (.assign .global nmCC (lLoad "rec" 8)) (.seq finB finR))) (bB b + bR b) from H0 u hu rfl
  have h1 : Hoare σ X (fun w => w = u) (.assign .global nmEv (lv (nm "parent")))
      (fun r w => r = none → w = u1) := by
    refine hoare_of_hoareG (hoareG_assignK fun w _ hw v hv _ => ?_)
    subst hw
    rw [hpv] at hv; cases hv
    exact fun _ => rfl
  have h2 : Hoare σ X (fun w => w = u1) (.assign .global nmCC (lLoad "rec" 8))
      (fun r w => r = none → w = u2) := by
    refine hoare_of_hoareG (hoareG_assignK fun w _ hw v hv _ => ?_)
    subst hw
    rw [hrv v hv]
    exact fun _ => rfl
  refine Inv.CostP.mono (Inv.costP_seq (Inv.costP_of_cost (cost_assign _ _ _)) h1
    (Inv.costP_seq (Inv.costP_of_cost (cost_assign _ _ _)) h2
      (Inv.costP_seq (R := fun _ => True) (Inv.CostP.pre (finB_costP K hH (e := e)) fun w _ hw => hw ▸ hprb)
        (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost (finR_cost K))))) (by omega)

/-- **`finish_child`'s bundle entry `finCost`.** -/
theorem fin_condCost (M : Nat) :
    CondCost σ X C H (nm "finish_child") (sg0 []) (PreFinX C tEV tCK P R M) (finBnd b) := by
  have hF := fin_hF Hy
  have hH := hF.hooks
  intro vs body callee rs hl
  rw [Hy.code] at hl
  obtain ⟨rfl, -, rfl⟩ := lookupCode_zero code_fin hl
  rintro s0 hs0 ⟨_, Γ, p, hG, -, -, ⟨⟨fs, hch, hx⟩, -, hk⟩, hJ0⟩ hg
  obtain ⟨e, c, rest0, rfl, hev, hcc, hic⟩ := hch.chain
  obtain ⟨c1, hc1, hk1⟩ := hk
  rw [hcc, Option.some.injEq] at hc1
  subst hc1
  obtain ⟨e', c', rest, rfl⟩ : ∃ e' c' rest, rest0 = (e', c') :: rest := by
    cases hic with
    | base h0 => exact absurd h0.1 hk1
    | step _ hp _ =>
        cases rest0 with
        | nil => simp at hp
        | cons f rest => exact ⟨f.1, f.2, rest, rfl⟩
  have hgv : ∀ (lw : List (MlS × BitVec 64)) (g : MlS) (w : BitVec 64), gword s0 g = some w →
      ∀ u, DL s0 lw u → ∀ v, ev u (gv g) = some v → v = .val (.word w) := by
    intro lw g w hw u ⟨⟨l, hu⟩, _⟩ v hv
    subst hu
    have : s0.globals.lookup g = some v := hv
    rw [gword_some hw] at this
    exact (Option.some.inj this).symm
  have H0 : Inv.CostP σ X (DL s0 []) finBody (finBnd b) := by
    refine dl_costDec (by simp only [List.map_nil]; decide) (hgv _ _ _ hcc) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (hgv _ _ _ hev) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 0) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 16) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 40) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 64) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 48) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 56) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 72) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 80) ?_
    refine dl_costDec (by simp only [List.map_cons, List.map_nil]; decide) (dl_lload rfl 88) ?_
    rintro u hu ⟨⟨l, rfl⟩, hlw⟩ hg'
    have hlk : ∀ x w, (x, w) ∈ [(nm "contract_address", fld s0.memory c 88),
        (nm "out_size", fld s0.memory c 80), (nm "out_start", fld s0.memory c 72),
        (nm "child_mem_mark", fld s0.memory c 56), (nm "child_mark", fld s0.memory c 48),
        (nm "new_account_charged", fld s0.memory c 64), (nm "msg", fld s0.memory c 40),
        (nm "kind", fld s0.memory c 16), (nm "parent", fld s0.memory c 0), (nm "child", e),
        (nm "rec", c)] → l.lookup x = some (.val (.word w)) := fun x w h => hlw (x, w) h
    have hpa : PA C H tEV tCK P R s0 e c ((e', c') :: rest) l { s0 with locals := l } :=
      ⟨fun x _ => rfl, jrNZ_locals hJ0 l, Γ, (G_locFree hH s0 l s0.clock).mpr hG,
        chainL_congr (s := s0) (s' := { s0 with locals := l }) rfl rfl hch,
        by have : Phi { s0 with locals := l } = Phi s0 := phi_locFree s0 _ _
           rw [this], fun j _ => rfl,
        chainE_congr (s := s0) (s' := { s0 with locals := l }) rfl rfl hx⟩
    exact finTail_costP Hy K (hlk _ _ (by simp)) (hlk _ _ (by simp)) (hlk _ _ (by simp))
      (hlk _ _ (by simp)) _ hu hpa hg'
  exact H0 s0 hs0 ⟨⟨s0.locals, rfl⟩, fun _ h => by simp at h⟩ hg

end walk

end InitECandidate.Solver.MemSafe.Frames
