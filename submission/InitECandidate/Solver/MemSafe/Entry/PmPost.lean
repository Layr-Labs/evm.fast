import InitECandidate.Solver.MemSafe.Entry.Main
import InitECandidate.Solver.MemSafe.Frames.RfPostG
import InitECandidate.Solver.MemSafe.Frames.RunFramesJL
import InitECandidate.Solver.MemSafe.D0.Wire
import InitECandidate.Solver.MemSafe.D0.PlKit4
import InitECandidate.Solver.MemSafe.D0.Callees
import InitECandidate.Solver.MemSafe.D0.Kq3

/-!
# `process_message`'s post-state on a return (root identity)

`process_message(msg)` opens the root frame with `frame_open(msg, 0)` (`child`, its record `rec`;
the chain is `[(child, rec)]`), prepares (`depth0_prepare`, `state_snapshot`), stores the snapshot,
runs `frame_start()` and `run_frames()`, and returns `child`.

* **`RA r s`**: every chain of `s` ends in the frame `r` (the root).
* **`RS Γe se M child rec s`**: `PI M s`, `RA (child, rec) s` and the local `child` is the word `child`.
  `frame_open` establishes it (`pr_fo`); `state_snapshot` (`pi_core_root`), `depth0_prepare`
  (`D0Spec`, its `QProX` carries `RootK`), the `CK_SNAPSHOT` store (`ck3_write`) and `frame_start`
  (`QLeX` carries `RootK`) keep it.
* **`pm_hoare`**: `process_message`'s body, from `P0G Γe se M msg` (the entry typing `Γe`, the entry state
  `se`), on a return ends in **`PmFin Γe se child t`**: `MarkV t.memory child`, `G` for some `Γ` holding the
  child's `EV` object, **`KeepH guestC Γe Γ se t`** (threaded as `PIK Γe se`: `SumCore`, `RunT`, `D0SpecH`'s
  and `run_frames`' `KeepH`), the root frame's **`GP`** (`RFXK` exports it), and `ev` / `cur_cont` null.
* **`pm_funSpec`**: the same as a `FunSpec` for `process_message` (`PmR`: for every entry typing).

The `catch EvmErr` handler of the `depth0_prepare` call (`state_restore`, the `msg + 48` store,
`refill_frame_state_gas`, `frame_halt`, the restore of `ev` / `cur_cont`) is proved to end in the same
post (`catch_post`, from the `KP` infrastructure of `D0`); its entry facts (`HEnt`) come from the
slot-112 keep facts of `state_snapshot` (`pi_core_k`) and `depth0_prepare` (`D0SpecH`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Entry
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {Γe : Gam} {se : State σ}

/-! ## The root fact -/

/-- Every chain of `s` ends in the frame `r`. -/
def RA (r : Frame) (s : State σ) : Prop := ∀ fs, ChainOf s fs → fs.getLast? = some r

theorem ra_congr {r : Frame} {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : RA r s) : RA r t :=
  fun fs hfs => h fs (chainOf_congr (s := t) (s' := s) hm.symm hg.symm hfs)

theorem ra_trans {r : Frame} {u t : State σ} (h : RA r u) (hr : RootK u t)
    (hu : ∃ fs, ChainOf u fs) : RA r t := by
  intro fs' hfs'
  obtain ⟨fs, hfs⟩ := hu
  rw [hr fs fs' hfs hfs']
  exact h fs hfs

theorem pi_chain {M : Nat} {s : State σ} (h : PI M s) : ∃ fs, ChainOf s fs := by
  obtain ⟨Γ, p, hG, hp, ⟨⟨⟨fs, hch, hE⟩, hΦ⟩, hJ⟩⟩ := h
  exact ⟨fs, hch.chain⟩

/-! ## `KeepH` from the entry -/

theorem keepH_of_core {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') : KeepH C Γ Γ' s t := by
  obtain ⟨c1, c2, c3, c4, c5, cG, -⟩ := hc
  obtain ⟨y, hy, hordy, hLy, -⟩ := cG
  obtain rfl : y = p' := Option.some.inj (hy.symm.trans c2)
  exact keepH_of_run c1 c2 c3 c4 c5 hLy hordy

theorem keepH_of_ptrs {C : Cfg} {Γ : Gam} {s t : State σ} (h : ptrsOf t = ptrsOf s) :
    KeepH C Γ Γ s t := by
  intro p p' hp hp' _
  rw [h, hp] at hp'
  obtain rfl := Option.some.inj hp'
  exact ⟨Nat.le_refl _, fun x hx _ => ⟨x, hx, rfl, rfl, Nat.le_refl _⟩, fun o ho _ a h1 h2 =>
    Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩⟩

theorem bkeep_of_core {C : Cfg} {H : Hooks σ} {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam}
    {s t : State σ} {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hG : G C H Γ s) (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γ a)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') (hPW : ∀ a, PW a → ¬ KCell C Γ a) :
    BKeep C Γ s t := bkeep_of_sumCore' hG hac hc hPW

/-- **What the thread keeps of the entry**: `KeepH` and `BKeep` from the entry typing `Γe` and
state `se` (whose allocator state is ordered, so that `BKeep` composes through `KeepH`). -/
def KB (Γe Γ : Gam) (se s : State σ) : Prop :=
  KeepH guestC Γe Γ se s ∧ BKeep guestC Γe se s ∧ ∃ p0, ptrsOf se = some p0 ∧ p0.Ordered

theorem kb_loc {Γ : Gam} {s t : State σ} (hm : t.memory = s.memory) (hg : t.globals = s.globals)
    (h : KB Γe Γ se s) : KB Γe Γ se t :=
  ⟨keepH_congr rfl hg h.1, bkeep_congr rfl hm h.2.1, h.2.2⟩

theorem kb_step {Γ Γ' : Gam} {s t : State σ} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    (hk : KB Γe Γ se s) (h1 : KeepH guestC Γ Γ' s t) (h2 : BKeep guestC Γ s t) : KB Γe Γ' se t :=
  ⟨keepH_step hG hk.1 h1, bkeep_step (Hooks.frameCfg_guestHooksR (σ := σ)).blkHeap hk.2.2
    (let ⟨p, hp, _⟩ := hG; ⟨p, hp⟩) hk.1 hk.2.1 h2, hk.2.2⟩

theorem kb_refl {p0 : Ptrs} (hp : ptrsOf se = some p0) (ho : p0.Ordered) {t : State σ}
    (hg : t.globals = se.globals) (hm : t.memory = se.memory) : KB Γe Γe se t :=
  ⟨keepH_refl hg, bkeep_of_mem hm, p0, hp, ho⟩

/-- **`PI` with `KB` from the entry typing `Γe` and state `se`.** -/
def PIK (Γe : Gam) (se : State σ) (M : Nat) (s : State σ) : Prop :=
  ∃ Γ p, G guestC (Hooks.guestHooksR (σ := σ)) Γ s ∧ ptrsOf s = some p ∧
    PreInvX guestC tEV tCK GP GR M [] s Γ ∧ KB Γe Γ se s

theorem pis_pi {M : Nat} {s : State σ} (h : PIK Γe se M s) : PI M s :=
  let ⟨Γ, p, hG, hp, hpre, _⟩ := h; ⟨Γ, p, hG, hp, hpre⟩

theorem pis_loc {M : Nat} {s : State σ} (h : PIK Γe se M s) (l : Locs) (c : Nat) :
    PIK Γe se M { s with locals := l, clock := c } := by
  obtain ⟨Γ, p, hG, hp, hpre, hk⟩ := h
  exact ⟨Γ, p, (G_locFree Hooks.guestHooksR_lawful s l c).mpr hG, (ptrsOf_congr rfl).trans hp,
    preInvX_loc hpre l c, kb_loc rfl rfl hk⟩

theorem pis_entry {M : Nat} {s : State σ} (h : PIK Γe se M s) (callee : Locs) :
    PIK Γe se M (callEntryStateHOLFinite s callee) := pis_loc h callee _

theorem pis_set {M : Nat} {s : State σ} (h : PIK Γe se M s) (n : MlS) (v : ValueHOL 64) :
    PIK Γe se M (setVarHOLFinite n v s) := pis_loc h _ s.clock

/-- `pi_core_root` with `KeepH` from the entry. -/
theorem pis_core_root {M : Nat} {sg : Sig} (hps : sg.params = []) (hgw : sg.gw = [])
    {u st : State σ} {Γ Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hpre : PreInvX guestC tEV tCK GP GR M [] u Γ) (hk : KB Γe Γ se u)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ False)
      Γ u vs r st Γ' p p')
    (hfp : p'.fp = p.fp) : PIK Γe se M st ∧ RootK u st :=
  have h := pi_core_rootX hps hgw hG hpre hc hfp
  ⟨⟨Γ', p', hc.2.2.2.2.2.1, hc.2.1, h.1, kb_step hG hk (keepH_of_core hc)
    (bkeep_of_core hG (fun a ha => absurd ha (argCells_any (by rw [hps]; intro pt h; cases h)))
      hc (fun a h => absurd h.2 id))⟩, h.2⟩

/-- `P0` at the entry typing `Γe`, with the globals of the entry state `se`. -/
def P0G (Γe : Gam) (se : State σ) (M : Nat) (msg : BitVec 64) (s : State σ) : Prop :=
  ∃ p, G guestC (Hooks.guestHooksR (σ := σ)) Γe s ∧ ptrsOf s = some p ∧ FoPre M msg Γe s ∧
    s.locals.lookup (nm "msg") = some (.val (.word msg)) ∧ (s.globals = se.globals ∧ s.memory = se.memory)

theorem p0g_set {M : Nat} {msg : BitVec 64} {s : State σ} (h : P0G Γe se M msg s) {n : MlS}
    (hn : n ≠ nm "msg") (v : ValueHOL 64) : P0G Γe se M msg (setVarHOLFinite n v s) := by
  obtain ⟨p, hG, hp, hf, hl, hgl⟩ := h
  refine ⟨p, (G_locFree Hooks.guestHooksR_lawful s _ s.clock).mpr hG,
    (ptrsOf_congr rfl).trans hp, hf, ?_, hgl⟩
  rw [lk_set_ne s v hn]; exact hl


/-- **What the thread keeps after `frame_open`**: `PI M`, the root frame is `(child, rec)`, the
local `child`. -/
def RS (Γe : Gam) (se : State σ) (M : Nat) (child rec : BitVec 64) (s : State σ) : Prop :=
  PIK Γe se M s ∧ RA (child, rec) s ∧ s.locals.lookup (nm "child") = some (.val (.word child))

/-- `RS` with the locals `xs` known to be words. -/
def PRL (Γe : Gam) (se : State σ) (M : Nat) (child rec : BitVec 64) (xs : List MlS) (s : State σ) : Prop :=
  RS Γe se M child rec s ∧ ∀ x ∈ xs, ∃ w : BitVec 64, s.locals.lookup x = some (.val (.word w))

theorem prl_step {M : Nat} {child rec : BitVec 64} {xs : List MlS} {s st : State σ} {callee : Locs}
    (hs : PRL Γe se M child rec xs s) (hP : PIK Γe se M st) (hR : RootK (callEntryStateHOLFinite s callee) st) :
    PRL Γe se M child rec xs { st with locals := s.locals } := by
  obtain ⟨⟨hpi, hra, hl⟩, hx⟩ := hs
  have hpe : PI M (callEntryStateHOLFinite s callee) := pi_entry (pis_pi hpi) callee
  have hrae : RA (child, rec) (callEntryStateHOLFinite s callee) := ra_congr (s := s) rfl rfl hra
  have hrst : RA (child, rec) st := ra_trans hrae hR (pi_chain hpe)
  exact ⟨⟨pis_loc hP s.locals st.clock, ra_congr (s := st) rfl rfl hrst, hl⟩, hx⟩

theorem prl_set {M : Nat} {child rec : BitVec 64} {xs : List MlS} {s : State σ} {n : MlS}
    (hn : n ≠ nm "child") (hs : PRL Γe se M child rec xs s) (w : BitVec 64) :
    PRL Γe se M child rec (n :: xs) (setVarHOLFinite n (.val (.word w)) s) := by
  obtain ⟨⟨hpi, hra, hl⟩, hx⟩ := hs
  refine ⟨⟨pis_set hpi n _, ra_congr (s := s) rfl rfl hra, ?_⟩, fun x hxm => ?_⟩
  · rw [lk_set_ne s _ hn]; exact hl
  · by_cases h : x = n
    · subst h; exact ⟨w, lk_set_self _ _ _⟩
    · have hxs : x ∈ xs := by
        rcases List.mem_cons.mp hxm with rfl | h'
        · exact absurd rfl h
        · exact h'
      rw [lk_set_ne s _ (Ne.symm h)]
      exact hx x hxs

/-! ## The post -/

/-- The log facts are the last conjunct of `GP`. Stated for a pair `(e, r)` so that the conclusion's
frame is a plain variable: with `f.1` the elaborator tries `?f.1 =?= child` against the expected type
before `f` is known, fails, and unfolds `LogsIn` for minutes before falling back. -/
theorem gp_logsIn' {Γ : Gam} {m : Mem} {p : Ptrs} {e r : BitVec 64} (h : GP Γ m p (e, r)) :
    LogsIn Γ m p.hp e := h.2.2.2.2.2.2

/-- The state at the end of `process_message`: `G`, `ev` / `cur_cont` null, and valid marks of the
returned root frame, whose `EV` object is live in the typing; the journal globals non-null (`JrNZ`). -/
def PmFin (Γe : Gam) (se : State σ) (child : BitVec 64) (t : State σ) : Prop :=
  MarkV t.memory child ∧
    (∃ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ t ∧ (∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) ∧
      KeepH guestC Γe Γ se t ∧ BKeep guestC Γe se t ∧
        (∃ rec, ∀ p, ptrsOf t = some p → GP Γ t.memory p (child, rec)) ∧
        (∀ p, ptrsOf t = some p → LogsIn Γ t.memory p.hp child)) ∧
    (∃ e, gword t nmEv = some e ∧ e.toNat < nullMax) ∧
    (∃ c, gword t nmCC = some c ∧ c.toNat < nullMax) ∧ JrNZ t

theorem pmFin_congr {child : BitVec 64} {t t' : State σ} (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) (hd : t'.memaddrs = t.memaddrs) (hbe : t'.be = t.be)
    (h : PmFin Γe se child t) : PmFin Γe se child t' := by
  obtain ⟨h1, ⟨Γ, hG, ho, hk, hb, ⟨rec, hgp⟩, hli⟩, ⟨e, he, he'⟩, ⟨c, hc, hc'⟩, hJ⟩ := h
  refine ⟨by rw [hm]; exact h1, ⟨Γ, G_congr Hooks.guestHooksR_lawful hm hg hd hbe hG, ho, keepH_congr rfl hg hk,
      bkeep_congr rfl hm hb, ⟨rec,
      fun p hp => by rw [hm]; exact hgp p ((ptrsOf_congr hg).symm.trans hp)⟩,
      fun p hp => by rw [hm]; exact hli p ((ptrsOf_congr hg).symm.trans hp)⟩,
    ⟨e, by rw [gword_congr hg]; exact he, he'⟩, ⟨c, by rw [gword_congr hg]; exact hc, hc'⟩,
    jrNZ_congr hg hJ⟩

/-- **`process_message`'s post on a return.** -/
def PmQ (Γe : Gam) (se : State σ) : Option (PanSemResultExact 64) → State σ → Prop := fun r t =>
  ∀ v, r = some (.returned v) → ∃ child, v = .val (.word child) ∧ PmFin Γe se child t

theorem pmQ_loc {r : Option (PanSemResultExact 64)} {t : State σ} (h : (PmQ Γe se) r t) (l : Locs) :
    (PmQ Γe se) r { t with locals := l } :=
  fun v hv => let ⟨c, hc, hf⟩ := h v hv; ⟨c, hc, pmFin_congr rfl rfl rfl rfl hf⟩

/-- The post family of the nested blocks: a normal end keeps `PRL`, a return is `(PmQ Γe se)`. -/
def PostR (Γe : Gam) (se : State σ) (M : Nat) (child rec : BitVec 64) (xs : List MlS) :
    Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => (r = none → PRL Γe se M child rec xs t) ∧ PmQ Γe se r t

theorem postR_res {M : Nat} {child rec : BitVec 64} {xs : List MlS} {n : MlS} {r : Option (PanSemResultExact 64)}
    {s t : State σ} (hn : n ≠ nm "child") (hs : PRL Γe se M child rec xs s)
    (h : PostR Γe se M child rec (n :: xs) r t) :
    PostR Γe se M child rec xs r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) } := by
  refine ⟨fun hr => ?_, pmQ_loc h.2 _⟩
  obtain ⟨⟨hpi, hra, hl⟩, hx⟩ := h.1 hr
  refine ⟨⟨pis_loc hpi _ t.clock, ra_congr (s := t) rfl rfl hra, ?_⟩, fun x hxm => ?_⟩
  · show (t.locals.resVarEq (n, s.locals.lookup n)).lookup (nm "child") = _
    rw [lookup_resVarEq_ne _ _ hn]; exact hl
  · show ∃ w : BitVec 64, (t.locals.resVarEq (n, s.locals.lookup n)).lookup x = some (.val (.word w))
    rw [lookup_resVarEq_restore]
    by_cases h' : x = n
    · rw [if_pos h']; subst h'; exact hs.2 x hxm
    · rw [if_neg h']; exact hx x (List.mem_cons_of_mem _ hxm)

/-! ## Hoare rules on `PRL` -/

theorem hoare_seqP {P Rn : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64} (ha : Hoare σ guestCtx P a (fun r t => r = none ∧ Rn t))
    (hb : Hoare σ guestCtx Rn b Q) : Hoare σ guestCtx P (.seq a b) Q :=
  hoare_seq (R := fun r t => r = none ∧ Rn t) ha (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre hb (fun _ _ h => h.2))

theorem hoare_seqD {P Rn : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {a b : ProgHOL 64}
    (ha : Hoare σ guestCtx P a (fun r t => (r = none ∧ Rn t) ∨ (r ≠ none ∧ Q r t)))
    (hb : Hoare σ guestCtx Rn b Q) : Hoare σ guestCtx P (.seq a b) Q :=
  hoare_seq (R := fun r t => (r = none ∧ Rn t) ∨ (r ≠ none ∧ Q r t)) ha
    (fun r t _ hr _ h => h.elim (fun h => absurd h.1 hr) (fun h => h.2))
    (hoare_pre hb (fun _ _ h => h.elim (fun h => h.2) (fun h => absurd rfl h.1)))

theorem hoare_skipSeq {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {b : ProgHOL 64} (hb : Hoare σ guestCtx P b Q) : Hoare σ guestCtx P (.seq .skip b) Q :=
  hoare_seqP (Rn := P) (hoare_skip fun s _ h => ⟨rfl, h⟩) hb

theorem hoare_raiseGuard' {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {x : MlS} {e : ExpHOL 64} {k : ProgHOL 64}
    (hk : Hoare σ guestCtx (fun t => P t ∧ ev t c = some (.val (.word 0))) k Q) :
    Hoare σ guestCtx P (.seq (.ite c (.raise x e) .skip) k) Q :=
  hoare_seqP (Rn := fun t => P t ∧ ev t c = some (.val (.word 0)))
    (hoare_ite hoare_raise (hoare_skip fun s _ h => ⟨rfl, h.1, h.2⟩)) hk

theorem hoare_decPRL {M : Nat} {child rec : BitVec 64} {xs : List MlS} {n : MlS} {e : ExpHOL 64}
    {k : ProgHOL 64} {Q Q' : Option (PanSemResultExact 64) → State σ → Prop}
    (hn : n ≠ nm "child")
    (hQ : ∀ r (s t : State σ), PRL Γe se M child rec xs s → Q' r t →
      Q r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })
    (hk : Hoare σ guestCtx (PRL Γe se M child rec (n :: xs)) k Q') :
    Hoare σ guestCtx (PRL Γe se M child rec xs) (.dec n .one e k) Q := by
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQ r s t hP hq)
  subst ht
  exact prl_set hn hP w

theorem hoare_decCallPRL {M : Nat} {child rec : BitVec 64} {xs : List MlS} {rn f : MlS}
    {k : ProgHOL 64} {Q Q' : Option (PanSemResultExact 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R) (hn : rn ≠ nm "child")
    (hstep : ∀ (u : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), RS Γe se M child rec u →
      R [] (callEntryStateHOLFinite u callee) (.returned v) st →
      PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st)
    (hQ : ∀ r (s t : State σ), PRL Γe se M child rec xs s → Q' r t →
      Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })
    (hk : Hoare σ guestCtx (PRL Γe se M child rec (rn :: xs)) k Q') :
    Hoare σ guestCtx (PRL Γe se M child rec xs) (.decCall rn .one f [] k) Q := by
  refine hoare_decCallS hf fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain rfl := evs_zero hvs
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨hPI, hRt⟩ := hstep s callee _ st hP.1 hR
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQ r s t hP hq)
  subst ht
  exact prl_set hn (prl_step hP hPI hRt) w

theorem hoare_callDPRL {M : Nat} {child rec : BitVec 64} {xs : List MlS} {f : MlS}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R)
    (hstep : ∀ (u : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), RS Γe se M child rec u →
      R [] (callEntryStateHOLFinite u callee) (.returned v) st →
      PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st) :
    Hoare σ guestCtx (PRL Γe se M child rec xs) (.call (some (none, none)) f [])
      (fun r t => r = none ∧ PRL Γe se M child rec xs t) := by
  refine hoare_callD hf fun s hs hP vs hvs callee v st hR hst => ?_
  obtain rfl := evs_zero hvs
  obtain ⟨hPI, hRt⟩ := hstep s callee v st hP.1 hR
  exact ⟨rfl, prl_step hP hPI hRt⟩

/-! ## The call steps -/

/-- `state_snapshot` keeps `PI M` and the chain. -/
theorem snap_root {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PIK Γe se M u)
    (h : SnapR [] (callEntryStateHOLFinite u callee) (.returned v) st) :
    PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st := by
  obtain ⟨hR, hfk⟩ := h
  obtain ⟨Γ, p, hG, hp, hpre, hsv⟩ := pis_entry hP callee
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (by simp [Abortive]) Γ hG
    ⟨p, hp, argsOK_any (by simp [sgSn]) rfl⟩ (fun c hc => absurd hc (by simp))
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  have hfp : p'.fp = p0.fp := fpQ_of_fp (hfk (by simp [Good]) (by simp [Abortive])) p0 p' hp hc.2.1
  exact pis_core_root (by simp [sgSn]) (by simp [sgSn]) hG hpre hsv
    (sumCore_pwM hc fun a h => ⟨h.1, by simpa [CapPW] using h.2⟩) hfp

/-- `pi_core_root` with the slot-112 fact: a core with no globals and no `prot` writes keeps the
running frame's `EV_MSG` and `ev`. -/
theorem pi_core_k {sg : Sig} (hps : sg.params = []) (hgw : sg.gw = []) {M : Nat}
    {u st : State σ} {Γ Γ' : Gam} {p p' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64} (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ u)
    (hpre : PreInvX guestC tEV tCK GP GR M [] u Γ)
    (hc : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg (fun a => ProtCell guestC Γ a ∧ False)
      Γ u vs r st Γ' p p')
    (hfp : p'.fp = p.fp) :
    ∀ e, gword u nmEv = some e → gword st nmEv = some e ∧ fld st.memory e 112 = fld u.memory e 112 := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨⟨⟨fs, hch, hE⟩, hΦ⟩, hJ⟩ := hpre
  obtain ⟨e, c, rest, hfs, he, hcc, -⟩ := hch.chain
  subst hfs
  have hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell guestC Γ a := fun a ha =>
    absurd ha (argCells_any (by rw [hps]; intro pt h; cases h))
  have hgwE : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw := by rw [hgw]; simp
  have hcT : SumCore guestC (Hooks.guestHooksR (σ := σ)) sg
      (fun a => ProtCell guestC Γ a ∧ PWtop tEV tCK [] vs u Γ a) Γ u vs r st Γ' p p' :=
    sumCore_pwM hc fun a h => ⟨h.1, h.2.elim⟩
  obtain ⟨hch2, -, -, -⟩ := pa_coreX hF hG hch (ks := []) (by simp) (by simp) hgwE hcT hac hfp
    (Or.inl ⟨by simp, by simp⟩) (Or.inl ⟨by simp, by simp⟩)
  obtain ⟨oe, hoe, hoeb, hoet⟩ := (hch.objs (e, c) (List.mem_cons_self ..)).1
  obtain ⟨p0, -, hord, hL, -⟩ := id hG
  have hpk := sumCore_protW hcT hG hac (fun a _ h => h.2)
  have hesz : ∀ x ∈ Γ, x.ty = tEV → ∀ k ∈ ([] : List Nat), x.HasSlot k :=
    fun _ _ _ k hk => absurd hk (by simp)
  have hsz := ev_size hF hL hoe hoet
  have k14 := frame_keep hord hL hesz hpk hoe (Or.inl hoet) (j := 14)
    (by unfold Obj.HasSlot; omega) (by rw [hoet]; decide) (fun _ => by simp)
  rw [hoeb] at k14
  simp only [show (8 * 14 : Nat) = 112 from rfl] at k14
  intro e' he'
  obtain rfl : e' = e := Option.some.inj (he'.symm.trans he)
  exact ⟨ev_head hch2, k14⟩

/-- `snap_root` with the slot-112 fact. -/
theorem snap_rootK {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PIK Γe se M u)
    (h : SnapR [] (callEntryStateHOLFinite u callee) (.returned v) st) :
    PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st ∧
      ∀ e, gword u nmEv = some e → gword st nmEv = some e ∧ fld st.memory e 112 = fld u.memory e 112 := by
  obtain ⟨hR, hfk⟩ := h
  obtain ⟨Γ, p, hG, hp, hpre, hsv⟩ := pis_entry hP callee
  obtain ⟨Γ', p0, p', hc, -⟩ := hR (by simp [Good]) (by simp [Abortive]) Γ hG
    ⟨p, hp, argsOK_any (by simp [sgSn]) rfl⟩ (fun c hc => absurd hc (by simp))
  obtain rfl : p0 = p := Option.some.inj (hc.1.symm.trans hp)
  have hfp : p'.fp = p0.fp := fpQ_of_fp (hfk (by simp [Good]) (by simp [Abortive])) p0 p' hp hc.2.1
  have h1 := pis_core_root (by simp [sgSn]) (by simp [sgSn]) hG hpre hsv
    (sumCore_pwM hc fun a h => ⟨h.1, by simpa [CapPW] using h.2⟩) hfp
  exact ⟨h1.1, h1.2, fun e he => pi_core_k (by simp [sgSn]) (by simp [sgSn]) hG hpre
    (sumCore_pwM hc fun a h => ⟨h.1, by simpa [CapPW] using h.2⟩) hfp e
    ((gword_congr (s := u) (s' := callEntryStateHOLFinite u callee) rfl nmEv).trans he)⟩

/-- `depth0_prepare` (the hypothesis `D0Spec`) at a return. -/
theorem d0_root {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PI M u)
    (h : D0R M [] (callEntryStateHOLFinite u callee) (.returned v) st) :
    PI M st ∧ RootK (callEntryStateHOLFinite u callee) st := by
  obtain ⟨Γ, p, hG, hp, hpre⟩ := pi_entry hP callee
  obtain ⟨Γ', hG', hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hG ⟨rfl, hpre⟩
  obtain ⟨p', hp', -⟩ := id hG'
  exact ⟨⟨Γ', p', hG', hp', d0_ret hpre hq⟩, (hq.1.1 v rfl).2.2⟩

/-- `frame_start` at a return. -/
theorem fs_root {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PIK Γe se M u)
    (h : FsR M [] (callEntryStateHOLFinite u callee) (.returned v) st) :
    PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st := by
  obtain ⟨Γ, p, hG, hp, hpre, hsv⟩ := pis_entry hP callee
  obtain ⟨Γ', p0, p', hc, hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hG
    ⟨p, hp, argsOK_any (by simp [sg0]) rfl⟩ hpre
  have hJ : JrNZ st := jrNZ_sumCore (by decide) (by decide) hc hpre.2
  exact ⟨⟨Γ', p', hc.2.2.2.2.2.1, hc.2.1, fst_ret hpre hq hJ, kb_step hG hsv (keepH_of_core hc)
    (bkeep_of_core hG (fun a ha => absurd ha (argCells_any (by simp [sg0]))) hc (fun a h => h))⟩, (hq v rfl).2.2⟩

/-- **`frame_open(msg, 0)`**: the new root frame, the chain is the one frame. -/
theorem pr_fo {M : Nat} {msg : BitVec 64} {s st : State σ} {callee : Locs} {v : ValueHOL 64}
    (hP : P0G Γe se M msg s)
    (h : FoR [.val (.word msg), .val (.word (BitVec.ofNat 64 0))]
      (callEntryStateHOLFinite s callee) (.returned v) st) :
    ∃ child rec, v = .val (.word child) ∧ PIK Γe se M st ∧ ChainOf st [(child, rec)] ∧
      fld st.memory child 112 = msg := by
  have hH := Hooks.guestHooksR_lawful (σ := σ)
  obtain ⟨p, hG, hp, ⟨hx, hnp, ⟨e0, he0, hE0s⟩, ⟨c0, hc0, hC0s⟩, hJ, hM⟩, hl, hgl, hgm⟩ := hP
  have hGe : G guestC (Hooks.guestHooksR (σ := σ)) Γe (callEntryStateHOLFinite s callee) :=
    (G_locFree hH s _ _).mpr hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans hp
  obtain ⟨Γ', p0, p', hc, hq⟩ := h (by simp [Good]) (by simp [Abortive]) Γe hGe
    ⟨p, hpe, argsOK_any (by simp [sgFO]) rfl⟩
    ⟨msg, BitVec.ofNat 64 0, rfl, hnp, ⟨e0, he0⟩, ⟨c0, hc0⟩⟩
  obtain ⟨msg', kind, child, rec, hvs, hv, hev, hcc, hrec, -, hcf, hp0, hp8, hkind, -⟩ := hq v rfl
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hac : ∀ a, ArgCells (sgFO ([] : List MlS)).params
      [.val (.word msg), .val (.word (BitVec.ofNat 64 0))] a → ¬ ProtCell guestC Γe a :=
    fun a ha => absurd ha (argCells_any (by simp [sgFO]))
  have hbk : BKeep guestC Γe (callEntryStateHOLFinite s callee) st :=
    bkeep_of_core hGe hac hc (fun a h => absurd h.2 id)
  have hrun := runT_of_sumCore (gw := (sgFO ([] : List MlS)).gw) (fun g h => h) hc hbk
  have hk : ProtKeep guestC (nst guestSt Γe) (callEntryStateHOLFinite s callee) st :=
    protKeep_nst_of fun a hpc => sumCore_prot hc hGe hac a hpc (fun h => h)
  have hJ' : JrNZ st := jrNZ_runT (by decide) (by decide) hrun hJ
  have hroot : RootCk st.memory rec :=
    ⟨by rw [show (ckKind : Nat) = 16 from rfl, hkind]; rfl,
      by rw [show (ckParent : Nat) = 0 from rfl, hp0 _ he0]; exact hE0s,
      by rw [show (ckParentCont : Nat) = 8 from rfl, hp8 _ hc0]; exact hC0s⟩
  have hpre := preInvX_open (msg := msg) hGe hrun hk hx hev hcc hrec hroot hcf hJ' hM
  have hnew : fld st.memory child 112 = msg :=
    (hcf.2.2.2.2.2.2.2.2.2.2.2 p hpe).1
  obtain ⟨p1, hp1, hord1, -⟩ := id hG
  obtain rfl : p1 = p := Option.some.inj (hp1.symm.trans hp)
  have hpse : ptrsOf se = some p1 := by rw [← hp1]; unfold ptrsOf gword; rw [← hgl]
  exact ⟨child, rec, hv, ⟨Γ', p', hrun.2.2.2.2.2.1, hrun.2.1, hpre,
    kb_step hGe (kb_refl hpse hord1 hgl hgm) (keepH_of_runT hrun) (bkeep_of_runT hrun)⟩,
    ⟨child, rec, [], rfl, hev, hcc, .base hroot⟩, hnew⟩

/-- **The `CK_SNAPSHOT` store** keeps `PI M` and the chain. -/
theorem ck3_root {M : Nat} {u t : State σ} {c w : BitVec 64} (hP : PIK Γe se M u)
    (hc : gword u nmCC = some c) (hm : t.memory = upd u.memory (c + BitVec.ofNat 64 24) w)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    PIK Γe se M t ∧ RootK u t := by
  obtain ⟨Γ, p, hG, hp, ⟨⟨hx, hΦ⟩, hJ⟩, hsv⟩ := hP
  obtain ⟨p1, hrun, hx2, hΦ2, hRt⟩ := ck3_write (gw := []) (Hooks.frameCfg_guestHooksR (σ := σ)) hG hx hc
    hm hg hd hbe
  exact ⟨⟨Γ, p1, hrun.2.2.2.2.2.1, hrun.2.1, ⟨⟨hx2, by omega⟩, jrNZ_congr hg hJ⟩,
    kb_step hG hsv (keepH_of_runT hrun) (bkeep_of_runT hrun)⟩, hRt⟩

/-! ## The tail: `st cur_cont + 24, snapshot; frame_start(); run_frames(); return child` -/

/-- `run_frames()` from the root: the final state (`run_frames_postX` with the root fact). -/
theorem hoare_rf {M : Nat} {child rec : BitVec 64} {xs : List MlS}
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    Hoare σ guestCtx (PRL Γe se M child rec xs) (.call (some (none, none)) (nm "run_frames") [])
      (fun r t => r = none ∧ PmFin Γe se child t ∧
        t.locals.lookup (nm "child") = some (.val (.word child))) := by
  refine hoare_callD hrf fun s hs hP vs hvs callee v st hR hst => ?_
  obtain rfl := evs_zero hvs
  obtain ⟨⟨hpi, hra, hl⟩, hx⟩ := hP
  obtain ⟨Γ, p, hG, hp, hpre, hsv⟩ := pis_entry hpi callee
  obtain ⟨⟨Γ', hG', hkeep, hobj⟩, hJ, ⟨e, he, he'⟩, ⟨c, hc, hc'⟩, hroot, hbk⟩ := hR Γ hG hpre v rfl
  have hsv' : KB Γe Γ' se st := kb_step hG hsv hkeep hbk
  obtain ⟨fs0, hfs0⟩ := pi_chain (pis_pi (pis_entry hpi callee))
  obtain ⟨e1, c1, hl1, hMV⟩ := hroot fs0 hfs0
  have hr0 := ra_congr (s := s) (t := callEntryStateHOLFinite s callee) rfl rfl hra fs0 hfs0
  obtain ⟨hob, hgp⟩ := hobj fs0 hfs0 child rec hr0
  rw [hr0] at hl1
  obtain ⟨rfl, -⟩ : child = e1 ∧ rec = c1 := by
    simp only [Option.some.injEq, Prod.mk.injEq] at hl1; exact hl1
  exact ⟨rfl, pmFin_congr (t := st) rfl rfl rfl rfl ⟨hMV, ⟨Γ', hG', hob, hsv'.1, hsv'.2.1, ⟨rec, hgp⟩, fun p hp => gp_logsIn' (hgp p hp)⟩, ⟨e, he, he'⟩, ⟨c, hc, hc'⟩, hJ⟩, hl⟩

/-- The tail of the body, from the state after `state_snapshot`. -/
theorem k3_post {M : Nat} {child rec : BitVec 64}
    (hfs : FunSpec σ guestCtx (nm "frame_start") (FsR M))
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    Hoare σ guestCtx (PRL Γe se M child rec [nm "snapshot"]) pmK3 (PmQ Γe se) := by
  unfold pmK3
  have hst : Hoare σ guestCtx (PRL Γe se M child rec [nm "snapshot"])
      (.store (.op .add [gv (nm "cur_cont"), cw 24]) (lv (nm "snapshot")))
      (fun r t => r = none ∧ PRL Γe se M child rec [nm "snapshot"] t) := by
    refine hoare_of_hoareG (hoareG_stG (g := "cur_cont") (k := 24) ?_)
    intro s hs hP G v hG hv
    obtain ⟨w, hw⟩ := hP.2 (nm "snapshot") (List.mem_singleton_self _)
    rw [ev_lv, hw] at hv
    cases hv
    refine ⟨w, rfl, fun _ => ⟨rfl, ?_⟩⟩
    obtain ⟨hpi', hrt⟩ := ck3_root (t := { s with memory := upd s.memory (G + BitVec.ofNat 64 24) w })
      hP.1.1 hG rfl rfl rfl rfl
    exact ⟨⟨hpi', ra_trans hP.1.2.1 hrt (pi_chain (pis_pi hP.1.1)), hP.1.2.2⟩, hP.2⟩
  refine hoare_seqP (Rn := PRL Γe se M child rec [nm "snapshot"]) hst ?_
  refine hoare_seqP (Rn := PRL Γe se M child rec [nm "snapshot"])
    (hoare_callDPRL hfs (fun u callee v st hu h => fs_root hu.1 h)) ?_
  refine hoare_seqP (Rn := fun t => PmFin Γe se child t ∧ t.locals.lookup (nm "child") = some (.val (.word child)))
    (hoare_conseq (hoare_rf (xs := [nm "snapshot"]) hrf) (fun _ _ h => h) (fun r t _ _ h => ⟨h.1, h.2.1, h.2.2⟩)) ?_
  refine hoare_return fun s hs hP v hv => ?_
  rw [ev_lv, hP.2] at hv
  cases hv
  exact fun v' hv' => by
    cases hv'
    exact ⟨child, rfl, pmFin_congr rfl rfl rfl rfl hP.1⟩

/-! ## The catch handler -/

section ctch
open InitECandidate.Solver.MemSafe.D0
local notation "HJ" => (Hooks.guestHooksR (σ := σ))
local notation "gwJ" => [Hooks.gJn]

/-- The facts at the handler's entry: `PI M`, the root is `(child, rec)`, the locals, the
running frame's `EV_MSG` is the `msg` local, and `parent` / `parent_cont` are small words. -/
def HEnt (Γe : Gam) (se : State σ) (M : Nat) (child rec : BitVec 64) (t : State σ) : Prop :=
  PIK Γe se M t ∧ RA (child, rec) t ∧ t.locals.lookup (nm "child") = some (.val (.word child)) ∧
  (∃ m, t.locals.lookup (nm "msg") = some (.val (.word m)) ∧
    ∀ e, gword t nmEv = some e → fld t.memory e 112 = m) ∧
  (∃ w : BitVec 64, t.locals.lookup (nm "prep_snapshot") = some (.val (.word w))) ∧
  (∃ w : BitVec 64, t.locals.lookup (nm "prep_reservoir") = some (.val (.word w))) ∧
  (∃ w : BitVec 64, t.locals.lookup (nm "parent") = some (.val (.word w)) ∧ w.toNat < nullMax) ∧
  (∃ w : BitVec 64, t.locals.lookup (nm "parent_cont") = some (.val (.word w)) ∧ w.toNat < nullMax)

theorem ck32_ne {Γ : Gam} {u : State σ} {fs : List Frame} {e c : BitVec 64} {rest : List Frame}
    (hfs : fs = (e, c) :: rest) (hG : G guestC HJ Γ u) (hch : ChainL guestC tEV tCK Γ u fs)
    {k : Nat} (hk : k < 280) : c + BitVec.ofNat 64 32 ≠ e + BitVec.ofNat 64 k := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  have htop : (e, c) ∈ fs := by rw [hfs]; exact List.mem_cons_self ..
  obtain ⟨oe, hoe, hoeb, hoet⟩ := ev_obj hch htop
  obtain ⟨oc, hoc, hocb, hoct⟩ := ck_obj hch htop
  dsimp only at hoeb hocb
  subst hoeb hocb
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hse := ev_size hF hL hoe hoet
  have hsc := ck_size hF hL hoc hoct
  have hne : oe.base ≠ oc.base := base_ne_of_ty hL hoe hoc (by rw [hoet, hoct]; exact hF.ne)
  exact cell_ne hord hL hoc hoe (by omega) (by omega) (Or.inl hne.symm)

/-- **A write to the running frame's driver cells keeps `KP`** when the weight does not grow. -/
theorem kp_top_write {gw : List MlS} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u t : State σ} (hu : KP HJ gw Γ0 s0 p0 fs e mg u)
    (hmod : ModifiesOnly (TopCells e c) u.memory t.memory) (hg : t.globals = u.globals)
    (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be)
    (h104 : fld t.memory e 104 = fld u.memory e 104) (h32 : fld t.memory c 32 = fld u.memory c 32)
    (h112 : fld t.memory e 112 = fld u.memory e 112)
    (hgas : (fld t.memory e 64).toNat + (fld t.memory e 192).toNat ≤
      (fld u.memory e 64).toNat + (fld u.memory e 192).toNat) :
    KP HJ gw Γ0 s0 p0 fs e mg t := by
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  obtain ⟨hJ, Γ1, p1, hrun, hch, hE, hΦ, h112u⟩ := hu
  obtain ⟨hrun2, hch2, hE2, hrest, -, -⟩ := kg_top hF hfs hrun hch hE hmod hg hd hbe
  refine ⟨jrNZ_congr hg hJ, Γ1, p1, hrun2, hch2, hE2, ?_, by rw [h112, h112u]⟩
  have h1 := phi_eq hch2.chain
  have h2 := phi_eq hch.chain
  rw [hfs, wsum_cons, hrest, wt_eq, h104, h32] at h1
  rw [hfs, wsum_cons, wt_eq] at h2
  generalize (if fld u.memory c 32 = 0 ∧ fld u.memory e 104 ≠ 0 then 1 else 0 : Nat) = b at h1 h2
  have : Phi t ≤ Phi u := by rw [h1, h2]; omega
  omega

theorem refill_fld (m : Mem) (e S : BitVec 64) {j : Nat} (hj : j ≠ 64 ∧ j ≠ 72 ∧ j ≠ 192)
    (hj2 : j < 2 ^ 64) : fld (refillMem m e S) e j = fld m e j := by
  unfold refillMem
  rw [fld_upd_ne _ (off_ne e hj2 (by decide) hj.2.2), fld_upd_ne _ (off_ne e hj2 (by decide) hj.2.1),
    fld_upd_ne _ (off_ne e hj2 (by decide) hj.1)]

theorem refill_fld64 (m : Mem) (e S : BitVec 64) :
    fld (refillMem m e S) e 64 = fld m e 64 + fld m e 192 := by
  unfold refillMem
  rw [fld_upd_ne _ (off_ne e (i := 64) (j := 192) (by decide) (by decide) (by decide)),
    fld_upd_ne _ (off_ne e (i := 64) (j := 72) (by decide) (by decide) (by decide)), fld_upd_eq]

theorem refill_fld192 (m : Mem) (e S : BitVec 64) : fld (refillMem m e S) e 192 = 0 := by
  unfold refillMem; rw [fld_upd_eq]

theorem halt_fld64 (m : Mem) (e err : BitVec 64) : fld (haltMem m e err) e 64 = 0 := by
  unfold haltMem
  rw [fld_upd_ne _ (off_ne e (i := 64) (j := 160) (by decide) (by decide) (by decide)), fld_upd_eq]

theorem halt_fld (m : Mem) (e err : BitVec 64) {j : Nat} (hj : j ≠ 184 ∧ j ≠ 64 ∧ j ≠ 160)
    (hj2 : j < 2 ^ 64) : fld (haltMem m e err) e j = fld m e j := by
  unfold haltMem
  rw [fld_upd_ne _ (off_ne e hj2 (by decide) hj.2.2), fld_upd_ne _ (off_ne e hj2 (by decide) hj.2.1),
    fld_upd_ne _ (off_ne e hj2 (by decide) hj.1)]

theorem hoareG_kp_refill {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "refill_frame_state_gas") [])
      (PSn (KP HJ gwJ Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have he := kp_ev_head hfs hu
  obtain ⟨-, Γ1, p1, hrun1, hch1, -⟩ := id hu
  have hG1 := hrun1.2.2.2.2.2.1
  refine hoareG_callD (FunSpec.and (refill_spec guestCtx_code) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ _
    subst hs
    obtain ⟨e', S, he', -, hg, hm⟩ := hR (by simp [Good])
    have : e' = e := Option.some.inj (he'.symm.trans he)
    subst this
    have hm' : st.memory = refillMem s.memory e' S := hm
    have hmod : ModifiesOnly (TopCells e' c) s.memory st.memory := by
      rw [hm']; unfold refillMem
      exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
        (Or.inl ⟨8, by simp [evDriverSlots], rfl⟩) _) (Or.inl ⟨9, by simp [evDriverSlots], rfl⟩) _)
        (Or.inl ⟨24, by simp [evDriverSlots], rfl⟩) _
    have hk : KP HJ gwJ Γ0 s0 p0 fs e' mg st := by
      refine kp_top_write hfs hu hmod hg hd hbe ?_ ?_ ?_ ?_
      · rw [hm']; exact refill_fld _ _ _ (by omega) (by omega)
      · rw [hm']; unfold refillMem
        rw [fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 192) (by omega)),
          fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 72) (by omega)),
          fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 64) (by omega))]
      · rw [hm']; exact refill_fld _ _ _ (by omega) (by omega)
      · rw [hm', refill_fld64, refill_fld192]
        have := toNat_add_le (fld s.memory e' 64) (fld s.memory e' 192)
        have z : (0 : BitVec 64).toNat = 0 := rfl
        omega
    exact Or.inl ⟨rfl, kp_locals hH hk _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    obtain ⟨e', S, -, hr, -⟩ := hR (good_of_abn habn)
    subst hr
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

theorem hoareG_kp_halt {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame}
    {e c : BitVec 64} {rest : List Frame} {mg : BitVec 64} (hfs : fs = (e, c) :: rest)
    {u0 : State σ} (hu : KP HJ gwJ Γ0 s0 p0 fs e mg u0) {x : ExpHOL 64} :
    HoareG σ guestCtx (fun t => t = u0) (callD (nm "frame_halt") [x])
      (PSn (KP HJ gwJ Γ0 s0 p0 fs e mg) u0.locals) := by
  have hH := (Hooks.frameCfg_guestHooksR (σ := σ)).hooks
  have he := kp_ev_head hfs hu
  obtain ⟨-, Γ1, p1, hrun1, hch1, -⟩ := id hu
  have hG1 := hrun1.2.2.2.2.2.1
  refine hoareG_callD (FunSpec.and (halt_spec guestCtx_code) (funSpec_dom _)) ?_ ?_
  · intro s _ hs vs hvs callee v st ⟨hR, hd, hbe⟩ _
    subst hs
    obtain ⟨e', err, -, he', -, hg, hm⟩ := hR (by simp [Good])
    have : e' = e := Option.some.inj (he'.symm.trans he)
    subst this
    have hm' : st.memory = haltMem s.memory e' err := hm
    have hmod : ModifiesOnly (TopCells e' c) s.memory st.memory := by
      rw [hm']; unfold haltMem
      exact modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_upd (modifiesOnly_refl _ _)
        (Or.inl ⟨23, by simp [evDriverSlots], rfl⟩) _) (Or.inl ⟨8, by simp [evDriverSlots], rfl⟩) _)
        (Or.inl ⟨20, by simp [evDriverSlots], rfl⟩) _
    have hk : KP HJ gwJ Γ0 s0 p0 fs e' mg st := by
      refine kp_top_write hfs hu hmod hg hd hbe ?_ ?_ ?_ ?_
      · rw [hm']; exact halt_fld _ _ _ (by omega) (by omega)
      · rw [hm']; unfold haltMem
        rw [fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 160) (by omega)),
          fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 64) (by omega)),
          fld_upd_ne' (ck32_ne hfs hG1 hch1 (k := 184) (by omega))]
      · rw [hm']; exact halt_fld _ _ _ (by omega) (by omega)
      · rw [hm']
        have h192 : fld (haltMem s.memory e' err) e' 192 = fld s.memory e' 192 :=
          halt_fld _ _ _ (by omega) (by omega)
        rw [h192, halt_fld64]
        have z : (0 : BitVec 64).toNat = 0 := rfl
        omega
    exact Or.inl ⟨rfl, kp_locals hH hk _, rfl⟩
  · intro s _ hs vs hvs callee r st ⟨hR, hd, hbe⟩ _ habn
    obtain ⟨e', err, -, -, hr, -⟩ := hR (good_of_abn habn)
    subst hr
    rcases habn with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

theorem hseqK {K : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hq : ∀ r t, Abn r → Q (some r) t) {u0 : State σ} {p1 p2 : ProgHOL 64}
    (h1 : HoareG σ guestCtx (fun t => t = u0) p1 (PSn K u0.locals))
    (h2 : ∀ u : State σ, K u → u.locals = u0.locals → HoareG σ guestCtx (fun t => t = u) p2 Q) :
    HoareG σ guestCtx (fun t => t = u0) (.seq p1 p2) Q := by
  refine hoareG_seq (R := PSn K u0.locals) h1 (fun r t _ hr _ h => ?_) ?_
  · rcases h with ⟨h0, -⟩ | ⟨r', h0, habn, -⟩
    · exact absurd h0 hr
    · rw [h0]; exact hq r' t habn
  · refine hoareG_pt fun u h => ?_
    rcases h with ⟨-, hk, hl⟩ | ⟨r', h0, -⟩
    · exact h2 u hk hl
    · cases h0

theorem pmQ_of_abn {r : PanSemResultExact 64} {t : State σ} (h : Abn r) : (PmQ Γe se) (some r) t := by
  intro v hv
  cases hv
  rcases h with ⟨_, _, h⟩ | ⟨_, h⟩ <;> cases h

/-- **The tail** `ev = parent; cur_cont = parent_cont; return child`. -/
theorem catch_tail {child rec : BitVec 64} {Γ : Gam} {u : State σ} (hG : G guestC HJ Γ u)
    (hMV : MarkV u.memory child) (hob : ∃ o ∈ Γ, o.base = child ∧ o.ty = tEV) (hsv : KB Γe Γ se u)
    (hgp : ∀ p, ptrsOf u = some p → GP Γ u.memory p (child, rec)) {w1 w2 : BitVec 64}
    (hp1 : u.locals.lookup (nm "parent") = some (.val (.word w1))) (hs1 : w1.toNat < nullMax)
    (hp2 : u.locals.lookup (nm "parent_cont") = some (.val (.word w2))) (hs2 : w2.toNat < nullMax)
    (hch : u.locals.lookup (nm "child") = some (.val (.word child))) (hJ : JrNZ u) :
    HoareG σ guestCtx (fun t => t = u)
      (.seq (.assign .global (nm "ev") (lv (nm "parent")))
        (.seq (.assign .global (nm "cur_cont") (lv (nm "parent_cont")))
          (.return (lv (nm "child"))))) (PmQ Γe se) := by
  let u6 := setGlobalHOLFinite nmEv (.val (.word w1)) u
  let u7 := setGlobalHOLFinite nmCC (.val (.word w2)) u6
  have hgo : ∀ g, g ≠ nmEv → g ≠ nmCC → u7.globals.lookup g = u.globals.lookup g := by
    intro g h1 h2
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup g = _
    rw [lookup_update_ne _ _ (Ne.symm h2), lookup_update_ne _ _ (Ne.symm h1)]
  have hge : gword u7 nmEv = some w1 := by
    refine gword_of ?_
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmEv = _
    rw [lookup_update_ne _ _ (by decide), lookup_update_self]
  have hgc : gword u7 nmCC = some w2 := by
    refine gword_of ?_
    show ((u.globals.update (nmEv, _)).update (nmCC, _)).lookup nmCC = _
    rw [lookup_update_self]
  have hpq : ptrsOf u7 = ptrsOf u := by
    unfold ptrsOf gword
    rw [hgo gHeap (by decide) (by decide), hgo gFrame (by decide) (by decide),
      hgo gScratch (by decide) (by decide)]
  have hG7 : G guestC HJ Γ u7 :=
    G_evcc_null Hooks.drvCfg_guestHooksR gt_ev gt_cur_cont hG rfl rfl rfl hgo ⟨w1, hge, hs1⟩
      ⟨w2, hgc, hs2⟩
  refine hoareG_seq (R := fun r t => r = none ∧ t = u6) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assignK fun w _ hw v hv _ => ?_
    subst hw
    rw [ev_lv, hp1] at hv
    cases hv
    exact ⟨rfl, rfl⟩
  refine hoareG_pre (P := fun t => t = u6) ?_ (fun t _ h => h.2)
  refine hoareG_seq (R := fun r t => r = none ∧ t = u7) ?_ (fun r t _ hr _ h => absurd h.1 hr) ?_
  · refine hoareG_assignK fun w _ hw v hv _ => ?_
    subst hw
    have hl : u6.locals.lookup (nm "parent_cont") = some (.val (.word w2)) := hp2
    rw [ev_lv, hl] at hv
    cases hv
    exact ⟨rfl, rfl⟩
  refine hoareG_pre (P := fun t => t = u7) ?_ (fun t _ h => h.2)
  refine hoareG_return fun w _ hw v hv v' hv' => ?_
  subst hw
  have hl : u7.locals.lookup (nm "child") = some (.val (.word child)) := hch
  rw [ev_lv, hl] at hv
  cases hv
  cases hv'
  exact ⟨child, rfl, pmFin_congr rfl rfl rfl rfl ⟨hMV, ⟨Γ, hG7, hob, (kb_step hG hsv (keepH_of_ptrs hpq) (bkeep_of_mem rfl)).1,
    (kb_step hG hsv (keepH_of_ptrs hpq) (bkeep_of_mem rfl)).2.1, ⟨rec,
    fun p hp => hgp p (hpq.symm.trans hp)⟩,
    fun p hp => gp_logsIn' (hgp p (hpq.symm.trans hp))⟩, ⟨w1, hge, hs1⟩, ⟨w2, hgc, hs2⟩,
    jrNZ_of_lookup (fun g hg => hgo g (by rcases jrGs_cases hg with rfl | rfl <;> decide)
      (by rcases jrGs_cases hg with rfl | rfl <;> decide)) hJ⟩⟩

theorem mem_getLast' {α : Type} {a : α} : ∀ {l : List α}, l.getLast? = some a → a ∈ l
  | [], h => by cases h
  | [_], h => by cases h; exact List.mem_singleton_self _
  | _ :: c :: l, h => List.mem_cons_of_mem _ (mem_getLast' (l := c :: l) h)

theorem catch_B (hRec : D0.RecNoMsg σ) {M : Nat} {child rec : BitVec 64} {u : State σ}
    (hu : HEnt Γe se M child rec u) :
    HoareG σ guestCtx (fun t => t = u)
      (.seq (callD (nm "state_restore") [lv (nm "prep_snapshot")])
        (.seq (.store (.op .add [lv (nm "msg"), cw 48]) (lv (nm "prep_reservoir")))
          (.seq (.store (.op .add [gv (nm "ev"), cw 200]) (cw 0))
            (.seq (callD (nm "refill_frame_state_gas") [])
              (.seq (callD (nm "frame_halt") [lv (nm "perr")])
                (.seq (.assign .global (nm "ev") (lv (nm "parent")))
                  (.seq (.assign .global (nm "cur_cont") (lv (nm "parent_cont")))
                    (.return (lv (nm "child"))))))))))
      (PmQ Γe se) := by
  obtain ⟨hPI, hRA, hch, ⟨m, hmsg, hm112⟩, ⟨_, hsn⟩, ⟨wr, hrs⟩, ⟨w1, hp1, hs1⟩, ⟨w2, hp2, hs2⟩⟩ := hu
  obtain ⟨Γ, p, hG, hp, ⟨⟨⟨fs, hchL, hE⟩, hΦ⟩, hJ⟩, hsv⟩ := hPI
  obtain ⟨e, c, rest, hfs, -, -, -⟩ := hchL.chain
  have hF := Hooks.frameCfg_guestHooksR (σ := σ)
  have hK0 : KP HJ gwJ Γ u p fs e (fld u.memory e 112) u :=
    ⟨hJ, Γ, p, runT_refl hG hp, hchL, hE, le_refl _, rfl⟩
  have hev : gword u nmEv = some e := kp_ev_head hfs hK0
  have hmgm : fld u.memory e 112 = m := hm112 e hev
  have hq : ∀ (r : PanSemResultExact 64) (t : State σ), Abn r → (PmQ Γe se) (some r) t :=
    fun r t h => pmQ_of_abn h
  -- 1. `state_restore(prep_snapshot)`
  refine hseqK (K := KP HJ gwJ Γ u p fs e (fld u.memory e 112)) hq ?_ ?_
  · exact hoareG_kpCallDn hF hfs
      (sumSpecA_caps (cs := HtabEntries.srCaps)
        (HtabEntries.csumm_state_restoreG Hooks.jHooks_guestR Rec.foldOK_guestR)
        (fun c hc hg => Or.inl (srCaps_jr c hc hg)) (by decide))
      (Wire.keepsFp_guest (by decide_cbv)) (sgOKJ (sg := HtabEntries.srSig) rfl).1
      (sgOKJ (sg := HtabEntries.srSig) rfl).2.1 (sgOKJ (sg := HtabEntries.srSig) rfl).2.2
      (ks := []) (by simp) hK0
      (hargs_any (by simp [HtabEntries.srSig]) (by simp [HtabEntries.srSig]) hK0)
      (fun _ _ _ _ _ _ h => h) (Or.inl rfl)
  intro u1 hk1 hl1
  -- 2. `st msg + 48, prep_reservoir`
  refine hseqK (K := KP HJ gwJ Γ u p fs e (fld u.memory e 112)) hq ?_ ?_
  · refine hoareG_kpStMsgN hRec hfs hk1 (n := nm "msg") ?_ (off := 48) (Or.inl rfl) ?_
    · rw [hl1, hmgm]; exact hmsg
    · intro v hv
      rw [ev_lv, hl1, hrs] at hv
      cases hv
      exact ⟨_, rfl⟩
  intro u2 hk2 hl2
  -- 3. `st ev + 200, 0`
  refine hseqK (K := KP HJ gwJ Γ u p fs e (fld u.memory e 112)) hq ?_ ?_
  · refine hoareG_kpStEvN hfs hk2 (off := 200) (Or.inr (Or.inr (Or.inr rfl))) ?_
    intro v hv
    rw [ev_cw] at hv
    cases hv
    exact ⟨_, rfl⟩
  intro u3 hk3 hl3
  -- 4. `refill_frame_state_gas()`
  refine hseqK (K := KP HJ gwJ Γ u p fs e (fld u.memory e 112)) hq ?_ ?_
  · exact hoareG_kp_refill hfs hk3
  intro u4 hk4 hl4
  -- 5. `frame_halt(perr)`
  refine hseqK (K := KP HJ gwJ Γ u p fs e (fld u.memory e 112)) hq ?_ ?_
  · exact hoareG_kp_halt hfs hk4
  intro u5 hk5 hl5
  -- 6. the tail
  obtain ⟨hJ5, Γ5, p5, hrun5, hch5, hE5, hΦ5, h5⟩ := hk5
  have hG5 := hrun5.2.2.2.2.2.1
  obtain ⟨p', hp', -⟩ := id hG5
  have hmem : (child, rec) ∈ fs := mem_getLast' (hRA fs hchL.chain)
  have hMV : MarkV u5.memory child := (hE5.1 p' hp' (child, rec) hmem).2.2.2.2.1
  have hl : u5.locals = u.locals := by rw [hl5, hl4, hl3, hl2, hl1]
  have hsv5 : KB Γe Γ5 se u5 := kb_step hG hsv (keepH_of_runT hrun5) (bkeep_of_runT hrun5)
  exact catch_tail hG5 hMV (hch5.objs (child, rec) hmem).1 hsv5 (fun q hq => hE5.1 q hq (child, rec) hmem)
    (by rw [hl]; exact hp1) hs1 (by rw [hl]; exact hp2) hs2
    (by rw [hl]; exact hch) hJ5

theorem catch_A {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop} :
    Hoare σ guestCtx P
      (.seq (callD (nm "scratch_release") [ldW (nm "child") 208])
        (.seq (callD (nm "frame_mem_release") [ldW (nm "child") 224])
          (.seq (.assign .global (nm "ev") (lv (nm "parent")))
            (.seq (.assign .global (nm "cur_cont") (lv (nm "parent_cont")))
              (.raise (nm "EvmErr") (lv (nm "perr"))))))) Q := by
  refine hoare_seqP (Rn := fun _ => True)
    (hoare_callD (funSpec_true _) fun s _ _ _ _ _ _ _ _ _ => ⟨rfl, trivial⟩) ?_
  refine hoare_seqP (Rn := fun _ => True)
    (hoare_callD (funSpec_true _) fun s _ _ _ _ _ _ _ _ _ => ⟨rfl, trivial⟩) ?_
  refine hoare_seqP (Rn := fun _ => True)
    (hoare_of_hoareG (hoareG_assignK fun s _ _ v _ _ => ⟨rfl, trivial⟩)) ?_
  refine hoare_seqP (Rn := fun _ => True)
    (hoare_of_hoareG (hoareG_assignK fun s _ _ v _ _ => ⟨rfl, trivial⟩)) ?_
  exact hoare_raise

/-- **The depth-0 catch handler ends in `(PmQ Γe se)`.** -/
theorem catch_post (hRec : D0.RecNoMsg σ) (M : Nat) (child rec : BitVec 64) :
    Hoare σ guestCtx (HEnt Γe se M child rec) d0Handler (PmQ Γe se) := by
  unfold d0Handler
  refine hoare_seqP (Rn := HEnt Γe se M child rec) ?_ ?_
  · refine hoare_ite ?_ ?_
    · exact catch_A
    · exact hoare_skip fun s _ h => ⟨rfl, h.1⟩
  · refine hoare_of_hoareG (hoareG_pt fun u hu => ?_)
    exact catch_B hRec hu

end ctch

/-! ## The depth-0 block -/

/-- The locals known to be words at the `depth0_prepare` call. -/
def XS0 : List MlS := [nm "parent_cont", nm "parent", nm "msg"]

/-- **The facts that only the depth-0 block needs**: the locals `msg`, `parent`, `parent_cont` and
the running frame's `EV_MSG` slot (`= msg`). -/
def XT (msg e0 c0 : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "msg") = some (.val (.word msg)) ∧
  s.locals.lookup (nm "parent") = some (.val (.word e0)) ∧ e0.toNat < nullMax ∧
  s.locals.lookup (nm "parent_cont") = some (.val (.word c0)) ∧ c0.toNat < nullMax ∧
  ∀ e, gword s nmEv = some e → fld s.memory e 112 = msg

def PRH (Γe : Gam) (se : State σ) (M : Nat) (child rec : BitVec 64) (msg e0 c0 : BitVec 64) (xs : List MlS)
    (s : State σ) : Prop :=
  PRL Γe se M child rec xs s ∧ XT msg e0 c0 s

theorem xt_set {msg e0 c0 : BitVec 64} {s : State σ} {n : MlS} (h1 : n ≠ nm "msg")
    (h2 : n ≠ nm "parent") (h3 : n ≠ nm "parent_cont") (h : XT msg e0 c0 s) (v : ValueHOL 64) :
    XT msg e0 c0 (setVarHOLFinite n v s) := by
  obtain ⟨a, b, b', c, c', d⟩ := h
  exact ⟨by rw [lk_set_ne s v h1]; exact a, by rw [lk_set_ne s v h2]; exact b, b',
    by rw [lk_set_ne s v h3]; exact c, c', d⟩

theorem prh_step {M : Nat} {child rec msg e0 c0 : BitVec 64} {xs : List MlS} {s st : State σ}
    {callee : Locs} (hs : PRH Γe se M child rec msg e0 c0 xs s) (hP : PIK Γe se M st)
    (hR : RootK (callEntryStateHOLFinite s callee) st)
    (hK : ∀ e, gword s nmEv = some e →
      gword st nmEv = some e ∧ fld st.memory e 112 = fld s.memory e 112) :
    PRH Γe se M child rec msg e0 c0 xs { st with locals := s.locals } := by
  obtain ⟨hprl, hm, hpa, hpa', hpc, hpc', hmem⟩ := hs
  refine ⟨prl_step hprl hP hR, hm, hpa, hpa', hpc, hpc', fun e he => ?_⟩
  obtain ⟨fs, e', c', rest, -, hev', -, -⟩ := pi_chain (pis_pi hprl.1.1)
  obtain ⟨hge', hf⟩ := hK e' hev'
  obtain rfl : e = e' := Option.some.inj (he.symm.trans hge')
  exact hf.trans (hmem _ hev')

theorem hoare_decPRH {M : Nat} {child rec msg e0 c0 : BitVec 64} {xs : List MlS} {n : MlS}
    {e : ExpHOL 64} {k : ProgHOL 64} {Q Q' : Option (PanSemResultExact 64) → State σ → Prop}
    (hn : n ≠ nm "child") (h1 : n ≠ nm "msg") (h2 : n ≠ nm "parent") (h3 : n ≠ nm "parent_cont")
    (hQ : ∀ r (s t : State σ), PRL Γe se M child rec xs s → Q' r t →
      Q r { t with locals := t.locals.resVarEq (n, s.locals.lookup n) })
    (hk : Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 (n :: xs)) k Q') :
    Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 xs) (.dec n .one e k) Q := by
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQ r s t hP.1 hq)
  subst ht
  exact ⟨prl_set hn hP.1 w, xt_set h1 h2 h3 hP.2 _⟩

theorem hoare_decCallPRH {M : Nat} {child rec msg e0 c0 : BitVec 64} {xs : List MlS} {rn f : MlS}
    {k : ProgHOL 64} {Q Q' : Option (PanSemResultExact 64) → State σ → Prop}
    {R : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : FunSpec σ guestCtx f R) (hn : rn ≠ nm "child") (h1 : rn ≠ nm "msg")
    (h2 : rn ≠ nm "parent") (h3 : rn ≠ nm "parent_cont")
    (hstep : ∀ (u : State σ) (callee : Locs) (v : ValueHOL 64) (st : State σ), RS Γe se M child rec u →
      R [] (callEntryStateHOLFinite u callee) (.returned v) st →
      PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st ∧
        ∀ e, gword u nmEv = some e → gword st nmEv = some e ∧ fld st.memory e 112 = fld u.memory e 112)
    (hQ : ∀ r (s t : State σ), PRL Γe se M child rec xs s → Q' r t →
      Q r { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })
    (hk : Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 (rn :: xs)) k Q') :
    Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 xs) (.decCall rn .one f [] k) Q := by
  refine hoare_decCallS hf fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain rfl := evs_zero hvs
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  obtain ⟨hPI, hRt, hK⟩ := hstep s callee _ st hP.1.1 hR
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQ r s t hP.1 hq)
  subst ht
  have h' := prh_step hP hPI hRt hK
  exact ⟨prl_set hn h'.1 w, xt_set h1 h2 h3 h'.2 _⟩

/-- `depth0_prepare`'s value relation, with `Ext` and the slot-112 / `ev` keep fact. -/
def D0RH (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  Good (some r) → ¬ Abortive r → ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s →
    (vs = [] ∧ PreInvX guestC tEV tCK GP GR M vs s Γ) →
    ∃ Γ', G guestC (Hooks.guestHooksR (σ := σ)) Γ' t ∧
      ((QProX guestC tEV tCK GP GR vs s Γ r t Γ' ∧ (∀ v, r = .returned v → JrNZ t) ∧
        (∀ v, r = .exception nmEvmErr v → JrNZ t)) ∧
        (∀ v, r = .returned v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, r = .exception nmEvmErr v → KeepH guestC Γ Γ' s t) ∧
        (∀ v, (r = .returned v ∨ r = .exception nmEvmErr v) → ∀ e', gword s nmEv = some e' →
          gword t nmEv = some e' ∧ fld t.memory e' 112 = fld s.memory e' 112) ∧
        (∀ v, r = .returned v → BKeep guestC Γ s t) ∧
        (∀ v, r = .exception nmEvmErr v → BKeep guestC Γ s t))

theorem d0H_spec (hD0 : D0.D0SpecH σ) (M : Nat) :
    FunSpec σ guestCtx (nm "depth0_prepare") (D0RH M) := hD0 M

theorem d0_rootH {M : Nat} {u st : State σ} {callee : Locs} {v : ValueHOL 64} (hP : PIK Γe se M u)
    (h : D0RH M [] (callEntryStateHOLFinite u callee) (.returned v) st) :
    PIK Γe se M st ∧ RootK (callEntryStateHOLFinite u callee) st := by
  obtain ⟨Γ, p, hG, hp, hpre, hsv⟩ := pis_entry hP callee
  obtain ⟨Γ', hG', hq, hext, -, -, hbk, -⟩ := h (by simp [Good]) (by simp [Abortive]) Γ hG ⟨rfl, hpre⟩
  obtain ⟨p', hp', -⟩ := id hG'
  exact ⟨⟨Γ', p', hG', hp', d0_ret hpre hq, kb_step hG hsv (hext v rfl) (hbk v rfl)⟩, (hq.1.1 v rfl).2.2⟩

section ctch2
open InitECandidate.Solver.MemSafe.D0

/-- The handler's entry facts from `PRH`, once `perr` is set. -/
theorem hent_of_prh {M : Nat} {child rec msg e0 c0 : BitVec 64} {s : State σ}
    (hs : PRH Γe se M child rec msg e0 c0
      (nm "perr" :: nm "prep_reservoir" :: nm "prep_snapshot" :: XS0) s) (v : ValueHOL 64) :
    HEnt Γe se M child rec (setVarHOLFinite (nm "perr") v s) := by
  obtain ⟨⟨⟨hpi, hra, hl⟩, hx⟩, hm, hpa, hpa', hpc, hpc', hmem⟩ := hs
  obtain ⟨w1, hw1⟩ := hx (nm "prep_snapshot") (by simp)
  obtain ⟨w2, hw2⟩ := hx (nm "prep_reservoir") (by simp)
  refine ⟨pis_set hpi _ _, ra_congr (s := s) rfl rfl hra, ?_, ⟨msg, ?_, hmem⟩, ⟨w1, ?_⟩, ⟨w2, ?_⟩,
    ⟨e0, ?_, hpa'⟩, ⟨c0, ?_, hpc'⟩⟩
  · rw [lk_set_ne s _ (by decide)]; exact hl
  · rw [lk_set_ne s _ (by decide)]; exact hm
  · rw [lk_set_ne s _ (by decide)]; exact hw1
  · rw [lk_set_ne s _ (by decide)]; exact hw2
  · rw [lk_set_ne s _ (by decide)]; exact hpa
  · rw [lk_set_ne s _ (by decide)]; exact hpc

theorem d0block_post {M : Nat} {child rec msg e0 c0 : BitVec 64} (hRec : D0.RecNoMsg σ)
    (hD0 : D0SpecH σ) :
    Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 XS0) d0Block (PostR Γe se M child rec XS0) := by
  unfold d0Block
  refine hoare_decCallPRH (Q' := PostR Γe se M child rec (nm "prep_snapshot" :: XS0))
    (snap_spec) (by decide) (by decide) (by decide) (by decide)
    (fun u callee v st hu h => snap_rootK hu.1 h)
    (fun r s t hs h => postR_res (by decide) hs h) ?_
  refine hoare_decPRH (Q' := PostR Γe se M child rec (nm "prep_reservoir" :: nm "prep_snapshot" :: XS0))
    (by decide) (by decide) (by decide) (by decide)
    (fun r s t hs h => postR_res (by decide) hs h) ?_
  refine hoare_decPRH
    (Q' := PostR Γe se M child rec (nm "perr" :: nm "prep_reservoir" :: nm "prep_snapshot" :: XS0))
    (by decide) (by decide) (by decide) (by decide)
    (fun r s t hs h => postR_res (by decide) hs h) ?_
  refine hoare_callH (tgt := none) (d0H_spec hD0 M) ?_ ?_
  · intro s hs hP vs hvs callee v st hR hst
    obtain rfl := evs_zero hvs
    obtain ⟨hPI, hRt⟩ := d0_rootH hP.1.1.1 hR
    exact ⟨fun _ => ⟨fun _ => prl_step hP.1 hPI hRt, fun v h => by cases h⟩, fun k x h => by cases h⟩
  · intro s hs hP vs hvs callee v st hR hst
    obtain rfl := evs_zero hvs
    have hgood : Good (some (PanSemResultExact.exception nmEvmErr v)) := by simp [Good]
    obtain ⟨Γ0, p0, hG0, hp0, hpre0, hsv0⟩ := pis_entry hP.1.1.1 callee
    obtain ⟨Γ', hG', hq, -, hext, hK, -, hbk⟩ := hR hgood (not_abortive_evm v) Γ0 hG0 ⟨rfl, hpre0⟩
    obtain ⟨hx, hΦ, hkR⟩ := hq.1.2 v rfl
    have hJ := hq.2.2 v rfl
    obtain ⟨p', hp', -⟩ := id hG'
    have hPI : PIK Γe se M st :=
      ⟨Γ', p', hG', hp', ⟨⟨hx, Nat.le_trans hΦ hpre0.1.2⟩, hJ⟩, kb_step hG0 hsv0 (hext v rfl) (hbk v rfl)⟩
    have hK' : ∀ e, gword s nmEv = some e →
        gword st nmEv = some e ∧ fld st.memory e 112 = fld s.memory e 112 := fun e he =>
      hK v (Or.inr rfl) e ((gword_congr (s := s) (s' := callEntryStateHOLFinite s callee) rfl nmEv).trans he)
    have hP' := prh_step hP hPI hkR hK'
    intro t ht hPt htr
    subst hPt
    exact ⟨fun hn => absurd hn (d0Handler_nn _),
      catch_post hRec M child rec _ ht (hent_of_prh hP' v) htr⟩

end ctch2

/-! ## The body after `frame_open` -/

theorem k2_post {M : Nat} {child rec : BitVec 64}
    (hfs : FunSpec σ guestCtx (nm "frame_start") (FsR M))
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    Hoare σ guestCtx (PRL Γe se M child rec []) pmK2 (PmQ Γe se) := by
  unfold pmK2
  refine hoare_skipSeq ?_
  exact hoare_decCallPRL (Q' := (PmQ Γe se)) snap_spec (by decide)
    (fun u callee v st hu h => snap_root hu.1 h) (fun r s t _ h => pmQ_loc h _) (k3_post hfs hrf)

theorem k1_post {M : Nat} {child rec msg e0 c0 : BitVec 64} (hRec : D0.RecNoMsg σ)
    (hD0 : D0.D0SpecH σ)
    (hfs : FunSpec σ guestCtx (nm "frame_start") (FsR M))
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    Hoare σ guestCtx (PRH Γe se M child rec msg e0 c0 XS0) pmK1 (PmQ Γe se) := by
  unfold pmK1
  refine hoare_skipSeq ?_
  refine hoare_seqD (Rn := RS Γe se M child rec) ?_ ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_conseq (d0block_post hRec hD0) (fun s _ h => h.1) (fun r t _ _ h => ?_)
      by_cases hr : r = none
      · exact Or.inl ⟨hr, (h.1 hr).1⟩
      · exact Or.inr ⟨hr, h.2⟩
    · exact hoare_skip fun s _ h => Or.inl ⟨rfl, h.1.1.1⟩
  · exact hoare_pre (k2_post hfs hrf) (fun s _ h => ⟨h, fun x hx => absurd hx (by simp)⟩)

/-! ## The whole body -/

/-- The entry facts plus some locals known to be words. -/
def P0L (Γe : Gam) (se : State σ) (M : Nat) (msg : BitVec 64) (xs : List MlS) (s : State σ) : Prop :=
  P0G Γe se M msg s ∧ ∀ x ∈ xs, ∃ w : BitVec 64, s.locals.lookup x = some (.val (.word w))

theorem hoare_decP0 {M : Nat} {msg : BitVec 64} {xs : List MlS} {n : MlS} {e : ExpHOL 64}
    {k : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop} (hn : n ≠ nm "msg")
    (hQ : ∀ r (t : State σ) l, Q r t → Q r { t with locals := l })
    (hk : Hoare σ guestCtx (P0L Γe se M msg (n :: xs)) k Q) :
    Hoare σ guestCtx (P0L Γe se M msg xs) (.dec n .one e k) Q := by
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one hsh
  refine hoare_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => hQ r t _ hq)
  subst ht
  refine ⟨p0g_set hP.1 hn _, fun x hxm => ?_⟩
  by_cases h : x = n
  · subst h; exact ⟨w, lk_set_self _ _ _⟩
  · have hxs : x ∈ xs := by
      rcases List.mem_cons.mp hxm with rfl | h'
      · exact absurd rfl h
      · exact h'
    rw [lk_set_ne s _ (Ne.symm h)]
    exact hP.2 x hxs

theorem ev_gw {s : State σ} {g : MlS} {w : BitVec 64} (h : gword s g = some w) :
    ev s (gv g) = some (.val (.word w)) := glk_of_gword h

/-- `P0` and the local `parent` holding `ev`. -/
def PA (Γe : Gam) (se : State σ) (M : Nat) (msg e0 : BitVec 64) (s : State σ) : Prop :=
  P0G Γe se M msg s ∧ s.locals.lookup (nm "parent") = some (.val (.word e0)) ∧ e0.toNat < nullMax

/-- `PA` and the local `parent_cont` holding `cur_cont`. -/
def PB (Γe : Gam) (se : State σ) (M : Nat) (msg e0 c0 : BitVec 64) (s : State σ) : Prop :=
  PA Γe se M msg e0 s ∧ s.locals.lookup (nm "parent_cont") = some (.val (.word c0)) ∧ c0.toNat < nullMax

/-- **`process_message`'s body**, from the entry facts: on a return, `child`'s marks are valid, `G`
holds and `ev` / `cur_cont` are null. -/
theorem pm_hoare {M : Nat} {msg : BitVec 64} (hRec : D0.RecNoMsg σ) (hD0 : D0.D0SpecH σ)
    (hfs : FunSpec σ guestCtx (nm "frame_start") (FsR M))
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    Hoare σ guestCtx (P0G Γe se M msg) pmBody (PmQ Γe se) := by
  unfold pmBody
  refine hoare_raiseGuard' ?_
  refine hoare_skipSeq ?_
  refine hoare_pre (P := P0G Γe se M msg) ?_ (fun s _ h => h.1)
  -- `var parent = ev`
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨p, hG, hp, hf, hl, -⟩ := id hP
  obtain ⟨-, -, ⟨e0, he0, he0s⟩, -⟩ := hf
  obtain rfl : v = .val (.word e0) := Option.some.inj (hv.symm.trans (ev_gw he0))
  refine hoare_conseq (P := PA Γe se M msg e0) ?_ (fun t _ ht => ?_) (fun r t _ _ hq => pmQ_loc hq _)
  swap
  · subst ht
    exact ⟨p0g_set hP (by decide) _, lk_set_self _ _ _, he0s⟩
  -- `var parent_cont = cur_cont`
  refine hoare_dec fun s hs hP v hv hsh => ?_
  obtain ⟨hP0, hpar, hpar'⟩ := hP
  obtain ⟨p, hG, hp, hf, hl, -⟩ := id hP0
  obtain ⟨-, -, -, ⟨c0, hc0, hc0s⟩, -⟩ := hf
  obtain rfl : v = .val (.word c0) := Option.some.inj (hv.symm.trans (ev_gw hc0))
  refine hoare_conseq (P := PB Γe se M msg e0 c0) ?_ (fun t _ ht => ?_) (fun r t _ _ hq => pmQ_loc hq _)
  swap
  · subst ht
    exact ⟨⟨p0g_set hP0 (by decide) _, by rw [lk_set_ne _ _ (by decide)]; exact hpar, hpar'⟩,
      lk_set_self _ _ _, hc0s⟩
  -- `var child = frame_open(msg, 0)`
  refine hoare_decCallS fo_spec fun s hs hP vs hvs callee v st hR hst hsh => ?_
  obtain ⟨⟨hP0, hpar, hpar'⟩, hcp, hcp'⟩ := hP
  obtain ⟨p, hG, hp, hf, hl, hgl⟩ := id hP0
  have hev : evs s [lv (nm "msg"), cw 0] =
      some [.val (.word msg), .val (.word (BitVec.ofNat 64 0))] :=
    evs_cons (by rw [ev_lv]; exact hl) (evs_cons (ev_cw s 0) evs_nil)
  rw [hev] at hvs
  cases hvs
  obtain ⟨child, rec, rfl, hPI, hch, hm112⟩ := pr_fo ⟨p, hG, hp, hf, hl, hgl⟩ hR
  have hPRL : PRL Γe se M child rec XS0 (setVarHOLFinite (nm "child") (.val (.word child))
      { st with locals := s.locals }) := by
    refine ⟨⟨pis_set (pis_loc hPI s.locals st.clock) _ _, ?_, lk_set_self _ _ _⟩, fun x hxm => ?_⟩
    · intro fs hfs'
      have h1 : ChainOf st fs := chainOf_congr (s := _) (s' := st) rfl rfl hfs'
      rw [chainOf_unique h1 hch]; rfl
    · simp only [XS0, List.mem_cons, List.mem_nil_iff, or_false] at hxm
      rcases hxm with rfl | rfl | rfl
      · rw [lk_set_ne _ _ (by decide)]; exact ⟨_, hcp⟩
      · rw [lk_set_ne _ _ (by decide)]; exact ⟨_, hpar⟩
      · rw [lk_set_ne _ _ (by decide)]; exact ⟨msg, hl⟩
  have hPRH : PRH Γe se M child rec msg e0 c0 XS0 (setVarHOLFinite (nm "child") (.val (.word child))
      { st with locals := s.locals }) := by
    refine ⟨hPRL, ?_, ?_, hpar', ?_, hcp', fun e he => ?_⟩
    · rw [lk_set_ne _ _ (by decide)]; exact hl
    · rw [lk_set_ne _ _ (by decide)]; exact hpar
    · rw [lk_set_ne _ _ (by decide)]; exact hcp
    · obtain ⟨e1, c1, rest1, hfs1, he1, -, -⟩ := hch
      simp only [List.cons.injEq, Prod.mk.injEq] at hfs1
      have he1' : gword st nmEv = some child := by rw [hfs1.1.1]; exact he1
      have hh : gword (setVarHOLFinite (nm "child") (.val (.word child))
          { st with locals := s.locals }) nmEv = gword st nmEv := rfl
      rw [hh, he1'] at he
      cases he
      exact hm112
  refine hoare_conseq (k1_post (child := child) (rec := rec) (msg := msg) (e0 := e0) (c0 := c0)
    hRec hD0 hfs hrf) (fun t _ ht => ?_) (fun r t _ _ hq => pmQ_loc hq _)
  subst ht
  exact hPRH

/-! ## As a `FunSpec` -/

/-- The value relation of `process_message` on a return. -/
def PmR (M : Nat) (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64)
    (t : State σ) : Prop :=
  ∀ Γ, G guestC (Hooks.guestHooksR (σ := σ)) Γ s → (∃ msg, vs = [.val (.word msg)] ∧ FoPre M msg Γ s) →
    ∀ v, r = .returned v → ∃ child, v = .val (.word child) ∧ PmFin Γ s child t

theorem pm_funSpec {M : Nat} (hRec : D0.RecNoMsg σ) (hD0 : D0.D0SpecH σ)
    (hfs : FunSpec σ guestCtx (nm "frame_start") (FsR M))
    (hrf : FunSpec σ guestCtx (nm "run_frames") (fun _ s r t => ∀ Γ,
      G guestC (Hooks.guestHooksR (σ := σ)) Γ s → PreInvX guestC tEV tCK GP GR M [] s Γ →
      ∀ v, r = .returned v → RFXK guestC (Hooks.guestHooksR (σ := σ)) tEV GP Γ s t)) :
    FunSpec σ guestCtx (nm "process_message") (PmR M) := by
  intro vs body callee rs hl s hs hloc r hr Γ hG ⟨msg, hvs, hfo⟩ v hv
  rw [guestCtx_code] at hl
  obtain ⟨rfl, -, A, rfl, -, hlk⟩ := lookupCode_one code_pm hl
  obtain rfl : A = .val (.word msg) := List.head_eq_of_cons_eq hvs
  obtain ⟨p, hp, -⟩ := id hG
  have hP : P0G Γ s M msg s := ⟨p, hG, hp, hfo, by rw [hloc]; exact hlk, rfl, rfl⟩
  have hQ := pm_hoare hRec hD0 hfs hrf s hs hP (by rw [hr]; subst hv; trivial)
  rw [hr] at hQ
  exact hQ v (by subst hv; rfl)

/-- **`process_message`'s post, from the frame lane's bundle**: `FHypsB` (the opcode handlers),
`D0SpecH`, `RecNoMsg` and `op_dispatch`'s cost (for the shape of the `run_frames` bundle). -/
theorem pm_post (hF : FHypsB σ) (hRec : D0.RecNoMsg σ) (hD0 : D0.D0SpecH σ) {M Bop : Nat} (hM : M < 2 ^ 64)
    (hop : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    FunSpec σ guestCtx (nm "process_message") (PmR M) :=
  pm_funSpec hRec hD0 (fs_spec (FHypsB.preHyps hF) M)
    (run_frames_postX
      (bundle_ofX_R (op_dispatch_jSpecB hF M hM) hop (fin_jSpec_guestR M) (fin_condCost_guestR M))
      Hooks.drvCfg_guestHooksR gt_ev gt_cur_cont
      (fun g hg => by rcases hg with rfl | rfl <;> decide)
      (fun _ _ _ _ h => h.2.2.2.2.1))

end InitECandidate.Solver.MemSafe.Entry

#print axioms InitECandidate.Solver.MemSafe.Entry.pm_hoare
#print axioms InitECandidate.Solver.MemSafe.Entry.pm_funSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_refl
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_of_same
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_trans
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_push
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_pop
#print axioms InitECandidate.Solver.MemSafe.Frames.rootK_congr
#print axioms InitECandidate.Solver.MemSafe.Frames.fin_jSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.exc_jSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.epi_jSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.gk_opStep
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_jSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.gc_sumSpecT
#print axioms InitECandidate.Solver.MemSafe.Frames.sc_sumSpecX_guest
#print axioms InitECandidate.Solver.MemSafe.Frames.pro_sumSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.start_sumSpecX
#print axioms InitECandidate.Solver.MemSafe.Frames.rfExitK
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_postX
#print axioms InitECandidate.Solver.MemSafe.Entry.snap_root
#print axioms InitECandidate.Solver.MemSafe.Entry.d0_root
#print axioms InitECandidate.Solver.MemSafe.Entry.fs_root
#print axioms InitECandidate.Solver.MemSafe.Entry.pr_fo
#print axioms InitECandidate.Solver.MemSafe.Entry.ck3_root
#print axioms InitECandidate.Solver.MemSafe.Entry.hoare_rf
#print axioms InitECandidate.Solver.MemSafe.Entry.k3_post
#print axioms InitECandidate.Solver.MemSafe.Entry.d0block_post
#print axioms InitECandidate.Solver.MemSafe.Entry.k2_post
#print axioms InitECandidate.Solver.MemSafe.Entry.k1_post
#print axioms InitECandidate.Solver.MemSafe.Entry.pm_hoare
#print axioms InitECandidate.Solver.MemSafe.Entry.pm_funSpec
#print axioms InitECandidate.Solver.MemSafe.Entry.pm_post
#print axioms InitECandidate.Solver.MemSafe.Entry.catch_post
#print axioms InitECandidate.Solver.MemSafe.Entry.hoareG_kp_refill
#print axioms InitECandidate.Solver.MemSafe.Entry.hoareG_kp_halt
