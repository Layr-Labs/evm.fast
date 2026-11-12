import InitECandidate.Solver.MemSafe.Bal.Touched

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Bal
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.HtabEntries InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

/-- The relation of a `SumSpecA`, named. -/
def SumRel (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop :=
  fun vs s r t => Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (fun a => ProtCell C Γ a ∧ PW vs s Γ a) Γ s vs r t Γ' p p' ∧
        Q vs s Γ r t Γ'

theorem sumRel_fun {X : Ctx 64} {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) : FunSpec σ X f (SumRel C H sg Pre PW Q) := h

theorem argsOK_any3 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b c : ValueHOL 64} :
    ArgsOK C Γ p [.any, .any, .any] [a, b, c] := by
  refine ⟨rfl, fun i pt v hp hv => ?_⟩
  rcases i with _ | _ | _ | i
  · simp at hp; subst hp; trivial
  · simp at hp; subst hp; trivial
  · simp at hp; subst hp; trivial
  · simp at hp

theorem argCells_any3 {vs : List (ValueHOL 64)} {x : BitVec 64} : ¬ ArgCells [.any, .any, .any] vs x := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩
  · rcases i with _ | _ | _ | i <;> simp at hn
  · rcases i with _ | _ | _ | i <;> simp at hj

/-- Entry data of the BAL mutators: the account key and the block index, tracked. -/
def BS (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (ADDR : BitVec 64) (Xs : List (MlS × ValueHOL 64))
    (KP : Gam → Prop) (u : State σ) : Prop :=
  u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
  (∀ p ∈ Xs, u.locals.lookup p.1 = some p.2) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
    u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    SrcKey Γ ADDR 20 tHTd20 ∧ KP Γ

/-- After `ad = bal_ensure_account(addr)`. -/
def AdS (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (ADDR AD : BitVec 64) (Xs : List (MlS × ValueHOL 64))
    (KP : Gam → Prop) (u : State σ) : Prop :=
  u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
  (∀ p ∈ Xs, u.locals.lookup p.1 = some p.2) ∧
  u.locals.lookup (nm "ad") = some (.val (.word AD)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
    u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    SrcKey Γ ADDR 20 tHTd20 ∧ KP Γ ∧ ∃ o ∈ Γ, o.base = AD ∧ o.ty = tAD

section cb
variable {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs}

/-- The callback of `ad = bal_ensure_account(addr)`. -/
theorem bs_ea (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {T0 : Obj} (hT0 : T0 ∈ Γ0) (hT0t : T0.ty = tHTd20)
    (hbal : gword s0 (nm "bal_accounts") = some T0.base) {ADDR : BitVec 64}
    {Xs : List (MlS × ValueHOL 64)} (hXs : ∀ p ∈ Xs, p.1 ≠ nm "ad" ∧ p.1 ≠ nm "e")
    {KP : Gam → Prop} (hKP : ∀ Γ Γ', Ext Γ Γ' → KP Γ → KP Γ') {u : State σ}
    (hu : BS s0 Γ0 p0 ADDR Xs KP u) {callee : HolFiniteMapExact MlS (ValueHOL 64)} {st : State σ}
    {w : BitVec 64}
    (hRel : SumRel guestC (guestHooksR (σ := σ)) eaSig EaPre
      (fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a) EaPost [.val (.word ADDR)]
      (callEntryStateHOLFinite u callee) (.returned (.val (.word w))) st)
    (hgw : st.globals.lookup (nm "bal_accounts") = u.globals.lookup (nm "bal_accounts"))
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    AdS s0 Γ0 p0 ADDR w Xs KP (setVarHOLFinite (nm "ad") (.val (.word w)) { st with locals := u.locals }) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨hla, hXl, Γ, hT, hb, hkey, hkp⟩ := hu
  have hT' := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT'
  obtain ⟨qT, hqT, hordT, hLayT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  obtain ⟨T1, hT1, hT1b, hT1t, -⟩ := hxT T0 hT0
  have hNN : BalNN (callEntryStateHOLFinite u callee) Γ := by
    refine ⟨T1, hT1, by rw [hT1t, hT0t], ?_⟩
    rw [hT1b]
    have : gword (callEntryStateHOLFinite u callee) (nm "bal_accounts") = gword s0 (nm "bal_accounts") :=
      gword_keep (by show u.globals.lookup _ = _; exact hb)
    rw [this]; exact hbal
  obtain ⟨Γ1, p, p', hc, hq, hT2⟩ := call_cs hH hT hord0 hL0 (sg := eaSig) (Pre := EaPre)
    (PW' := fun _ s Γ a => CapPW (capsHT tHTd20) s Γ a) (Q := EaPost) (vs := [.val (.word ADDR)])
    (r := .returned (.val (.word w))) (callee := callee) (st := st) hRel (by simp [Good]) (by simp [Abortive])
    ⟨pT, hpT, argsOK_any1⟩ ⟨ADDR, rfl, hNN, hkey⟩ (fun g _ => by simp [eaSig])
    (fun y hy => absurd hy argCells_any1)
    (fun a hpc hpw => pw_of_caps hord0 hordT hmT hL0 hLayT hnfT (th := tHTd20) (Or.inl rfl) hpc hpw) hd hbe
  obtain ⟨hbl, w', hw', o, ho, hob, hot⟩ := hq _ rfl
  cases hw'
  refine ⟨(lk_set_ne _ _ (by decide)).trans hla,
    fun p hp => (lk_set_ne _ _ (hXs p hp).1.symm).trans (hXl p hp), lk_set_self _ _ _,
    Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_, srcKey_ext hc.2.2.2.1 hkey,
    hKP _ _ hc.2.2.2.1 hkp, o, ho, hob, hot⟩
  show st.globals.lookup (nm "bal_accounts") = _
  rw [hgw]; exact hb


/-- After `e = lst_upsert_idx(ad[k0], E, idx)`: `e` is the first slot of an element of a list array. -/
def AdE (s0 : State σ) (Γ0 : Gam) (p0 : Ptrs) (ADDR AD ELEM : BitVec 64) (E : Nat)
    (Xs : List (MlS × ValueHOL 64)) (KP : Gam → Prop) (u : State σ) : Prop :=
  u.locals.lookup (nm "addr") = some (.val (.word ADDR)) ∧
  (∀ p ∈ Xs, u.locals.lookup p.1 = some p.2) ∧
  u.locals.lookup (nm "ad") = some (.val (.word AD)) ∧
  u.locals.lookup (nm "e") = some (.val (.word ELEM)) ∧
  ∃ Γ, Struct.Trk guestC (guestHooksR (σ := σ)) Γ0 s0 p0 (balPW Γ0 s0 p0) Γ u ∧
    u.globals.lookup (nm "bal_accounts") = s0.globals.lookup (nm "bal_accounts") ∧
    SrcKey Γ ADDR 20 tHTd20 ∧ KP Γ ∧ (∃ o ∈ Γ, o.base = AD ∧ o.ty = tAD) ∧
    ∃ x ∈ Γ, IsLstA x.ty ∧ ∃ k, x.HasSlot k ∧ ELEM = x.cell k ∧ 8 * k + E ≤ x.size

/-- The callback of `e = lst_upsert_idx(ad[8 k0], E, idx)`. -/
theorem ads_up (hG0 : G guestC (guestHooksR (σ := σ)) Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {k0 ty E : Nat} (hk0 : k0 < 5) (hty : adTy.slot k0 = .ptr ty) (hlt : ty ∈ lstTys) (hE : lstE ty = E)
    {ADDR IDX AD : BitVec 64} {Xs : List (MlS × ValueHOL 64)}
    (hidx : (nm "idx", ValueHOL.val (.word IDX)) ∈ Xs)
    (hXs : ∀ p ∈ Xs, p.1 ≠ nm "ad" ∧ p.1 ≠ nm "e")
    {KP : Gam → Prop} (hKP : ∀ Γ Γ', Ext Γ Γ' → KP Γ → KP Γ') {u : State σ}
    (hu : AdS s0 Γ0 p0 ADDR AD Xs KP u)
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {st : State σ} {w : BitVec 64}
    (hRel : SumRel guestC (guestHooksR (σ := σ)) luSig LuPre (fun _ _ Γ a => Inc.LaPW Γ a) LuPost
      [.val (.word (rd u.memory (AD + BitVec.ofNat 64 (8 * k0)))), .val (.word (BitVec.ofNat 64 E)),
        .val (.word IDX)]
      (callEntryStateHOLFinite u callee) (.returned (.val (.word w))) st)
    (hgw : st.globals.lookup (nm "bal_accounts") = u.globals.lookup (nm "bal_accounts"))
    (hd : st.memaddrs = u.memaddrs) (hbe : st.be = u.be) :
    AdE s0 Γ0 p0 ADDR AD w E Xs KP (setVarHOLFinite (nm "e") (.val (.word w)) { st with locals := u.locals }) := by
  have hH := (Rec.foldOK_guestR (σ := σ)).hH
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨hla, hXl, hlad, Γ, hT, hb, hkey, hkp, o, ho, hob, hot⟩ := hu
  have hT' := hT
  obtain ⟨pT, hpT, hmT, hxT, hnfT, hGT, -⟩ := hT'
  have hGT' := hGT
  obtain ⟨qT, hqT, hordT, hLayT, hFlT, -⟩ := hGT
  rw [hpT] at hqT
  cases hqT
  have hsz : 8 * k0 + 8 ≤ o.size := by
    have := (hLayT.1 o ho).2.2.2.1
    rw [hot] at this
    have h40 : (guestC.ty tAD).minSz = 40 := by decide
    omega
  have hfit := hFlT o ho k0 hsz
  rw [hot, show (guestC.ty tAD) = adTy from rfl, hty] at hfit
  obtain ⟨L, hL, hLb, hLt⟩ := hfit
  have hcell : o.cell k0 = AD + BitVec.ofNat 64 (8 * k0) := by unfold Obj.cell; rw [hob]
  rw [hcell] at hLb
  obtain ⟨Γ1, p, p', hc, hq, hT2⟩ := call_cs hH hT hord0 hL0 (sg := luSig) (Pre := LuPre)
    (PW' := fun _ _ Γ a => Inc.LaPW Γ a) (Q := LuPost)
    (vs := [.val (.word (rd u.memory (AD + BitVec.ofNat 64 (8 * k0)))), .val (.word (BitVec.ofNat 64 E)),
      .val (.word IDX)]) (r := .returned (.val (.word w))) (callee := callee) (st := st) hRel
    (by simp [Good]) (by simp [Abortive]) ⟨pT, hpT, argsOK_any3⟩
    ⟨L, hL, by rw [hLt]; exact hlt, IDX, by rw [hLb, hLt, hE]⟩ (fun g _ => by simp [luSig])
    (fun y hy => absurd hy argCells_any3)
    (fun a hpc hpw => pw_of_la hord0 hL0 hT hpc hpw) hd hbe
  obtain ⟨L', hL', hL't, hL'b, w', hw', x, hx, hxt, k, hk, hwx, hxe⟩ := hq _ rfl
  cases hw'
  have hLL : L = L' := by
    simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hL'b
    exact base_eq (gamOK_of_layout hLayT) hL' hL (hLb.trans hL'b)
  subst hLL
  refine ⟨(lk_set_ne _ _ (by decide)).trans hla,
    fun p hp => (lk_set_ne _ _ (hXs p hp).2.symm).trans (hXl p hp),
    (lk_set_ne _ _ (by decide)).trans hlad, lk_set_self _ _ _, Γ1, Struct.trk_congr hH hT2 rfl rfl rfl rfl, ?_,
    srcKey_ext hc.2.2.2.1 hkey, hKP _ _ hc.2.2.2.1 hkp, ?_, x, hx, hxt, k, hk, hwx, ?_⟩
  · show st.globals.lookup (nm "bal_accounts") = _
    rw [hgw]; exact hb
  · obtain ⟨o', ho', hb', ht', -⟩ := hc.2.2.2.1 o ho
    exact ⟨o', ho', hb'.trans hob, ht'.trans hot⟩
  · rw [hLt, hE] at hxe; exact hxe

end cb

end InitECandidate.Solver.MemSafe.Bal
