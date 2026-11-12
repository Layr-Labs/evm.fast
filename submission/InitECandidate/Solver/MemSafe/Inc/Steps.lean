import InitECandidate.Solver.MemSafe.Inc.LogAppend

/-!
# `incorporate_child_on_success`: definitions and steps

Local copies of the frame-side predicates of `Frames.FinHyps.ic` (definitionally the same:
`EvRunI` = `Frames.EvRun tEV`, `PWtopI` = `Frames.PWtop tEV tCK`, `FQI` = `Frames.FQ`,
`sgAI` = `Frames.sgA`), so that this directory does not import the frame driver's files.

* `IcsX`: the facts the body needs beyond `FinHyps.ic`'s Pre (the parent's log list at `e[88]`,
  the two deletion tables at `e[136]` / `c[136]`, distinct);
* `funSpec_ice`: `incorporate_child_on_error(c)` adds the child's slots 8, 9, 23 into the running
  frame's (`iceMem`);
* `trk_evstP`, `trk_evstS`: a store into a `prot` driver slot (8, 24) / a `scalar` slot of the
  running EV record keeps the tracking.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Inc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Frame-side predicates (copies) -/

def nEv : MlS := nm "ev"

def EvRunI (Γ : Gam) (s : State σ) (e : Obj) : Prop := e ∈ Γ ∧ e.ty = tEV ∧ gword s nEv = some e.base

def PWtopI (ks : List Nat) (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (a : BitVec 64) : Prop :=
  (∃ e, EvRunI Γ s e ∧ ∃ k ∈ ks, a = e.cell k) ∨
    ∀ o ∈ Γ, o.ty = tEV ∨ o.ty = tCK → ¬ Frames.InO o a

/-- A cell outside every message record of `Γ` (`Frames.NoMsgCell`; `Frames.msgTys = [4, 5, 76, 77, 78, 80, 46, 49, 50, 51]`
= `[tMSGh, tMSGs]`). -/
def NoMsgI (Γ : Gam) (a : BitVec 64) : Prop := ∀ o ∈ Γ, o.ty ∈ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] → ¬ Frames.InO o a

/-- `Frames.PWtopM tEV tCK`: `PWtopI` outside the message records. -/
def PWtopMI (ks : List Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (a : BitVec 64) :
    Prop :=
  PWtopI ks vs s Γ a ∧ NoMsgI Γ a

def FQI (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  (∀ p p', ptrsOf s = some p → ptrsOf t = some p' → p'.fp = p.fp) ∧
    ∀ v, r ≠ .exception (nm "EvmErr") v

def sgAI (n : Nat) (gw : List MlS) : Sig := { params := List.replicate n .any, gw := gw }

/-- `rd m (b + k)` (`Frames.fld`). -/
def fldI (m : Mem) (b : BitVec 64) (k : Nat) : BitVec 64 := rd m (b + BitVec.ofNat 64 k)

/-- **The extra facts** the body needs: the parent's log list at `e[88]` (a list header of element
size 8), the parent's and the child's deletion tables at `e[136]` / `c[136]` (`Γ` headers of one
header type), and the two tables differ. -/
def IcsX0 (Γ : Gam) (m : Mem) (e c : BitVec 64) : Prop :=
  (∃ L ∈ Γ, L.base = fldI m e 88 ∧ L.ty ∈ lstTys ∧ lstE L.ty = 8) ∧
  (∃ th ∈ hdrTys, (∃ D ∈ Γ, D.base = fldI m e 136 ∧ D.ty = th) ∧
    (∃ S ∈ Γ, S.base = fldI m c 136 ∧ S.ty = th)) ∧
  fldI m e 136 ≠ fldI m c 136

/-- **The child's log list** (package L): a list header of element size 8 in `Γ`, with its array
`x ∈ Γ` (room for the `N` elements), and every element a log record in range below `hp`
(`Frames.LogsG`). -/
def IcsC (Γ : Gam) (m : Mem) (hp : Nat) (c : BitVec 64) : Prop :=
  (∃ Lc ∈ Γ, Lc.base = fldI m c 88 ∧ Lc.ty ∈ lstTys ∧ lstE Lc.ty = 8) ∧
  (∃ x ∈ Γ, IsLstA x.ty ∧ x.base = rd m (fldI m c 88) ∧
    8 * (rd m (fldI m c 88 + BitVec.ofNat 64 8)).toNat ≤ x.size) ∧
  ∀ i, i < (rd m (fldI m c 88 + BitVec.ofNat 64 8)).toNat →
    LogRecF Γ hp m (rd m (rd m (fldI m c 88) + BitVec.ofNat 64 (8 * i)))

/-- **All the extra facts**, at the heap pointer `hp`. -/
def IcsX (Γ : Gam) (m : Mem) (hp : Nat) (e c : BitVec 64) : Prop :=
  IcsX0 Γ m e c ∧ IcsC Γ m hp c

def icsKs : List Nat := [8, 9, 12, 23, 24]

/-! ## Expression helpers -/

theorem ev_gev {u : State σ} {E : BitVec 64} (h : gword u nEv = some E) :
    ev u gev = some (.val (.word E)) := AllocImpl.lookup_of_gword h

theorem ev_evLd {u : State σ} {E : BitVec 64} (h : gword u nEv = some E) {k : Nat} {v : ValueHOL 64}
    (hv : ev u (evLd k) = some v) : v = .val (.word (rd u.memory (E + BitVec.ofNat 64 k))) :=
  lp_ev_ld (ev_add2 (ev_gev h) (ev_cw _ k)) hv

theorem ev_chLd {u : State σ} {C : BitVec 64} (h : u.locals.lookup (nm "child") = some (.val (.word C)))
    {k : Nat} {v : ValueHOL 64} (hv : ev u (chLd k) = some v) :
    v = .val (.word (rd u.memory (C + BitVec.ofNat 64 k))) :=
  lp_ev_ld (ev_add2 (lp_ev_lv h) (ev_cw _ k)) hv

theorem ev_add_ld2 {u : State σ} {a b : ExpHOL 64} {x y : BitVec 64} {v : ValueHOL 64}
    (ha : ∀ w, ev u a = some w → w = .val (.word x)) (hb : ∀ w, ev u b = some w → w = .val (.word y))
    (h : ev u (.op .add [a, b]) = some v) : v = .val (.word (x + y)) := by
  obtain ⟨x', y', hx, hy, rfl⟩ := Mpt.Leaves.ev_add2_inv' h
  have := ha _ hx; cases this
  have := hb _ hy; cases this
  rfl

theorem ev_sub_ld2 {u : State σ} {a b : ExpHOL 64} {x y : BitVec 64} {v : ValueHOL 64}
    (ha : ∀ w, ev u a = some w → w = .val (.word x)) (hb : ∀ w, ev u b = some w → w = .val (.word y))
    (h : ev u (.op .sub [a, b]) = some v) : v = .val (.word (x - y)) := by
  obtain ⟨x', y', hx, hy, rfl⟩ := Spec.Inv.ev_sub2_inv h
  have := ha _ hx; cases this
  have := hb _ hy; cases this
  rfl

/-! ## `incorporate_child_on_error` -/

/-- The memory after `incorporate_child_on_error(C)` with `ev = E`. -/
def iceMem (m : Mem) (E C : BitVec 64) : Mem :=
  let m1 := Spec.Inv.upd m (E + BitVec.ofNat 64 64) (rd m (E + BitVec.ofNat 64 64) + rd m (C + BitVec.ofNat 64 64))
  let m2 := Spec.Inv.upd m1 (E + BitVec.ofNat 64 72)
    (rd m1 (E + BitVec.ofNat 64 72) + rd m1 (C + BitVec.ofNat 64 72))
  Spec.Inv.upd m2 (E + BitVec.ofNat 64 184)
    (rd m2 (E + BitVec.ofNat 64 184) + rd m2 (C + BitVec.ofNat 64 184))

theorem funSpec_ice (hX : X.code.lookup = guestCode) :
    FunSpec σ X (nm "incorporate_child_on_error") (fun vs s r t => ∀ C E : BitVec 64,
      vs = [.val (.word C)] → gword s nEv = some E → ∀ v, r = .returned v →
        t.memory = iceMem s.memory E C ∧ t.globals = s.globals ∧ t.memaddrs = s.memaddrs ∧
          t.be = s.be) := by
  intro vs body callee rs hl s0 hs hloc r hr C E hvs hE v hv
  rw [hX] at hl
  obtain ⟨rfl, -, A, rfl, -, hA⟩ := lookupCode_one code_ice hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hc : s0.locals.lookup (nm "child") = some (.val (.word C)) := by rw [hloc]; exact hA
  have hd := memaddrs_preserved s0 iceBody
  have hbe := Spec.Inv.be_preserved s0 iceBody
  let P : Mem → State σ → Prop := fun m u => u.memory = m ∧ u.globals = s0.globals ∧
    u.locals = s0.locals
  have step : ∀ {m : Mem} {k : Nat} {rest : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop},
      Hoare σ X (P (Spec.Inv.upd m (E + BitVec.ofNat 64 k)
        (rd m (E + BitVec.ofNat 64 k) + rd m (C + BitVec.ofNat 64 k)))) rest Q →
      Hoare σ X (P m) (.seq (evSt k (.op .add [evLd k, chLd k])) rest) Q := by
    intro m k rest Q hrest
    refine hoare_seq (R := fun r u => r = none ∧ P (Spec.Inv.upd m (E + BitVec.ofNat 64 k)
        (rd m (E + BitVec.ofNat 64 k) + rd m (C + BitVec.ofNat 64 k))) u) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre hrest fun _ _ h => h.2)
    have hg : ∀ u : State σ, P m u → gword u nEv = some E := fun u ⟨_, hg, _⟩ => by
      unfold gword; rw [hg]; exact hE
    refine Spec.Inv.hoare_store_w (fun _ => E + BitVec.ofNat 64 k)
      (fun _ => rd m (E + BitVec.ofNat 64 k) + rd m (C + BitVec.ofNat 64 k)) ?_ ?_ ?_
    · intro u _ hu w hw
      rw [ev_add2 (ev_gev (hg u hu)) (ev_cw _ k)] at hw
      cases hw; rfl
    · intro u _ hu w hw
      have hg' := hg u hu
      obtain ⟨hm, -, hl⟩ := hu
      have := ev_add_ld2 (fun w h => ev_evLd hg' h)
        (fun w h => ev_chLd (by rw [hl]; exact hc) h) hw
      rw [hm] at this
      exact this
    · intro u _ ⟨hm, hg', hl⟩
      exact ⟨rfl, by show Spec.Inv.upd u.memory _ _ = _; rw [hm], hg', hl⟩
  have H : Hoare σ X (P s0.memory) iceBody (fun r t => ∀ v, r = some (.returned v) →
      t.memory = iceMem s0.memory E C ∧ t.globals = s0.globals) := by
    unfold iceBody
    refine step (step (step (hoare_return fun u _ ⟨hm, hg, _⟩ w _ v' _ => ⟨?_, hg⟩)))
    exact hm
  have H' := H s0 hs ⟨rfl, rfl, rfl⟩ (by rw [hr, hv]; trivial)
  rw [hr, hv] at H'
  obtain ⟨h1, h2⟩ := H' v rfl
  exact ⟨h1, h2, hd, hbe⟩

/-! ## Stores into the running EV record -/

section st
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

theorem ev_kinds : (guestC.ty tEV).slot 8 = .prot ∧ (guestC.ty tEV).slot 24 = .prot ∧
    (guestC.ty tEV).slot 9 = .scalar ∧ (guestC.ty tEV).slot 12 = .scalar ∧
    (guestC.ty tEV).slot 23 = .scalar ∧ guestC.tags.lookup tEV = none := by decide

/-- A store into driver slot 8 or 24 (`prot`, read by no hook) of an EV record. -/
theorem trk_evstP (hH : HooksLawful guestC H) (hEVh : ∀ (Γ : Gam) (s : State σ) (o o' : Obj),
      o' ∈ Γ → o'.ty = tEV → ∀ j ∈ Frames.evDriverSlots16, ¬ H.fp Γ s o (o'.cell j))
    {Γ : Gam} {t : State σ} (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {e0 : Obj} (he0 : e0 ∈ Γ0)
    (het : e0.ty = tEV) {k : Nat} (hk : k = 8 ∨ k = 24) (hPW : PW (e0.cell k)) (x : BitVec 64) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory (e0.cell k) x } := by
  obtain ⟨e1, he1, hb1, ht1, hs1⟩ := Struct.trk_ext h e0 he0
  have hc : e1.cell k = e0.cell k := by unfold Obj.cell; rw [hb1]
  obtain ⟨q, -, -, hLay, -⟩ := Struct.trk_G h
  have hsz : 280 ≤ e1.size := by
    have := (hLay.1 e1 he1).2.2.2.1; rw [ht1, het] at this; exact this
  have hks : e1.HasSlot k := by unfold Obj.HasSlot; rcases hk with rfl | rfl <;> omega
  rw [← hc]
  refine trk_pstore hH h he1 hks (by rw [ht1, het]; rcases hk with rfl | rfl
                                     · exact ev_kinds.1
                                     · exact ev_kinds.2.1)
    (by rw [ht1, het]; exact ev_kinds.2.2.2.2.2) (by rw [hc]; exact hPW) x fun o ho hf => ?_
  exact absurd hf (hEVh Γ t o e1 he1 (ht1.trans het) k
    (by rcases hk with rfl | rfl <;> simp [Frames.evDriverSlots16]))

/-- A store into a `scalar` slot of an EV record of the entry typing. -/
theorem trk_evstS (hH : HooksLawful guestC H) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {e0 : Obj} (he0 : e0 ∈ Γ0) (het : e0.ty = tEV)
    (hsz0 : 280 ≤ e0.size) {k : Nat} (hk : k = 9 ∨ k = 12 ∨ k = 23) (x : BitVec 64) :
    Struct.Trk guestC H Γ0 s0 p0 PW Γ { t with memory := Spec.Inv.upd t.memory (e0.cell k) x } := by
  obtain ⟨e1, he1, hb1, ht1, hs1⟩ := Struct.trk_ext h e0 he0
  have hc : e1.cell k = e0.cell k := by unfold Obj.cell; rw [hb1]
  have hsc : (guestC.ty tEV).slot k = .scalar := by
    rcases hk with rfl | rfl | rfl
    · exact ev_kinds.2.2.1
    · exact ev_kinds.2.2.2.1
    · exact ev_kinds.2.2.2.2.1
  obtain ⟨p, hp, hm, hx, hnf, hG, hmod, hpg, hd, hbe⟩ := h
  obtain ⟨q, -, -, hLay, -⟩ := id hG
  have hsz : 280 ≤ e1.size := by
    have := (hLay.1 e1 he1).2.2.2.1; rw [ht1, het] at this; exact this
  have hks : e1.HasSlot k := by unfold Obj.HasSlot; rcases hk with rfl | rfl | rfl <;> omega
  have hsz0' : 8 * k + 8 ≤ e0.size := by rcases hk with rfl | rfl | rfl <;> omega
  refine ⟨p, hp, hm, hx, hnf, Helpers.G_buf hH Helpers.tagSlots_guestC hG rfl rfl rfl
    (R := fun a => a = e0.cell k) (fun b hb => Spec.Inv.upd_ne hb)
    (fun a ha => Or.inl ⟨e1, he1, k, hks, by rw [ht1, het]; exact hsc, by rw [ha, hc]⟩), ?_, hpg, hd, hbe⟩
  intro b hbn
  have hba : b ≠ e0.cell k := fun e' => hbn (Or.inl ⟨e0, he0, k, hsz0', by rw [het, hsc]; decide,
    e'⟩)
  show Spec.Inv.upd t.memory (e0.cell k) x b = s0.memory b
  rw [Spec.Inv.upd_ne hba]
  exact hmod b hbn

end st

/-! ## Calls: footprint mapping and kept cells -/

section calls
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- Two cells of laid-out objects are equal only for the same object and slot. -/
theorem cne {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ) {o o' : Obj}
    (ho : o ∈ Γ) (ho' : o' ∈ Γ) {i j : Nat} (hi : o.HasSlot i) (hj : o'.HasSlot j)
    (h : ¬ (o = o' ∧ i = j)) : o.cell i ≠ o'.cell j := fun he => h (cell_inj hord hL ho ho' hi hj he)

theorem adr_ne (E : BitVec 64) {i j : Nat} (hi : i < 2 ^ 64) (hj : j < 2 ^ 64) (h : i ≠ j) :
    E + BitVec.ofNat 64 i ≠ E + BitVec.ofNat 64 j := by
  intro he
  have := congrArg BitVec.toNat he
  rw [BitVec.toNat_add, BitVec.toNat_add, toNat_ofNat_small hi, toNat_ofNat_small hj] at this
  have := E.isLt
  omega

/-- A callee cell of a non-frame, non-message object maps into `PWtop`'s non-frame part outside
the message records, or was unallocated. -/
theorem pw_back (hord0 : p0.Ordered) (hL0 : Layout guestC p0 Γ0) {Γ : Gam} {t : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ t) {a : BitVec 64} (hpc : ProtCell guestC Γ a)
    (hy : ∃ y ∈ Γ, y.ty ≠ tEV ∧ y.ty ≠ tCK ∧ y.ty ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] ∧ ∃ j, y.HasSlot j ∧ a = y.cell j)
    (ks : List Nat) (vs : List (ValueHOL 64)) :
    (ProtCell guestC Γ0 a ∧ PWtopI ks vs s0 Γ0 a ∧ NoMsgI Γ0 a) ∨ ¬ p0.Allocated a.toNat := by
  obtain ⟨y, hyΓ, hy1, hy2, hy3, j, hj, rfl⟩ := hy
  obtain ⟨o, ho, k, hk, hpr, he⟩ := hpc
  obtain ⟨q, -, hord, hLay, -⟩ := Struct.trk_G h
  obtain ⟨rfl, rfl⟩ := cell_inj hord hLay hyΓ ho hj hk he
  rcases back_cell hord0 hL0 h hyΓ hj with ⟨o0, ho0, hob, hot, hok, hce⟩ | hna
  · obtain ⟨-, h1, h2⟩ := cell_lay hord0 hL0 ho0 hok
    refine Or.inl ⟨⟨o0, ho0, j, hok, by rw [hot]; exact hpr, hce⟩, Or.inr fun o' ho' hty hin => ?_,
      fun o' ho' hty hin => ?_⟩
    · rw [hce] at hin
      have := gam_eq (gamOK_of_layout hL0) ho' ho0 hin.1 hin.2 h1 h2
      subst this
      rw [hot] at hty
      rcases hty with h' | h' <;> simp_all
    · rw [hce] at hin
      have := gam_eq (gamOK_of_layout hL0) ho' ho0 hin.1 hin.2 h1 h2
      subst this
      rw [hot] at hty
      exact hy3 hty
  · exact Or.inr hna

/-- A callee whose footprint is non-frame cells keeps the `prot` cells of EV records. -/
theorem keep_ev {sg : Sig} {PW' : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW' a) Γ s vs r t Γ' p p')
    (hG : G guestC H Γ s) {o : Obj} (ho : o ∈ Γ) (hot : o.ty = tEV) {k : Nat} (hk : o.HasSlot k)
    (hpr : (guestC.ty tEV).slot k = .prot) (hna : ¬ ArgCells sg.params vs (o.cell k))
    (hPW : ∀ a, PW' a → ∃ y ∈ Γ, y.ty ≠ tEV ∧ ∃ j, y.HasSlot j ∧ a = y.cell j) :
    t.memory (o.cell k) = s.memory (o.cell k) := by
  obtain ⟨q, hq, hord, hLay, -⟩ := hG
  obtain ⟨hps, -, -, -, -, -, hmod, -⟩ := hc
  rw [hps] at hq
  cases hq
  refine hmod _ fun hh => ?_
  rcases hh with ⟨o', ho', k', hk', hnp, he⟩ | harg | hal | ⟨-, hf⟩
  · obtain ⟨rfl, rfl⟩ := cell_inj hord hLay ho ho' hk hk' he
    rw [hot] at hnp
    exact hnp hpr
  · exact hna harg
  · obtain ⟨-, h1, h2⟩ := cell_lay hord hLay ho hk
    exact hal (Helpers.allocated_of_inObj hLay ⟨o, ho, h1, h2⟩)
  · obtain ⟨y, hy, hyt, j, hj, he⟩ := hPW _ hf
    obtain ⟨rfl, rfl⟩ := cell_inj hord hLay ho hy hk hj he
    exact hyt hot

end calls

/-! ## The two callees' footprints -/

theorem lst_noMsg : ∀ t ∈ lstTys, t ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] := by decide

theorem lstA_noMsg {t : Nat} (h : IsLstA t) : t ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] := by
  rcases h with rfl | rfl <;> decide

theorem laPW_obj {p : Ptrs} {Γ : Gam} (hLay : Layout guestC p Γ) {a : BitVec 64} (h : LaPW Γ a) :
    ∃ y ∈ Γ, y.ty ≠ tEV ∧ y.ty ≠ tCK ∧ y.ty ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] ∧ ∃ j, y.HasSlot j ∧ a = y.cell j := by
  rcases h with ⟨L, hL, hLt, hc⟩ | ⟨y, hy, hyt, k, hk, rfl⟩
  · have hs := lst_size (gamOK_of_layout hLay) hL hLt
    have key : ∀ k, k < 3 → a = L.cell k →
        ∃ y ∈ Γ, y.ty ≠ tEV ∧ y.ty ≠ tCK ∧ y.ty ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] ∧ ∃ j, y.HasSlot j ∧ a = y.cell j :=
      fun k hk he => ⟨L, hL, (lst_ne _ hLt).1, (lst_ne _ hLt).2.1, lst_noMsg _ hLt, k,
        by unfold Obj.HasSlot; omega, he⟩
    rcases hc with h | h | h
    · exact key 0 (by omega) h
    · exact key 1 (by omega) h
    · exact key 2 (by omega) h
  · exact ⟨y, hy, (lstA_ne hyt).1, (lstA_ne hyt).2.1, lstA_noMsg hyt, k, hk, rfl⟩

theorem capHT_obj {th : Nat} (hth : th ∈ hdrTys) {s : State σ} {Γ : Gam} {a : BitVec 64}
    (h : CapPW (capsHT th) s Γ a) :
    ∃ y ∈ Γ, y.ty ≠ tEV ∧ y.ty ≠ tCK ∧ y.ty ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] ∧ ∃ j, y.HasSlot j ∧ a = y.cell j := by
  obtain ⟨c, hc, ⟨e, ⟨-, hct, -⟩, k, hk, -⟩ | ⟨-, e, he, hall, k, hks, rfl⟩⟩ := h
  · simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> simp at hk
  · have hth' : 2 ≤ th := (by decide : ∀ t ∈ hdrTys, 2 ≤ t) th hth
    have hthm : th ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] := (by decide : ∀ t ∈ hdrTys, t ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51]) th hth
    have hob : ownBase = 128 := rfl
    have h2 : 2 ≤ e.ty ∧ e.ty ∉ [4, 5, 76, 77, 78, 80, 46, 49, 50, 51] := by
      simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> rcases hall with h | h <;>
        first
        | (simp only at h; rw [h]; exact ⟨hth', hthm⟩)
        | (simp only at h; rw [h]; decide)
        | (refine ⟨by omega, ?_⟩; simp only [List.mem_cons, List.not_mem_nil, or_false, not_or];
            omega)
    have h0 : tEV = 0 := rfl
    have h1 : tCK = 1 := rfl
    exact ⟨e, he, by omega, by omega, h2.2, k, hks, rfl⟩


/-- A cell the table capabilities `capsHT th` may write lies in an object that is not a log object
(`tLSTh`, `tLSTs`, `tLSTAh`, `tLSTAs`). -/
theorem capHT_notLst {th : Nat} (hth : th ∈ hdrTys) {s : State σ} {Γ : Gam} {a : BitVec 64}
    (h : CapPW (capsHT th) s Γ a) :
    ∃ y ∈ Γ, y.ty ∉ [15, 16, 17, 18] ∧ ∃ j, y.HasSlot j ∧ a = y.cell j := by
  obtain ⟨c, hc, ⟨e, ⟨-, hct, -⟩, k, hk, -⟩ | ⟨-, e, he, hall, k, hks, rfl⟩⟩ := h
  · simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
    rcases hc with rfl | rfl <;> simp at hk
  · have hthm : th ∉ [15, 16, 17, 18] := (by decide : ∀ t ∈ hdrTys, t ∉ [15, 16, 17, 18]) th hth
    have hob : ownBase = 128 := rfl
    have h2 : e.ty ∉ [15, 16, 17, 18] := by
      simp only [capsHT, List.mem_cons, List.not_mem_nil, or_false] at hc
      rcases hc with rfl | rfl <;> rcases hall with h | h <;>
        first
        | (simp only at h; rw [h]; exact hthm)
        | (simp only at h; rw [h]; decide)
        | (simp only [List.mem_cons, List.not_mem_nil, or_false, not_or]; omega)
    exact ⟨e, he, h2, k, hks, rfl⟩

end InitECandidate.Solver.MemSafe.Inc
