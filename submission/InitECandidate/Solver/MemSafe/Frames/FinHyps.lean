import InitECandidate.Solver.MemSafe.Frames.FinCall
import InitECandidate.Solver.MemSafe.LogQ

/-!
# `finish_child`: the callee facts and the call rule on the parent side

* `FinHyps`: the callee facts `finish_child` consumes (summaries with abortive results exempt,
  writing among `prot` cells only the running EV's slots `ks` and cells outside every frame
  record; keeping `frame_mem_ptr`; no `EvmErr` where the callee runs after the switch), plus
  configuration facts.
* `PAb`: the post of an abnormal result after the switch (no `EvmErr`, `G`).
* **`hoareG_finCallD`**: `f(args);` from a `FinB` state.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- A signature with unconstrained arguments. -/
def sgA (n : Nat) (gw : List MlS) : Sig := { params := List.replicate n .any, gw := gw }

theorem sgA_any (n : Nat) (gw : List MlS) : ∀ pt ∈ (sgA n gw).params, pt = .any := by
  intro pt h; simp only [sgA, List.mem_replicate] at h; exact h.2

/-- `rollback_child_access(child : ptr EV)` (the fold's signature). -/
def sgRb (tEV : Nat) : Sig := { params := [.fits (.ptr tEV)], grows := false }

/-- `memcpy`'s signature (destination buffer of `n` bytes). -/
def sgMc (gw : List MlS) : Sig := { params := [.bufArg 2 1 0, .any, .any], gw := gw, grows := false }

/-- Fp kept and no `EvmErr`. -/
def FQ (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (_ : Gam) : Prop := FpQ s t ∧ NoE r

/-! ## `create_finish`'s shape (frames9, decision 2: set_code option B)

`create_finish(msg, child)` ends with `set_code(lds (msg + 32), …)`, whose first parameter is
`buf 20`: the target's address block, an allocated block outside `Γ` (decision 4) or scalar cells
of `Γ` objects. So `create_finish` needs that block `BufOK` (**`CfOK`**, from the finishing child's
`GP` and `GR`: `CK_MSG = EV_MSG`), and its summary core may write cells outside every `Γ` object
(**`SumSpecO`**: `set_code`'s `buf` argument cells). -/

/-- The message `msg` handed to `create_finish`: a `Γ` message object whose CURRENT_TARGET word
(slot 4, `prot`) names a `BufOK 20` block. -/
abbrev CfOK (C : Cfg) (Γ : Gam) (m : Mem) (p : Ptrs) (msg : BitVec 64) : Prop :=
  (∃ o ∈ Γ, o.base = msg ∧ o.ty ∈ msgTys ∧ o.HasSlot 4 ∧ (C.ty o.ty).slot 4 = .prot) ∧
    BufOK C Γ p (fld m msg 32).toNat 20

/-- `create_finish`'s precondition. -/
abbrev CfPre (C : Cfg) (tEV : Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  (∃ e, EvRun tEV Γ s e) ∧ JrNZ s ∧
    ∀ msg, vs.head? = some (.val (.word msg)) → ∀ p, ptrsOf s = some p → CfOK C Γ s.memory p msg

/-- `create_finish`'s post: `frame_mem_ptr` kept, the running frame's `GAS_LEFT +
STATE_GAS_SPILLED` not raised. -/
abbrev CfQ (_ : List (ValueHOL 64)) (s : State σ) (_ : Gam) (_ : PanSemResultExact 64) (t : State σ)
    (_ : Gam) : Prop :=
  FpQ s t ∧ ∀ e, gword s nmEv = some e →
    (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat

/-- The relation of a summary whose core may also write cells outside every object of `Γ`. -/
def SumRelO (C : Cfg) (H : Hooks σ) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop)
    (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G C H Γ s →
    (∃ p, ptrsOf s = some p ∧ ArgsOK C Γ p sg.params vs) → Pre vs s Γ →
      ∃ Γ' p p', SumCore C H sg (fun a => (ProtCell C Γ a ∧ PW vs s Γ a) ∨ ¬ InObj Γ a.toNat)
        Γ s vs r t Γ' p p' ∧ Q vs s Γ r t Γ'

/-- **`SumSpecA` whose core may also write cells outside every object of `Γ`** (allocated blocks
`Γ` does not track, e.g. a `buf` argument of a callee). -/
def SumSpecO (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (sg : Sig)
    (Pre : List (ValueHOL 64) → State σ → Gam → Prop)
    (PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop)
    (Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop) :
    Prop :=
  FunSpec σ X f (fun vs s r t => SumRelO C H sg Pre PW Q vs s r t)

theorem sumSpecO_rel {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecO σ X C H f sg Pre PW Q) :
    FunSpec σ X f (fun vs s r t => SumRelO C H sg Pre PW Q vs s r t) := h

/-- A `SumSpecA` summary is a `SumSpecO` one. -/
theorem sumSpecO_of_sumSpecA {C : Cfg} {H : Hooks σ} {f : MlS} {sg : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {PW : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (h : SumSpecA σ X C H f sg Pre PW Q) : SumSpecO σ X C H f sg Pre PW Q := by
  refine FunSpec.mono h fun vs s r t hR hg hna Γ hG ha hp => ?_
  obtain ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, hmod, c8, c9, c10⟩, hq⟩ := hR hg hna Γ hG ha hp
  refine ⟨Γ', p, p', ⟨c1, c2, c3, c4, c5, c6, hmod.mono fun a ha => ?_, c8, c9, c10⟩, hq⟩
  rcases ha with h | h | h | h
  · exact Or.inl h
  · exact Or.inr (Or.inl h)
  · exact Or.inr (Or.inr (Or.inl h))
  · exact Or.inr (Or.inr (Or.inr (Or.inl h)))

/-- A `prot` cell of `Γ` lies in a `Γ` object. -/
theorem inObj_of_prot {C : Cfg} {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G C H Γ s)
    {a : BitVec 64} (h : ProtCell C Γ a) : InObj Γ a.toNat := by
  obtain ⟨q, -, hord, hL, -⟩ := hG
  obtain ⟨o, ho, k, hk, -, rfl⟩ := h
  exact cell_in hord hL ho hk

/-- `incorporate_child_on_success`'s precondition: the running EV `e`, a child `c` (an EV record,
not `e`), and the extra facts `Ic` at the heap pointer. -/
abbrev IcPreG {σ : Type} (tEV : Nat)
    (Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop) (vs : List (ValueHOL 64)) (s : State σ)
    (Γ : Gam) : Prop :=
  ∃ e c, EvRun tEV Γ s e ∧ vs = [.val (.word c)] ∧ (∃ o ∈ Γ, o.base = c ∧ o.ty = tEV) ∧
    c ≠ e.base ∧ ∀ p, ptrsOf s = some p → Ic Γ s.memory p.hp e.base c

/-- `incorporate_child_on_success`'s post: no `EvmErr`, `frame_mem_ptr` kept, the gas bound, and
the lists described by `LogSub` (`LogQ`). -/
abbrev IcQG {σ : Type} (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  (FQ vs s Γ r t Γ' ∧ ∀ e c, gword s nmEv = some e → vs = [.val (.word c)] →
    (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld s.memory e 64).toNat + (fld s.memory e 192).toNat + (fld s.memory c 64).toNat +
        (fld s.memory c 192).toNat) ∧ LogQ vs s Γ r t Γ'

/-- The protected globals the callees of `finish_child` write. -/
structure FinGw where
  sr : List MlS
  cf : List MlS
  sd : List MlS
  sp : List MlS
  ic : List MlS
  au : List MlS
  mc : List MlS

/-- **The callee facts of `finish_child`.** -/
structure FinHyps (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (tEV tCK : Nat)
    (P : Gam → Mem → Ptrs → Frame → Prop) (R : Gam → Mem → Frame → Frame → Prop)
    (Ic : Gam → Mem → Nat → BitVec 64 → BitVec 64 → Prop) (W : FinGw) : Prop where
  code : X.code.lookup = guestCode
  drv : DrvCfg C H tEV tCK
  /-- The chain extension's stability obligations (frames7). -/
  xcfg : XCfg C tEV tCK P R
  /-- The EV slots the extension reads are `prot`. -/
  evX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot
  /-- The frame records are no message records. -/
  msgTy : tEV ∉ msgTys ∧ tCK ∉ msgTys
  /-- The extension of a child / parent pair gives `incorporate_child_on_success`'s extra
  precondition `Ic` at the heap pointer (for the guest: `Inc.IcsX`, `ChainXG.icsX_of`). -/
  icX : ∀ Γ m p ch pa, P Γ m p pa → P Γ m p ch → R Γ m ch pa → Ic Γ m p.hp pa.1 ch.1
  /-- The list hook gives every log header its array (package L). -/
  lstArr : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory
  /-- The chain extension survives a log writer (package L). -/
  logStep : LogStepOK σ C P R
  /-- The extension of a child / parent pair gives `create_finish`'s extra precondition on the
  child's `CK_MSG` (for the guest: `GP` / `GR`, `FinGuest.cfOK_guest`). -/
  cfX : ∀ Γ m p ch pa, P Γ m p ch → R Γ m ch pa → CfOK C Γ m p (fld m ch.2 40)
  pc0 : (C.ty tEV).slot 0 = .scalar
  tag : C.tags.lookup tEV = none
  /-- The memory object of an EV record: all scalar, at least `MEM_LEN` bytes. -/
  memObj : ∀ (Γ : Gam) (s : State σ) (o : Obj), o ∈ Γ → o.ty = tEV → H.wf Γ s o →
    ∃ x ∈ Γ, x.base = fld s.memory o.base 24 ∧ (∀ k, (C.ty x.ty).slot k = .scalar) ∧
      (fld s.memory o.base 32).toNat ≤ x.size ∧ (fld s.memory o.base 32).toNat % 8 = 0
  /-- The journal global is protected, and no callee writes it. -/
  pgJ : JrPG C
  jsr : JrOut W.sr
  jcf : JrOut W.cf
  jsd : JrOut W.sd
  jsp : JrOut W.sp
  jic : JrOut W.ic
  jau : JrOut W.au
  jmc : JrOut W.mc
  gwsrE : nmEv ∉ W.sr ∧ nmCC ∉ W.sr
  sr : SumSpecA σ X C H (nm "state_restore") (sgA 1 W.sr) (fun _ s _ => JrNZ s)
    (PWtopM tEV tCK []) FQ
  gwcfE : nmEv ∉ W.cf ∧ nmCC ∉ W.cf
  cf : SumSpecO σ X C H (nm "create_finish") (sgA 2 W.cf) (CfPre C tEV) (PWtopM tEV tCK gasKs) CfQ
  rb : SumSpecA σ X C H (nm "rollback_child_access") (sgRb tEV) (fun _ _ _ => True)
    (PWtopM tEV tCK []) FQ
  gwsdE : nmEv ∉ W.sd ∧ nmCC ∉ W.sd
  sd : SumSpecA σ X C H (nm "set_retdata") (sgA 2 W.sd)
    (fun _ s Γ => ∃ e, EvRun tEV Γ s e ∧ RetOK C Γ s.memory e.base) (PWtopM tEV tCK [18, 19, 27])
    (fun vs s Γ r t Γ' => FQ vs s Γ r t Γ' ∧ ∀ e, gword s nmEv = some e → RetOK C Γ' t.memory e)
  gwspE : nmEv ∉ W.sp ∧ nmCC ∉ W.sp
  sp : SumSpecA σ X C H (nm "stack_push") (sgA 1 W.sp) (fun _ s Γ => ∃ e, EvRun tEV Γ s e)
    (PWtopM tEV tCK [1, 2, 29]) (fun _ s _ r t _ => FpQ s t ∧ ∀ e, gword s nmEv = some e →
      (fld s.memory e 16).toNat < (fld s.memory e 232).toNat →
        (∃ v, r = .returned v) ∧ fld t.memory e 8 = fld s.memory e 8 ∧
          fld t.memory e 232 = fld s.memory e 232)
  gwicE : nmEv ∉ W.ic ∧ nmCC ∉ W.ic
  ic : SumSpecA σ X C H (nm "incorporate_child_on_success") (sgA 1 W.ic) (IcPreG tEV Ic)
    (PWtopL tEV tCK [8, 9, 12, 23, 24]) IcQG
  gwauE : nmEv ∉ W.au ∧ nmCC ∉ W.au
  au : SumSpecA σ X C H (nm "address_to_u256") (sgA 1 W.au) (fun _ _ _ => True)
    (PWtopM tEV tCK []) FQ
  gwmcE : nmEv ∉ W.mc ∧ nmCC ∉ W.mc
  mc : SumSpecA σ X C H (nm "memcpy") (sgMc W.mc) (fun _ _ _ => True) (PWtopM tEV tCK []) FQ

/-- The post of an abnormal result after the switch. -/
def PAb (C : Cfg) (H : Hooks σ) (ro : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ r, ro = some r → ¬ Abortive r → NoE r ∧ (∀ v, r ≠ .returned v) ∧ ∃ Γ', G C H Γ' t

theorem pab_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {ro : Option (PanSemResultExact 64)}
    {t : State σ} (h : PAb C H ro t) (l : Locs) : PAb C H ro { t with locals := l } := by
  intro r hr hna
  obtain ⟨a, b, Γ', hG⟩ := h r hr hna
  exact ⟨a, b, Γ', (G_locFree hH t l t.clock).mpr hG⟩

/-- **A call from a `FinB` state.** `hP` gives, from the caller's state, the `FinB` facts, the
callee's precondition, and for its post: `frame_mem_ptr` kept, no `EvmErr`, the parent's
`parKeep` slots kept, and the caller's next state. -/
theorem hoareG_finCallD {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {f : MlS} {args : List (ExpHOL 64)}
    {sg : Sig} {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X C H f sg Pre (PWtopM tEV tCK ks) Q) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    {Pp Rp : State σ → Prop}
    (hP : ∀ s, InCtx s X → Pp s → ∀ vs, evs s args = some vs →
      ∃ Γu, FinB C H tEV tCK P R sw e c e' c' rest Γu s ∧
        (∀ p, ptrsOf s = some p → ArgsOK C Γu p sg.params vs) ∧
        (∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γu) ∧
        (∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a) ∧
        ∀ callee r st Γ', Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' →
          FpQ (callEntryStateHOLFinite s callee) st ∧ NoE r ∧
          ((∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs (callEntryStateHOLFinite s callee) Γu a →
              st.memory a = s.memory a) →
            (∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) ∧
            ∀ v, r = .returned v → FinB C H tEV tCK P R sw e c e' c' rest Γ' st → Ext Γu Γ' →
              Rp { st with locals := s.locals })) :
    HoareG σ X Pp (callD f args) (fun ro u => (ro = none ∧ Rp u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := hF.hooks
  have key : ∀ s, InCtx s X → Pp s → ∀ vs, evs s args = some vs → ∀ callee r st,
      SumRelA C H sg Pre (PWtopM tEV tCK ks) Q vs (callEntryStateHOLFinite s callee) r st →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', FinB C H tEV tCK P R sw e c e' c' rest Γ' st ∧ NoE r ∧
        (∀ v, r = .returned v → Rp { st with locals := s.locals }) := by
    intro s hs hp vs hvs callee r st hR hg hna
    obtain ⟨Γu, hB, hargs, hpre, hac, hpost⟩ := hP s hs hp vs hvs
    have hBe := finB_entry hH hB callee
    obtain ⟨Γ', hB', hq, hpk, hext⟩ := finB_call hF hX hevX hBe hR hg hna (fun p hp' => hargs p hp')
      (hpre callee) hks hksX hgw hJ hgJ hac (fun Γ' hq => (hpost callee r st Γ' hq).1)
      (fun Γ' hq hpk => ((hpost callee r st Γ' hq).2.2 hpk).1)
    obtain ⟨-, hne, hk⟩ := hpost callee r st Γ' hq
    exact ⟨Γ', hB', hne, fun v hv => (hk hpk).2 v hv hB' hext⟩
  refine hoareG_callD (sumSpecA_rel hspec) ?_ ?_
  · intro s hs hp vs hvs callee v st hR _
    obtain ⟨Γ', -, -, hRv⟩ := key s hs hp vs hvs callee _ st hR (by simp [Good])
      (not_abortive_ret v)
    exact Or.inl ⟨rfl, hRv v rfl⟩
  · intro s hs hp vs hvs callee r st hR _ habn
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    obtain ⟨Γ', hB', hne, -⟩ := key s hs hp vs hvs callee r st hR (good_of_abn habn) hna
    exact ⟨hne, not_returned_of_abn habn, Γ', (G_locFree hH st _ _).mpr hB'.G⟩

/-- **A call of a log writer from a `FinB` state** (package L). **A call from a `FinB` state.** `hP` gives, from the caller's state, the `FinB` facts, the
callee's precondition, and for its post: `frame_mem_ptr` kept, no `EvmErr`, the parent's
`parKeep` slots kept, and the caller's next state. -/
theorem hoareG_finCallDL {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hLog : LogStepOK σ C P R) (hLst : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {f : MlS} {args : List (ExpHOL 64)}
    {sg : Sig} {ks : List Nat} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hspec : SumSpecA σ X C H f sg Pre (PWtopL tEV tCK ks) Q)
    (hLogQ : ∀ vs s Γ r t Γ', Q vs s Γ r t Γ' → ∀ p', ptrsOf t = some p' →
      LogSub Γ Γ' p'.hp s.memory t.memory) (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280)
    (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    {Pp Rp : State σ → Prop}
    (hP : ∀ s, InCtx s X → Pp s → ∀ vs, evs s args = some vs →
      ∃ Γu, FinB C H tEV tCK P R sw e c e' c' rest Γu s ∧
        (∀ p, ptrsOf s = some p → ArgsOK C Γu p sg.params vs) ∧
        (∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γu) ∧
        (∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a) ∧
        ∀ callee r st Γ', Q vs (callEntryStateHOLFinite s callee) Γu r st Γ' →
          FpQ (callEntryStateHOLFinite s callee) st ∧ NoE r ∧
          ((∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs (callEntryStateHOLFinite s callee) Γu a →
              st.memory a = s.memory a) →
            (∀ j ∈ parKeep, fld st.memory e' (8 * j) = fld s.memory e' (8 * j)) ∧
            ∀ v, r = .returned v → FinB C H tEV tCK P R sw e c e' c' rest Γ' st → Ext Γu Γ' →
              Rp { st with locals := s.locals })) :
    HoareG σ X Pp (callD f args) (fun ro u => (ro = none ∧ Rp u) ∨ (ro ≠ none ∧ PAb C H ro u)) := by
  have hH := hF.hooks
  have key : ∀ s, InCtx s X → Pp s → ∀ vs, evs s args = some vs → ∀ callee r st,
      SumRelA C H sg Pre (PWtopL tEV tCK ks) Q vs (callEntryStateHOLFinite s callee) r st →
      Good (some r) → ¬ Abortive r →
      ∃ Γ', FinB C H tEV tCK P R sw e c e' c' rest Γ' st ∧ NoE r ∧
        (∀ v, r = .returned v → Rp { st with locals := s.locals }) := by
    intro s hs hp vs hvs callee r st hR hg hna
    obtain ⟨Γu, hB, hargs, hpre, hac, hpost⟩ := hP s hs hp vs hvs
    have hBe := finB_entry hH hB callee
    obtain ⟨Γ', hB', hq, hpk, hext⟩ := finB_callL hF hLog hLst hevX hBe hR hg hna (fun p hp' => hargs p hp')
      (hpre callee) hks hksX hgw hJ hgJ hac
      (fun Γ' hq p' hp' => hLogQ _ _ _ _ _ _ hq p' hp')
      (fun Γ' hq => (hpost callee r st Γ' hq).1)
      (fun Γ' hq hpk => ((hpost callee r st Γ' hq).2.2 hpk).1)
    obtain ⟨-, hne, hk⟩ := hpost callee r st Γ' hq
    exact ⟨Γ', hB', hne, fun v hv => (hk hpk).2 v hv hB' hext⟩
  refine hoareG_callD (sumSpecA_rel hspec) ?_ ?_
  · intro s hs hp vs hvs callee v st hR _
    obtain ⟨Γ', -, -, hRv⟩ := key s hs hp vs hvs callee _ st hR (by simp [Good])
      (not_abortive_ret v)
    exact Or.inl ⟨rfl, hRv v rfl⟩
  · intro s hs hp vs hvs callee r st hR _ habn
    refine Or.inr ⟨by simp, fun r' hr' hna => ?_⟩
    simp only [Option.some.injEq] at hr'
    subst hr'
    obtain ⟨Γ', hB', hne, -⟩ := key s hs hp vs hvs callee r st hR (good_of_abn habn) hna
    exact ⟨hne, not_returned_of_abn habn, Γ', (G_locFree hH st _ _).mpr hB'.G⟩

end InitECandidate.Solver.MemSafe.Frames
