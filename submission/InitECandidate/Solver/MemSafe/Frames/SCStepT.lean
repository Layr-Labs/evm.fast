import InitECandidate.Solver.MemSafe.Frames.SCRunT
import InitECandidate.Solver.MemSafe.Frames.ChainXG

/-!
# `start_child` after the fix (decision 2): precondition and step lemmas

* **`PreSCT`**: `PreSC` with the weakened `ProtKeep` (the child message's `MSG_GAS` cell is a
  `prot` cell of a non-state object), `JrNZ`, and, for `kind = 2`, the `BufOK` fact of the
  target address block `MSG_CURRENT_TARGET` (the kind-2 callees take it as `buf 20`).
* The tracked states `SKT` (before `frame_open`), `SFT` (after it), `STsT` (the record stores),
  the body post `SPostT`, all over `RunT` and `ProtKeep C (nst St Γ)`.
* `skT_call`: a call to a state-object callee (`StSum`, `buf 20` argument) keeps `SKT`.
* `sc_tailT`: the record stores done, `frame_start` (a footprint-free summary with precondition
  `PreInvX`) and `return 0` give `SPostT`.

frames8 (the chain extension, push side): **`PreSCX … XP`** = `PreSCT` plus an abstract extension
fact `XP Γ s fs cm cmark cmm` (guest: `ChainE GP GR`, the message's address blocks, `XAbove` of
the parent at the child's marks); **`QSCX`** / **`QLeX`**: `QSC` / `QLe` with `ChainX`; the
abstract obligations **`KeepEH`** (runs before `frame_open` keep the extension) and **`PushEH`**
(the pushed chain's extension at the end of the record stores). `SFT` carries `NewX` of the new
record (frame_open's export).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The signature of a kind-2 callee: one `buf 20` argument (the target address). -/
abbrev sgB (gw : List MlS) : Sig := ⟨[.buf 20], [], gw, true⟩

/-- **`start_child`'s precondition after the fix.** `PreSC` with `ProtCell` of the
non-state objects, `JrNZ`, and the target block of a kind-2 child. -/
def PreSCT (C : Cfg) (St : Nat → Bool) (tEV tCK M : Nat)
    (NewPre : List (ValueHOL 64) → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ cm kind cmark cmm nac os osz ca, vs = scArgs cm kind cmark cmm nac os osz ca ∧
    (kind = 1 ∨ kind = 2) ∧
    ∃ fs e0 c0 rest, ChainL C tEV tCK Γ s fs ∧ fs = (e0, c0) :: rest ∧
      (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat ∧
      cmm.toNat = (fld s.memory e0 evMem).toNat + (fld s.memory e0 evMemCap).toNat ∧
      (osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s.memory e0 evMemLen).toNat) ∧
      Phi s + (fld s.memory cm 40).toNat + 2 ≤ M ∧
      NewPre [.val (.word cm)] s Γ ∧ ProtCell C (nst St Γ) (cm + BitVec.ofNat 64 40) ∧
      MarkOK C tEV Γ s cmark.toNat cmm.toNat ∧
      (∀ f ∈ fs, FrameAbove C tEV tCK Γ cmark.toNat cmm.toNat f) ∧
      (rest ≠ [] → cmark.toNat < mkOf s.memory c0 ∧ mmOf s.memory c0 < cmm.toNat) ∧
      JrNZ s ∧
      (kind = 2 → ∀ p, ptrsOf s = some p → BufOK C Γ p (fld s.memory cm 32).toNat 20)

/-- **`PreSCT` with the chain extension's entry facts** (frames8): `XP Γ s fs cm cmark cmm`
for the chain `fs`, the child message `cm` and the child's marks. -/
def PreSCX (C : Cfg) (St : Nat → Bool) (tEV tCK M : Nat)
    (NewPre : List (ValueHOL 64) → State σ → Gam → Prop)
    (XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ cm kind cmark cmm nac os osz ca, vs = scArgs cm kind cmark cmm nac os osz ca ∧
    (kind = 1 ∨ kind = 2) ∧
    ∃ fs e0 c0 rest, ChainL C tEV tCK Γ s fs ∧ fs = (e0, c0) :: rest ∧
      (fld s.memory e0 evSp).toNat < (fld s.memory e0 evStackCap).toNat ∧
      cmm.toNat = (fld s.memory e0 evMem).toNat + (fld s.memory e0 evMemCap).toNat ∧
      (osz = 0 ∨ os.toNat + osz.toNat ≤ (fld s.memory e0 evMemLen).toNat) ∧
      Phi s + (fld s.memory cm 40).toNat + 2 ≤ M ∧
      NewPre [.val (.word cm)] s Γ ∧ ProtCell C (nst St Γ) (cm + BitVec.ofNat 64 40) ∧
      MarkOK C tEV Γ s cmark.toNat cmm.toNat ∧
      (∀ f ∈ fs, FrameAbove C tEV tCK Γ cmark.toNat cmm.toNat f) ∧
      (rest ≠ [] → cmark.toNat < mkOf s.memory c0 ∧ mmOf s.memory c0 < cmm.toNat) ∧
      JrNZ s ∧
      (kind = 2 → ∀ p, ptrsOf s = some p → BufOK C Γ p (fld s.memory cm 32).toNat 20) ∧
      XP Γ s fs cm cmark cmm

theorem preSCX_triv {C : Cfg} {St : Nat → Bool} {tEV tCK M : Nat}
    {NewPre : List (ValueHOL 64) → State σ → Gam → Prop} {vs : List (ValueHOL 64)} {s : State σ}
    {Γ : Gam} (h : PreSCT C St tEV tCK M NewPre vs s Γ) :
    PreSCX C St tEV tCK M NewPre (fun _ _ _ _ _ _ => True) vs s Γ := by
  obtain ⟨cm, kind, cmark, cmm, nac, os, osz, ca, hvs, hk, fs, e0, c0, rest, h1, h2, h3, h4, h5, h6,
    h7, h8, h9, h10, h11, h12, h13⟩ := h
  exact ⟨cm, kind, cmark, cmm, nac, os, osz, ca, hvs, hk, fs, e0, c0, rest, h1, h2, h3, h4, h5, h6,
    h7, h8, h9, h10, h11, h12, h13, trivial⟩

theorem chainOf_of_X {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {Γ : Gam} {s : State σ}
    (h : ChainX C tEV tCK P R Γ s) : ∃ fs, ChainOf s fs := by
  obtain ⟨fs, h, -⟩ := h
  exact ⟨fs, h.chain⟩

/-- `QSC` with the chain extension. -/
def QSCX (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (vs : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ cm, vs.head? = some (.val (.word cm)) →
    (∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧
      Phi t ≤ Phi s + (fld s.memory cm 40).toNat + 2 ∧ RootK s t) ∧
    (∀ v, r = .exception nmEvmErr v → ChainX C tEV tCK P R Γ' t ∧ Phi t = Phi s ∧ RootK s t)

/-- `QLe` with the chain extension (`frame_start`'s post). -/
def QLeX (C : Cfg) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam)
    (r : PanSemResultExact 64) (t : State σ) (Γ' : Gam) : Prop :=
  ∀ v, r = .returned v → ChainX C tEV tCK P R Γ' t ∧ Phi t ≤ Phi s ∧ RootK s t

/-- **The runs before `frame_open` keep the extension** (abstract obligation). -/
def KeepEH (σ : Type) (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (tEV tCK : Nat)
    (P : Gam → Mem → Ptrs → Frame → Prop) (R : Gam → Mem → Frame → Frame → Prop)
    (XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop) : Prop :=
  ∀ {gw : List MlS} {Γ Γ1 : Gam} {s t : State σ} {p p1 : Ptrs} {fs : List Frame}
    {cm cmark cmm : BitVec 64}, G C H Γ s → ChainL C tEV tCK Γ s fs → XP Γ s fs cm cmark cmm →
    RunT C H gw Γ s Γ1 t p p1 → ProtKeep C (nst St Γ) s t → ChainE P R Γ1 t fs

/-- **The pushed chain's extension** at the end of `start_child`'s record stores (abstract
obligation): the new frame `(e, q)` (EV object fresh at `p`, CK record `q`, `NewX` from
`frame_open`, marks `cmark` / `cmm` stored) on top of `fs`. -/
def PushEH (σ : Type) (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (tEV tCK : Nat)
    (P : Gam → Mem → Ptrs → Frame → Prop) (R : Gam → Mem → Frame → Frame → Prop)
    (XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop) : Prop :=
  ∀ {gw : List MlS} {Γ Γ2 : Gam} {s u : State σ} {p p2 : Ptrs} {fs rest : List Frame}
    {cm cmark cmm e q e0 c0 : BitVec 64}, G C H Γ s → ChainL C tEV tCK Γ s fs →
    fs = (e0, c0) :: rest → XP Γ s fs cm cmark cmm →
    RunT C H gw Γ s Γ2 u p p2 → ProtKeep C (nst St Γ) s u →
    (∃ o ∈ Γ2, o.base = e ∧ o.ty = tEV ∧ ∀ a, InO o a → ¬ p.Allocated a.toNat) →
    (⟨q, tCK, 104⟩ : Obj) ∈ Γ2 → NewX cm p u.memory Γ2 e → fld u.memory q 40 = cm →
    fld u.memory q 48 = cmark → fld u.memory q 56 = cmm →
    ChainE P R Γ2 u ((e, q) :: fs)

/-- The trivial extension satisfies both obligations. -/
theorem chainE_triv {Γ : Gam} {s : State σ} {fs : List Frame} :
    ChainE (fun _ _ _ _ => True) (fun _ _ _ _ => True) Γ s fs :=
  ⟨fun _ _ _ _ => trivial, fun _ _ _ => trivial⟩

theorem keepEH_triv {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {tEV tCK : Nat}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop} :
    KeepEH σ C H St tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) XP :=
  fun _ _ _ _ _ => chainE_triv

theorem pushEH_triv {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {tEV tCK : Nat}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop} :
    PushEH σ C H St tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) XP :=
  fun _ _ _ _ _ _ _ _ _ _ _ _ => chainE_triv

theorem chainX_triv {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s : State σ}
    (h : Chain C tEV tCK Γ s) :
    ChainX C tEV tCK (fun _ _ _ _ => True) (fun _ _ _ _ => True) Γ s :=
  let ⟨fs, h1⟩ := h; ⟨fs, h1, chainE_triv⟩

theorem qsc_of_X {C : Cfg} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} {vs : List (ValueHOL 64)} {s : State σ} {Γ : Gam}
    {r : PanSemResultExact 64} {t : State σ} {Γ' : Gam} (h : QSCX C tEV tCK P R vs s Γ r t Γ') :
    QSC C tEV tCK vs s Γ r t Γ' := fun cm hcm =>
  ⟨fun v hv => let ⟨a, b, _⟩ := (h cm hcm).1 v hv; ⟨chainX_chain a, b⟩,
    fun v hv => let ⟨a, b, _⟩ := (h cm hcm).2 v hv; ⟨chainX_chain a, b⟩⟩

/-- `NewX` survives a store outside the record's slots 11 / 14 / 17. -/
theorem newX_upd {msg : BitVec 64} {p : Ptrs} {m : Mem} {Γ : Gam} {e a x : BitVec 64}
    (h88 : e + BitVec.ofNat 64 88 ≠ a) (h112 : e + BitVec.ofNat 64 112 ≠ a)
    (h136 : e + BitVec.ofNat 64 136 ≠ a) (h208 : e + BitVec.ofNat 64 208 ≠ a)
    (h224 : e + BitVec.ofNat 64 224 ≠ a)
    (hLa : ∀ L ∈ Γ, L.ty = Types.tLSTs → L.cell 0 ≠ a ∧ L.cell 1 ≠ a)
    (h : NewX msg p m Γ e) : NewX msg p (upd m a x) Γ e := by
  obtain ⟨h1, ⟨L, hL, hLb, hLt, hLe⟩, ⟨D, hD, hDb, hDt⟩, hDf, hMk⟩ := h
  refine ⟨by rw [fld_upd_ne' h112]; exact h1,
    ⟨L, hL, by rw [fld_upd_ne' h88]; exact hLb, hLt,
      lgEmp_congr hLe (rd_upd_ne m x (hLa L hL hLt).1) (rd_upd_ne m x (hLa L hL hLt).2)⟩,
    ⟨D, hD, by rw [fld_upd_ne' h136]; exact hDb, hDt⟩, by rw [fld_upd_ne' h136]; exact hDf, ?_⟩
  unfold MarkV
  rw [fld_upd_ne' h208, fld_upd_ne' h224]
  exact hMk

theorem newX_mono {msg : BitVec 64} {p p1 : Ptrs} {m : Mem} {Γ : Gam} {e : BitVec 64}
    (hmo : p.Mono p1) (h : NewX msg p1 m Γ e) : NewX msg p m Γ e :=
  ⟨h.1, h.2.1, h.2.2.1, fun ha => h.2.2.2.1 (allocated_mono hmo ha), h.2.2.2.2⟩

/-- The pre-`frame_open` tracked facts. -/
def SKT (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (gwK : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (u : State σ) : Prop :=
  (∀ x ∈ scNames, u.locals.lookup x = s0.locals.lookup x) ∧
  (∃ v, u.locals.lookup (nm "csnap") = some v ∧ ∃ w, v = .val (.word w)) ∧
  ∃ Γ1 p1, RunT C H gwK Γ s0 Γ1 u p p1 ∧ p1.fp = p.fp ∧ ProtKeep C (nst St Γ) s0 u

theorem skT_loc {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {St : Nat → Bool}
    {gwK : List MlS} {Γ : Gam} {s0 u : State σ} {p : Ptrs} (h : SKT C H St gwK Γ s0 p u)
    (l : Locs) (hl : ∀ x ∈ scNames, l.lookup x = u.locals.lookup x)
    (hc : l.lookup (nm "csnap") = u.locals.lookup (nm "csnap")) :
    SKT C H St gwK Γ s0 p { u with locals := l } := by
  obtain ⟨hlf, ⟨v, hv, hw⟩, Γ1, p1, hrun, hfp, hpk⟩ := h
  exact ⟨fun x hx => (hl x hx).trans (hlf x hx), ⟨v, hc.trans hv, hw⟩, Γ1, p1,
    runT_locals hH hrun l, hfp, hpk⟩

/-- **A call to a state-object callee** (`buf 20` argument `tgt`, `BufOK` at the start) keeps
`SKT`. -/
theorem skT_call {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {St : Nat → Bool}
    (hSt : ∀ t ∈ keepTys, St t = false)
    (hJ : JrPG C) {gwK : List MlS} (hgJ : JrOut (gwK)) {Γ : Gam} {s0 s : State σ} {p : Ptrs}
    (hG0 : G C H Γ s0) (hJ0 : JrNZ s0) (hk : SKT C H St gwK Γ s0 p s) {tgt : BitVec 64}
    (hbuf : BufOK C Γ p tgt.toNat 20) {callee : Locs} {r : PanSemResultExact 64} {st : State σ}
    (hR : SumRelX C H (sgB gwK) (fun _ s _ => JrNZ s)
      (fun _ _ Γ a => ProtCell C Γ a ∧ StCell St Γ a) (fun _ s _ _ t _ => FpQ s t)
      [.val (.word tgt)] (callEntryStateHOLFinite s callee) r st)
    (hg : Good (some r)) (hna : ¬ Abortive r) :
    ∃ Γ2 p2, RunT C H gwK Γ s0 Γ2 st p p2 ∧ p2.fp = p.fp ∧ ProtKeep C (nst St Γ) s0 st := by
  obtain ⟨-, -, Γ1, p1, hrun, hfp, hpk⟩ := hk
  have hb1 := bufOK_runT hG0 hrun hbuf
  have hargs : ArgsOK C Γ1 p1 (sgB gwK).params [.val (.word tgt)] := by
    refine ⟨rfl, fun i pt v hpt hv => ?_⟩
    match i, hpt, hv with
    | 0, hpt, hv =>
      simp only [List.getElem?_cons_zero, Option.some.injEq] at hpt hv
      subst hpt hv
      exact ⟨tgt, rfl, hb1⟩
  have hJs : JrNZ (callEntryStateHOLFinite s callee) :=
    jrNZ_congr (s := s) rfl (jrNZ_runT hJ hgJ hrun hJ0)
  obtain ⟨Γ2, p2, hrun2, hc, hfq⟩ := run_callT hH (fun g h => h) hrun hR hg hna hargs hJs
    (fun a ⟨_, hst⟩ => by
      obtain ⟨q, hq, hord, hL, -⟩ := hrun.2.2.2.2.2.1
      exact not_kCell_of_stCell hSt hord hL hst)
  have hGe : G C H Γ1 (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hrun.2.2.2.2.2.1
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p1 :=
    (ptrsOf_congr rfl).trans hrun.2.1
  have hpk2 : ProtKeep C (nst St Γ1) (callEntryStateHOLFinite s callee) st :=
    protKeep_nst_of_sumCore (p := p1) hGe hargs hc
  refine ⟨Γ2, p2, hrun2, by rw [hfq p1 p2 hpe hc.2.1, hfp], ?_⟩
  exact protKeep_trans_nst hrun.2.2.2.1 hpk hpk2

/-- The post of `start_child`'s body (non-abortive results). -/
def SPostT (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (gwA : List MlS) (Γ : Gam) (s0 : State σ)
    (p : Ptrs) (vs : List (ValueHOL 64)) (ro : Option (PanSemResultExact 64)) (t : State σ) :
    Prop :=
  ∀ r, ro = some r → ¬ Abortive r → ∃ Γ' p', RunT C H (nmEv :: nmCC :: gwA) Γ s0 Γ' t p p' ∧
    QSCX C tEV tCK P R vs s0 Γ r t Γ'

theorem spostT_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {gwA : List MlS} {Γ : Gam} {s0 : State σ} {p : Ptrs} {vs : List (ValueHOL 64)}
    {ro : Option (PanSemResultExact 64)} {t : State σ}
    (h : SPostT C H tEV tCK P R gwA Γ s0 p vs ro t)
    (l : Locs) : SPostT C H tEV tCK P R gwA Γ s0 p vs ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨Γ', p', hrun, hq⟩ := h r hr hna
  refine ⟨Γ', p', runT_locals hH hrun l, fun cm hcm => ⟨fun v hv => ?_, fun v hv => ?_⟩⟩
  · obtain ⟨h1, h2, h3⟩ := (hq cm hcm).1 v hv
    exact ⟨chainX_locFree.loc t l |>.mpr h1, by rw [phi_locFree.loc]; exact h2,
      rootK_congr rfl rfl rfl rfl h3⟩
  · obtain ⟨h1, h2, h3⟩ := (hq cm hcm).2 v hv
    exact ⟨chainX_locFree.loc t l |>.mpr h1, by rw [phi_locFree.loc]; exact h2,
      rootK_congr rfl rfl rfl rfl h3⟩

/-- Before `frame_open`: any non-return keeps the chain and `Φ`. -/
theorem spostT_pre {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false ∧ St tCK = false)
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop}
    (hKE : KeepEH σ C H St tEV tCK P R XP)
    {gwK gwA : List MlS} (hsub : ∀ g, g ∈ gwK → g ∈ gwA) (hgw : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    {Γ Γ1 : Gam} {s0 t : State σ} {p p1 : Ptrs} (hG : G C H Γ s0) {fs : List Frame}
    (hch : ChainL C tEV tCK Γ s0 fs) {cm cmark cmm : BitVec 64} (hxp : XP Γ s0 fs cm cmark cmm)
    (hrun : RunT C H gwK Γ s0 Γ1 t p p1) (hfp : p1.fp = p.fp)
    (hpk : ProtKeep C (nst St Γ) s0 t) {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (hnr : ∀ v, r ≠ .returned v) :
    SPostT C H tEV tCK P R gwA Γ s0 p vs (some r) t := by
  intro r' hr' _
  cases hr'
  obtain ⟨hc1, hΦ1⟩ := chain_of_keepT hF hSt hgw hG hrun hfp hpk hch
  exact ⟨Γ1, p1, runT_gw (fun g h => by simp [hsub g h]) hrun, fun cm _ =>
    ⟨fun v hv => absurd hv (hnr v), fun v _ => ⟨⟨fs, hc1, hKE hG hch hxp hrun hpk⟩, hΦ1,
      rootK_of_same hch.chain hc1.chain⟩⟩⟩

/-- A kind-2 callee call (`callD f [target]`) from `SKT`, `target` bound to `tgt`. -/
theorem skT_callD_hoare {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} (hF : FrameCfg C H tEV tCK)
    {St : Nat → Bool} (hSt : St tEV = false ∧ St tCK = false)
    (hSb : ∀ t ∈ keepTys, St t = false) (hJ : JrPG C)
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {XP : Gam → State σ → List Frame → BitVec 64 → BitVec 64 → BitVec 64 → Prop}
    (hKE : KeepEH σ C H St tEV tCK P R XP)
    {gwK gwA : List MlS} (hsubK : ∀ g, g ∈ gwK → g ∈ gwA) (hgwK : nmEv ∉ gwK ∧ nmCC ∉ gwK)
    (hgJ : JrOut (gwK)) {Γ : Gam} {s0 : State σ} {p : Ptrs} (hG : G C H Γ s0) (hJ0 : JrNZ s0)
    {fs : List Frame} (hch : ChainL C tEV tCK Γ s0 fs) {cm cmark cmm : BitVec 64}
    (hxp : XP Γ s0 fs cm cmark cmm) {vs0 : List (ValueHOL 64)} {f : MlS}
    {tgt : BitVec 64} (hbuf : BufOK C Γ p tgt.toNat 20) (hf : StSum σ X C H St f (sgB gwK)) :
    HoareG σ X (fun u => SKT C H St gwK Γ s0 p u ∧
        u.locals.lookup (nm "target") = some (.val (.word tgt)))
      (callD f [lv (nm "target")])
      (fun r u => (r = none ∧ SKT C H St gwK Γ s0 p u ∧
          u.locals.lookup (nm "target") = some (.val (.word tgt))) ∨
        (r ≠ none ∧ SPostT C H tEV tCK P R gwA Γ s0 p vs0 r u)) := by
  have hH := hF.hooks
  refine hoareG_callD (sumSpecA_relX hf) ?_ ?_
  · intro s _ ⟨hsk, htg⟩ vs hvs callee v st hR _
    rw [evs_cons (ev_lv_eq htg) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, p2, hrun2, hfp2, hpk2⟩ :=
      skT_call hH hSb hJ hgJ hG hJ0 hsk hbuf hR (by simp [Good]) (not_abortive_ret v)
    obtain ⟨hlf, hcs, -⟩ := hsk
    exact Or.inl ⟨rfl, ⟨hlf, hcs, Γ2, p2, runT_locals hH hrun2 _, hfp2, hpk2⟩, htg⟩
  · intro s _ ⟨hsk, htg⟩ vs hvs callee r st hR _ habn
    rw [evs_cons (ev_lv_eq htg) evs_nil] at hvs
    cases hvs
    refine Or.inr ⟨by simp, fun r' hr' hna' => ?_⟩
    cases hr'
    obtain ⟨Γ2, p2, hrun2, hfp2, hpk2⟩ :=
      skT_call hH hSb hJ hgJ hG hJ0 hsk hbuf hR (good_of_abn habn) hna'
    exact spostT_pre (P := P) (R := R) (XP := XP) hF hSt hKE hsubK hgwK hG hch hxp (runT_emptyLocals hH hrun2) hfp2 hpk2
      (not_returned_of_abn habn) r rfl hna'

/-- The tracked facts after `frame_open` (the new frame `(e, q)` not yet on the chain). -/
def SFT (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (tEV tCK : Nat) (gwF : List MlS) (Γ : Gam)
    (s0 : State σ) (p : Ptrs) (cm e0 c0 kind : BitVec 64) (u : State σ) : Prop :=
  ∃ Γ2 p2 e q, RunT C H gwF Γ s0 Γ2 u p p2 ∧ ProtKeep C (nst St Γ) s0 u ∧ gword u nmEv = some e ∧
    gword u nmCC = some q ∧ (⟨q, tCK, 104⟩ : Obj) ∈ Γ2 ∧
    (∀ a : BitVec 64, q.toNat ≤ a.toNat → a.toNat < q.toNat + 104 → ¬ p.Allocated a.toNat) ∧
    (∃ o ∈ Γ2, o.base = e ∧ o.ty = tEV ∧ ∀ a, InO o a → ¬ p.Allocated a.toNat) ∧
    fld u.memory e 64 = fld s0.memory cm 40 ∧ fld u.memory e 192 = 0 ∧
    (fld u.memory e 24).toNat + (fld u.memory e 40).toNat = p2.fp ∧
    fld u.memory q 0 = e0 ∧ fld u.memory q 8 = c0 ∧ fld u.memory q 16 = kind ∧
    fld u.memory e 216 = 0 ∧ (∃ y ∈ Γ2, y.lo = p.fp) ∧ p.fp < p2.fp ∧ NewX cm p u.memory Γ2 e ∧
    fld u.memory q 40 = cm

theorem sfT_same {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {St : Nat → Bool}
    {tEV tCK : Nat} {gwF : List MlS} {Γ : Gam} {s0 u t : State σ} {p : Ptrs}
    {cm e0 c0 kind : BitVec 64} (h : SFT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind u)
    (hm : t.memory = u.memory) (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs)
    (hbe : t.be = u.be) : SFT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind t := by
  obtain ⟨Γ2, p2, e, q, hrun, hpk, he, hq, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13,
    h14⟩ := h
  have hrun' := runT_same hH hrun hm hg hd hbe
  refine ⟨Γ2, p2, e, q, hrun', fun a ha => by rw [hm]; exact hpk a ha,
    by rw [gword_congr hg]; exact he, by rw [gword_congr hg]; exact hq, h1, h2, h3, ?_, ?_, ?_, ?_,
    ?_, ?_, ?_, h11, h12, ?_, ?_⟩ <;> rw [hm] <;> assumption

/-- A store to `CK` slot `j` (`2 < j < 13`, `j ≠ 5`) of the new record keeps `SFT`. -/
theorem sfT_store {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {tEV tCK : Nat}
    (hF : FrameCfg C H tEV tCK) {gwF : List MlS} {Γ : Gam} {s0 u : State σ} {p : Ptrs}
    {cm e0 c0 kind : BitVec 64} (h : SFT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind u)
    (hord : p.Ordered) (hL : Layout C p Γ) {q : BitVec 64} (hq : gword u nmCC = some q) {j : Nat}
    (hj0 : 2 < j) (hj : j < 13) (hj5 : j ≠ 5) (x : BitVec 64) :
    SFT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind
      { u with memory := upd u.memory (q + BitVec.ofNat 64 (8 * j)) x } := by
  obtain ⟨Γ2, p2, e, q', hrun, hpk, he, hq', h1, h2, ⟨o, ho, hob, hot, hfr⟩, h4, h5, h6, h7, h8,
    h9, h10, h11, h12, h13, h14⟩ := h
  rw [hq, Option.some.injEq] at hq'
  subst hq'
  have ⟨pp, hpp, hord2, hL2, _⟩ := hrun.2.2.2.2.2.1
  have hosz := ev_size hF hL2 ho hot
  have hrec : (⟨q, tCK, 104⟩ : Obj).cell j = q + BitVec.ofNat 64 (8 * j) := rfl
  have hfresh : ¬ p.Allocated (q + BitVec.ofNat 64 (8 * j)).toNat := by
    have hs : scratchEnd < 2 ^ 64 := by decide
    have := cell_addr hord2 hL2 h1 (k := 8 * j) (by show 8 * j < 104; omega)
    simp only [Obj.lo] at this
    exact h2 _ (by rw [this]; omega) (by rw [this]; omega)
  have hx : ∀ k, k < 280 → e + BitVec.ofNat 64 k ≠ q + BitVec.ofNat 64 (8 * j) := by
    intro k hk
    rw [← hob]
    refine cell_ne hord2 hL2 ho h1 (by omega) (by show 8 * j < 104; omega) (Or.inl ?_)
    intro hb
    have := base_ne_of_ty hL2 ho h1 (by rw [hot]; exact hF.ne)
    exact this hb
  have hy : ∀ k, k < 3 → q + BitVec.ofNat 64 (8 * k) ≠ q + BitVec.ofNat 64 (8 * j) := by
    intro k hk
    exact cell_ne hord2 hL2 h1 h1 (by show 8 * k < 104; omega) (by show 8 * j < 104; omega)
      (Or.inr (by omega))
  have h40 : q + BitVec.ofNat 64 40 ≠ q + BitVec.ofNat 64 (8 * j) :=
    cell_ne hord2 hL2 h1 h1 (by show 40 < 104; omega) (by show 8 * j < 104; omega)
      (Or.inr (by omega))
  have hLa : ∀ L ∈ Γ2, L.ty = Types.tLSTs →
      L.cell 0 ≠ q + BitVec.ofNat 64 (8 * j) ∧ L.cell 1 ≠ q + BitVec.ofNat 64 (8 * j) := by
    intro L hL hLt
    have hLtk : L.ty ≠ tCK := by
      intro h; apply hF.ckL; rw [← h, hLt]; decide
    have hne : L.base ≠ q := base_ne_of_ty hL2 hL h1 hLtk
    have hs0 := lgEmp_slotC hL2 hF.lstSz hL hLt (k := 0) (by omega)
    have hs1 := lgEmp_slotC hL2 hF.lstSz hL hLt (k := 1) (by omega)
    unfold Obj.HasSlot at hs0 hs1
    exact ⟨cell_ne hord2 hL2 hL h1 (k := 0) (k' := 8 * j) (by omega) (by show 8 * j < 104; omega)
        (Or.inl hne),
      cell_ne hord2 hL2 hL h1 (k := 8) (k' := 8 * j) (by omega) (by show 8 * j < 104; omega)
        (Or.inl hne)⟩
  refine ⟨Γ2, p2, e, q, ?_, protKeep_ckwS hord hL hpk hfresh x, he, hq, h1, h2,
    ⟨o, ho, hob, hot, hfr⟩, ?_, ?_, ?_, ?_, ?_, ?_, ?_, h11, h12,
    newX_upd (hx 88 (by omega)) (hx 112 (by omega)) (hx 136 (by omega)) (hx 208 (by omega))
      (hx 224 (by omega)) hLa h13,
    by rw [fld_upd_ne' h40]; exact h14⟩
  · rw [← hrec]; exact runT_ckw hF hF.ckK hrun h1 rfl (by omega) hj x
  · rw [fld_upd_ne' (hx 64 (by omega))]; exact h4
  · rw [fld_upd_ne' (hx 192 (by omega))]; exact h5
  · rw [fld_upd_ne' (hx 24 (by omega)), fld_upd_ne' (hx 40 (by omega))]
    exact h6
  · rw [fld_upd_ne' (hy 0 (by omega))]; exact h7
  · rw [fld_upd_ne' (hy 1 (by omega))]; exact h8
  · rw [fld_upd_ne' (hy 2 (by omega))]; exact h9
  · rw [fld_upd_ne' (hx 216 (by omega))]; exact h10

/-- The record-store phase. -/
def STsT (C : Cfg) (H : Hooks σ) (St : Nat → Bool) (tEV tCK : Nat) (gwF : List MlS) (Γ : Gam)
    (s0 : State σ) (p : Ptrs) (cm e0 c0 kind q : BitVec 64) (lw : List (MlS × BitVec 64))
    (L : List (Nat × BitVec 64)) (u : State σ) : Prop :=
  SFT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind u ∧ gword u nmCC = some q ∧
  (∀ xw ∈ lw, u.locals.lookup xw.1 = some (.val (.word xw.2))) ∧
  ∀ kx ∈ L, kx.1 < 13 ∧ fld u.memory q (8 * kx.1) = kx.2

/-- One record store `st cur_cont + 8j, x`. -/
theorem stsT_store {C : Cfg} {H : Hooks σ} {St : Nat → Bool} {tEV tCK : Nat}
    (hF : FrameCfg C H tEV tCK) {gwF : List MlS} {Γ : Gam} {s0 : State σ} {p : Ptrs}
    {cm e0 c0 kind q : BitVec 64} {lw : List (MlS × BitVec 64)} {L : List (Nat × BitVec 64)}
    (hord : p.Ordered) (hL : Layout C p Γ) {j k : Nat} (hk : k = 8 * j) (hj0 : 2 < j)
    (hj : j < 13) (hj5 : j ≠ 5) {x : MlS} {w : BitVec 64} (hx : (x, w) ∈ lw) (hnd : ∀ kx ∈ L, kx.1 ≠ j)
    {c : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hc : HoareG σ X (STsT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind q lw ((j, w) :: L)) c Q) :
    HoareG σ X (STsT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind q lw L)
      (.seq (stG "cur_cont" k (lv x)) c) Q := by
  subst hk
  refine hoareG_seq (R := fun r u => r = none ∧
      STsT C H St tEV tCK gwF Γ s0 p cm e0 c0 kind q lw ((j, w) :: L) u) ?_
    (fun r t _ hr _ h => absurd h.1 hr) (hoareG_pre hc (fun u _ h => h.2))
  refine hoareG_stG fun u _ ⟨hsf, hq, hlw, hLs⟩ g0 v hg0 hv => ?_
  obtain rfl : g0 = q := Option.some.inj (hg0.symm.trans hq)
  rw [ev_lv, hlw _ hx] at hv
  cases hv
  refine ⟨w, rfl, fun _ => ⟨rfl, sfT_store hF hsf hord hL hq hj0 hj hj5 w, hq, hlw, ?_⟩⟩
  intro kx hkx
  rcases List.mem_cons.mp hkx with rfl | hkx
  · exact ⟨hj, fld_upd_eq _⟩
  · obtain ⟨h1, h2⟩ := hLs kx hkx
    refine ⟨h1, ?_⟩
    rw [fld_upd_ne _ (q_off_ne h1 hj (hnd kx hkx))]
    exact h2

end InitECandidate.Solver.MemSafe.Frames
