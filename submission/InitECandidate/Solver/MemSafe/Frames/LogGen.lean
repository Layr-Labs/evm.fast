import InitECandidate.Solver.MemSafe.Frames.FinDefs
import InitECandidate.Solver.MemSafe.Frames.BKeepDef
import InitECandidate.Solver.MemSafe.LogDefs
import InitECandidate.Solver.MemSafe.Hooks.List

/-!
# The log writers, generic part (package L)

`msgTys` contains the log list types (`logTys`), so a callee whose footprint is in `PWtopM` keeps
every log list cell. The three log writers write list cells; their footprint is `PWtopL` (the old
`PWtopM`: outside the message / block objects only), and what they do to the lists is described
by `LogSub` (`LogDefs.lean`).

* `NoMsgCell0`, `PWtopL`, `MsgKeep0`, `XKeepW`, `xKeepW_of_pw`: the footprint and the keep.
* `LstArrAt`: every log list header has its array.
* **`LogStepOK σ C P R`**: the chain extension `P` / `R` survives a log writer (a field of
  `FinHyps`; the guest instance is `LogSub.logStep_guest`).
* `chainE_sumCoreLG`: a summary core of a log writer keeps the chain extension.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

/-! ## The writers' footprint and keep -/

/-- A cell outside every message / block object of `Γ` (the list objects are allowed). -/
def NoMsgCell0 (Γ : Gam) (a : BitVec 64) : Prop := ∀ o ∈ Γ, o.ty ∈ msgTys0 → ¬ InO o a

/-- **`PWtopM` before package L**: the footprint of the log writers. -/
def PWtopL (tEV tCK : Nat) (ks : List Nat) (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam)
    (a : BitVec 64) : Prop :=
  PWtop tEV tCK ks vs s Γ a ∧ NoMsgCell0 Γ a

/-- A footprint inside `PWtopL` misses the block cells. -/
theorem not_kCell_of_pwtopL {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {a : BitVec 64} (h : PWtopL tEV tCK ks vs s Γ a) : ¬ KCell C Γ a := by
  intro hb
  obtain ⟨o, ho, hty, k, hk, -, rfl⟩ := kCell_keep hb
  exact h.2 o ho (by simp only [keepTys, bkTys, blockTys, recKTys, tMSGhK, msgTys0, List.cons_append, List.nil_append,
      List.mem_cons, List.mem_nil_iff, or_false] at hty ⊢; omega)
    (inO_cell hord hL ho (k := 8 * k) (by unfold Obj.HasSlot at hk; omega))

/-- A cell of an object of a non-message type is outside every message / block object. -/
theorem noMsg0_of_ty {C : Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {o : Obj} (ho : o ∈ Γ)
    (hot : o.ty ∉ msgTys0) {a : BitVec 64} (ha : InO o a) : NoMsgCell0 Γ a := by
  intro x hx hxt hxa
  have hne : o ≠ x := by rintro rfl; exact hot hxt
  rcases lay_disj hL ho hx hne with h | h <;> unfold InO at ha hxa <;> lo_omega

theorem pwtopL_of_M {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ}
    {Γ : Gam} {a : BitVec 64} (h : PWtopM tEV tCK ks vs s Γ a) : PWtopL tEV tCK ks vs s Γ a :=
  ⟨h.1, fun o ho hty => h.2 o ho (msgTys0_msgTys _ hty)⟩

/-- `MsgKeep` for the message and block objects only. -/
def MsgKeep0 (C : Cfg) (Γ : Gam) (m m' : Mem) : Prop :=
  ∀ o ∈ Γ, o.ty ∈ msgTys0 → ∀ j, o.HasSlot j → (C.ty o.ty).slot j = .prot →
    rd m' (o.cell j) = rd m (o.cell j)

/-- `XKeep` without the list cells. -/
def XKeepW (C : Cfg) (Γ : Gam) (m m' : Mem) (f : Frame) : Prop :=
  (∀ j ∈ evXSlots, fld m' f.1 (8 * j) = fld m f.1 (8 * j)) ∧ MsgKeep0 C Γ m m'

theorem xKeepW_of {C : Cfg} {Γ : Gam} {m m' : Mem} {f : Frame} (h : XKeep C Γ m m' f) :
    XKeepW C Γ m m' f :=
  ⟨h.1, fun o ho hty => h.2 o ho (msgTys0_msgTys _ hty)⟩

/-- **A footprint inside `PWtopL` keeps every message / block `prot` cell.** -/
theorem msgKeep0_of {C : Cfg} {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout C p Γ)
    {tEV tCK : Nat} {ks : List Nat} {vs : List (ValueHOL 64)} {s : State σ} {m m' : Mem}
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtopL tEV tCK ks vs s Γ a → m' a = m a) :
    MsgKeep0 C Γ m m' := by
  intro o ho hot j hj hpr
  have h := hk (o.cell j) ⟨o, ho, j, hj, hpr, rfl⟩ fun ⟨_, hnm⟩ =>
    hnm o ho hot (inO_cell hord hL ho (k := 8 * j) (by unfold Obj.HasSlot at hj; omega))
  unfold rd; rw [h]

/-- **`XKeepW` for a frame whose EV record is an object of `Γ`**, under a footprint inside
`PWtopL ks`. -/
theorem xKeepW_of_pw {C : Cfg} {tEV tCK : Nat} {p : Ptrs} {Γ : Gam} (hord : p.Ordered)
    (hL : Layout C p Γ) {s : State σ} {m m' : Mem} {ks : List Nat} {vs : List (ValueHOL 64)}
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hesz : ∀ e ∈ Γ, e.ty = tEV → ∀ k ∈ ks, e.HasSlot k) (hevSz : 280 ≤ (C.ty tEV).minSz)
    (hk : ∀ a, ProtCell C Γ a → ¬ PWtopL tEV tCK ks vs s Γ a → m' a = m a)
    {f : Frame} (hfo : ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) : XKeepW C Γ m m' f := by
  obtain ⟨o, ho, hob, hot⟩ := hfo
  have hsz : 280 ≤ o.size := by
    have := (lay_obj hL ho).2.2.2.1; rw [hot] at this; omega
  refine ⟨fun j hj => ?_, msgKeep0_of hord hL hk⟩
  rw [← hob]
  exact evX_keep hord hL hevX hksX hesz (fun a hp hn => hk a hp fun h => hn h.1) ho hot hsz j hj



/-- The list hook gives every log header its array (at the memory `m`). -/
def LstArrAt (Γ' : Gam) (m : Mem) : Prop :=
  ∀ L ∈ Γ', HdrTy L.ty → ∃ y ∈ Γ', Hooks.IsLstA y.ty ∧ y.base = rd m L.base ∧
    8 * LNn m L.base ≤ y.size

/-- **A log writer keeps the chain extension `P` / `R`**: a step that keeps the message / EV cells
of the frames (`XKeepW`), with every header's array in range (`LstArrAt`) and the lists described
by `LogSub`. -/
def LogStepOK (σ : Type) (C : Cfg) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) : Prop :=
  ∀ {Γ Γ' : Gam} {s t : State σ} {fs : List Frame} {p p' : Ptrs},
    ptrsOf t = some p' → ptrsOf s = some p → p.Ordered → p'.Ordered → Layout C p' Γ' →
    p.Mono p' → Ext Γ Γ' → NewFresh Γ Γ' p p' →
    (∀ f ∈ fs, XKeepW C Γ s.memory t.memory f) →
    (∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k) →
    LstArrAt Γ' t.memory → LogSub Γ Γ' p'.hp s.memory t.memory →
    ChainE P R Γ s fs → ChainE P R Γ' t fs

theorem blockTys_msgTys0 : ∀ t ∈ blockTys, t ∈ msgTys0 := by decide
theorem bkTys_msgTys0 : ∀ t ∈ bkTys, t ∈ msgTys0 := by decide

/-- The ghost block cells survive a step that keeps the message / block `prot` cells (`MsgKeep0`). -/
theorem bg_step0 {C : Cfg} {L Γ : Gam} {h0 : Nat} {m0 m m' : Mem}
    (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap) (hk : KeepL C L h0 Γ)
    (hmk : MsgKeep0 C Γ m m') (hb : BG C L m0 m) : BG C L m0 m' := by
  refine ⟨fun o ho hty k hk' hp => ?_, fun o ho hty k hk2' hk' hp => ?_⟩
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hk.1 o ho (hreg _ (keep_bk hty))
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hmk x hx (by rw [hxt]; exact bkTys_msgTys0 _ hty) k hk2 (by rw [hxt]; exact hp)
    rw [hc] at this
    rw [this]
    exact hb.1 o ho hty k hk' hp
  · obtain ⟨x, hx, hxb, hxt, hxs⟩ := hk.1 o ho (by rw [hty]; exact hreg _ keep_msg)
    have hk2 : x.HasSlot k := by unfold Obj.HasSlot at hk' ⊢; omega
    have hc : x.cell k = o.cell k := by unfold Obj.cell; rw [hxb]
    have := hmk x hx (by rw [hxt, hty]; decide) k hk2 (by rw [hxt]; exact hp)
    rw [hc] at this
    rw [this]
    exact hb.2 o ho hty k hk2' hk' hp

/-- **`PK` survives a log writer** whenever `P` does. -/
theorem logStep_keep {C : Cfg} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hL : LogStepOK σ C P R)
    (hreg : ∀ t ∈ keepTys, (C.ty t).region = .heap) (L : Gam) (h0 : Nat) (m0 : Mem) :
    LogStepOK σ C (PK C L h0 m0 P) R := by
  intro Γ Γ' s t fs p p' hp' hp hord hord' hL' hmo hext hnf hx hck hLst hSub h
  obtain ⟨hE1, hE2⟩ := h
  have hE' : ChainE P R Γ s fs := ⟨fun q hq f hf => (hE1 q hq f hf).1, hE2⟩
  have h2 := hL hp' hp hord hord' hL' hmo hext hnf hx hck hLst hSub hE'
  refine ⟨fun q hq f hf => ?_, h2.2⟩
  obtain rfl : q = p' := Option.some.inj (hq.symm.trans hp')
  obtain ⟨-, hh0, hkl, hbg⟩ := hE1 p hp f hf
  exact ⟨h2.1 q hq f hf, Nat.le_trans hh0 hmo.1, keepL_step hord hord' hL' hext hnf hh0 hkl,
    bg_step0 hreg hkl (hx f hf).2 hbg⟩

/-- **A summary core of a log writer keeps the chain extension** (`PWtopL` footprint, the lists
described by `LogSub`). -/
theorem chainE_sumCoreLG {C : Cfg} {H : Hooks σ} {tEV tCK : Nat}
    {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    (hF : FrameCfg C H tEV tCK) (hLog : LogStepOK σ C P R)
    (hLst : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    {PWx : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg PWx Γ s vs r t Γ' p p')
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hpw : ∀ a, ProtCell C Γ a → PWx a → PWtopL tEV tCK ks vs s Γ a)
    {top : BitVec 64} (htop : gword s nmEv = some top)
    (htopo : ∃ o ∈ Γ, o.base = top ∧ o.ty = tEV) {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (hSub : LogSub Γ Γ' p'.hp s.memory t.memory)
    (h : ChainE P R Γ s fs) : ChainE P R Γ' t fs := by
  have hpkM : ∀ a, ProtCell C Γ a → ¬ PWtopL tEV tCK ks vs s Γ a → t.memory a = s.memory a :=
    sumCore_protW hc hG hac hpw
  have hpk : ∀ a, ProtCell C Γ a → ¬ PWtop tEV tCK ks vs s Γ a → t.memory a = s.memory a :=
    fun a hp hn => hpkM a hp fun h' => hn h'.1
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := hG
  obtain rfl : p = q := Option.some.inj (hpu.symm.trans hq)
  obtain ⟨q', hq', hord', hL', -⟩ := id hG'
  obtain rfl : p' = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γ, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  have hck : ∀ f ∈ fs, ∀ k ∈ ckXSlots, fld t.memory f.2 k = fld s.memory f.2 k := by
    intro f hf
    obtain ⟨o, ho, hob, hot⟩ := (hobj f hf).2
    have hsz := ck_size hF hL ho hot
    have hck1 : ∀ j, j < 13 → fld t.memory o.base (8 * j) = fld s.memory o.base (8 * j) := by
      intro j hj
      refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
        (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
      exfalso
      obtain ⟨o', ho', hob', hot'⟩ := htopo
      exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
        ((Option.some.inj (heb.symm.trans htop)).trans hob'.symm)
    rw [← hob]
    exact ckX_of13 hck1
  exact hLog hpt hpu hord hord' hL' hmo hext hnf
    (fun f hf => xKeepW_of_pw hord hL hevX hksX hesz hF.evSz hpkM (hobj f hf).1) hck
    (hLst hG') hSub h

end InitECandidate.Solver.MemSafe.Frames
