import InitECandidate.Solver.MemSafe.Frames.FinDefs
import InitECandidate.Solver.MemSafe.Frames.LogGen

/-!
# `finish_child`: the parent-side invariant `FinB` and its step lemma

After the switch (`ev = e'`, `cur_cont = c'`), until the release, `finish_child` runs callees on
the parent `e'` while the child `(e, c)` is still allocated. `FinB` records, relative to the
state `sw` before the switch: `G`, the frame records' cells (unchanged except the parent's gas,
stack pointer and returndata slots), the child's release invariant `MarkOK` for its marks, the
surviving frames, and the chain facts of the tail.

**`finB_step`**: a callee whose summary core writes, among `prot` cells, only the parent's slots
`ks` (avoiding its stack / memory / running slots) and cells outside every record, and keeps
`frame_mem_ptr`, keeps `FinB`.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The parent's slots `finish_child`'s callees leave alone (stack, memory, running, stack
capacity). -/
def parKeep : List Nat := [1, 3, 4, 5, 13, 29]

/-- **The parent-side invariant of `finish_child`.** -/
structure FinB (C : Cfg) (H : Hooks σ) (tEV tCK : Nat) (P : Gam → Mem → Ptrs → Frame → Prop)
    (R : Gam → Mem → Frame → Frame → Prop) (sw : State σ) (e c e' c' : BitVec 64)
    (rest : List Frame) (Γu : Gam) (u : State σ) : Prop where
  G : G C H Γu u
  ev : gword u nmEv = some e'
  cc : gword u nmCC = some c'
  ck : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ j, j < 13 →
    fld u.memory f.2 (8 * j) = fld sw.memory f.2 (8 * j)
  evr : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots, fld u.memory f.1 (8 * j) = fld sw.memory f.1 (8 * j)
  evp : ∀ j ∈ parKeep, fld u.memory e' (8 * j) = fld sw.memory e' (8 * j)
  objs : ∀ f ∈ (e, c) :: (e', c') :: rest,
    (∃ o ∈ Γu, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γu, o.base = f.2 ∧ o.ty = tCK)
  nodupE : (((e, c) :: (e', c') :: rest).map Prod.fst).Nodup
  mark : MarkOK C tEV Γu u (mkOf sw.memory c) (mmOf sw.memory c)
  mmlt : ∀ p, ptrsOf u = some p → mmOf sw.memory c < p.fp
  above : ∀ f ∈ (e', c') :: rest, FrameAbove C tEV tCK Γu (mkOf sw.memory c) (mmOf sw.memory c) f
  tail : ∀ l1 ch pa l2, (e', c') :: rest = l1 ++ ch :: pa :: l2 →
    ChildMarks C tEV tCK Γu u l1 ch pa l2
  rd : ∀ f ∈ rest, RetOK C Γu u.memory f.1
  /-- The journal global stays non-null. -/
  jr : JrNZ u
  /-- The chain extension of the child and the frames below (frames7). -/
  x : ChainE P R Γu u ((e, c) :: (e', c') :: rest)

theorem finB_congr {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u t : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) (hm : t.memory = u.memory)
    (hg : t.globals = u.globals) (hd : t.memaddrs = u.memaddrs) (hbe : t.be = u.be) :
    FinB C H tEV tCK P R sw e c e' c' rest Γu t := by
  have hp : ptrsOf t = ptrsOf u := ptrsOf_congr hg
  refine ⟨G_congr hH hm hg hd hbe h.G, by rw [gword_congr hg]; exact h.ev,
    by rw [gword_congr hg]; exact h.cc, by rw [hm]; exact h.ck, by rw [hm]; exact h.evr,
    by rw [hm]; exact h.evp, h.objs, h.nodupE, markOK_congr hm hp h.mark,
    fun q hq => h.mmlt q (hp ▸ hq), h.above, fun l1 ch pa l2 hfs => ?_, by rw [hm]; exact h.rd,
    jrNZ_congr hg h.jr, chainE_congr hm hg h.x⟩
  obtain ⟨a1, a2, a3, a4, a5⟩ := h.tail l1 ch pa l2 hfs
  unfold ChildMarks at *
  rw [hm]
  exact ⟨markOK_congr hm hp a1, a2, a3, a4, fun q hq => a5 q (hp ▸ hq)⟩

theorem finB_locals {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) (l : Locs) :
    FinB C H tEV tCK P R sw e c e' c' rest Γu { u with locals := l } :=
  finB_congr hH h rfl rfl rfl rfl

theorem finB_entry {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) (callee : Locs) :
    FinB C H tEV tCK P R sw e c e' c' rest Γu (callEntryStateHOLFinite u callee) :=
  finB_congr hH h rfl rfl rfl rfl

theorem mem_tail3 {f : Frame} {x y : Frame} {l : List Frame} (h : f ∈ y :: l) : f ∈ x :: y :: l :=
  List.mem_cons_of_mem _ h

/-- **A callee step keeps `FinB`.** -/
theorem finB_step' {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ} {Γ' : Gam} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γu a ∧ PWtopM tEV tCK ks vs u Γu a) Γu u vs r t Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a) (hfp : pt.fp = pu.fp)
    (hpar : ∀ j ∈ parKeep, fld t.memory e' (8 * j) = fld u.memory e' (8 * j)) :
    FinB C H tEV tCK P R sw e c e' c' rest Γ' t ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs u Γu a → t.memory a = u.memory a) := by
  have hpkM := sumCore_prot hc h.G hac
  have hpk := keep_pwtop hpkM
  have hjr := jrNZ_sumCore hJ hgJ hc h.jr
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -, hpg, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := h.G
  obtain rfl : pu = q := Option.some.inj (hpu.symm.trans hq)
  have hG'c := hG'
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : pt = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γu, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  have hev' : gword t nmEv = some e' := by
    unfold gword; rw [hpg _ hF.pgEv hgw.1]; exact h.ev
  have hcc' : gword t nmCC = some c' := by
    unfold gword; rw [hpg _ hF.pgCC hgw.2]; exact h.cc
  -- slot facts for the records
  have hEV : ∀ o ∈ Γu, o.ty = tEV → ∀ j ∈ evProtSlots, (o.base = e' → j ∉ ks) →
      fld t.memory o.base (8 * j) = fld u.memory o.base (8 * j) := by
    intro o ho hot j hj hnr
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    refine frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.evProt j hj) fun heb => hnr ?_
    rw [h.ev] at heb; exact (Option.some.inj heb).symm
  have hCK : ∀ o ∈ Γu, o.ty = tCK → ∀ j, j < 13 →
      fld t.memory o.base (8 * j) = fld u.memory o.base (8 * j) := by
    intro o ho hot j hj
    have hsz := ck_size hF hL ho hot
    refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
    exfalso
    rw [h.ev] at heb
    obtain ⟨o', ho', hob', hot'⟩ := (h.objs (e', c') (by simp)).1
    exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
      ((Option.some.inj heb).symm.trans hob'.symm)
  have hne : ∀ f ∈ (e, c) :: rest, f.1 ≠ e' := by
    intro f hf he
    have hnd := h.nodupE
    simp only [List.map_cons, List.nodup_cons, List.mem_cons, not_or] at hnd
    rcases List.mem_cons.mp hf with rfl | hf'
    · exact hnd.1.1 he
    · exact hnd.2.1 (he ▸ List.mem_map_of_mem hf')
  -- the record cells at `t`, by frame
  have hck' : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ j, j < 13 →
      fld t.memory f.2 (8 * j) = fld u.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := (h.objs f hf).2
    rw [← hob]; exact hCK o ho hot j hj
  have hevr' : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots,
      fld t.memory f.1 (8 * j) = fld u.memory f.1 (8 * j) := by
    intro f hf j hj
    have hf3 : f ∈ (e, c) :: (e', c') :: rest := by
      rcases List.mem_cons.mp hf with rfl | hf'
      · simp
      · exact mem_tail3 (List.mem_cons_of_mem _ hf')
    obtain ⟨o, ho, hob, hot⟩ := (h.objs f hf3).1
    rw [← hob]; exact hEV o ho hot j hj fun hb => absurd (hob.symm.trans hb) (hne f hf)
  have hevp' := hpar
  have h13 : ∀ x ∈ Γu, x.ty = tEV →
      fld t.memory x.base 8 = fld u.memory x.base 8 ∧ fld t.memory x.base 24 = fld u.memory x.base 24 := by
    intro x hx hxt
    by_cases hxe : x.base = e'
    · rw [hxe]; exact ⟨hpar 1 (by simp [parKeep]), hpar 3 (by simp [parKeep])⟩
    · exact ⟨hEV x hx hxt 1 (by simp [evProtSlots]) (fun hb => absurd hb hxe),
        hEV x hx hxt 3 (by simp [evProtSlots]) (fun hb => absurd hb hxe)⟩
  have hmm := h.mmlt pu hpu
  have hmf : mmOf sw.memory c ≤ pu.fp := le_of_lt hmm
  have hfm : mmOf sw.memory c < pu.fp ∨ ∃ y ∈ Γ', y.lo = mmOf sw.memory c := Or.inl hmm
  have hobjT : ∀ f ∈ (e', c') :: rest,
      (∃ o ∈ Γu, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γu, o.base = f.2 ∧ o.ty = tCK) :=
    fun f hf => h.objs f (mem_tail3 hf)
  have hckT : ∀ f ∈ (e', c') :: rest, ∀ k ∈ ckChainSlots,
      fld t.memory f.2 k = fld u.memory f.2 k := by
    intro f hf k hk
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
      ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact hck' f (mem_tail3 hf) 0 (by omega)
    · exact hck' f (mem_tail3 hf) 1 (by omega)
    · exact hck' f (mem_tail3 hf) 2 (by omega)
    · exact hck' f (mem_tail3 hf) 6 (by omega)
    · exact hck' f (mem_tail3 hf) 7 (by omega)
    · exact hck' f (mem_tail3 hf) 9 (by omega)
    · exact hck' f (mem_tail3 hf) 10 (by omega)
  have hst : GStep C tEV Γu Γ' u t e' :=
    ⟨pu, pt, hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf, fun x hx hxt _ => h13 x hx hxt⟩
  have hxk : ∀ f ∈ (e, c) :: (e', c') :: rest, XKeep C Γu u.memory t.memory f :=
    fun f hf => xKeep_of hord hL hevX hksX hesz hF.evSz hpkM (h.objs f hf).1
  have hckA : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ k ∈ ckXSlots,
      fld t.memory f.2 k = fld u.memory f.2 k :=
    fun f hf => ckX_of13 (hck' f hf)
  refine ⟨⟨hG'c, hev', hcc', fun f hf j hj => (hck' f hf j hj).trans (h.ck f hf j hj),
    fun f hf j hj => (hevr' f hf j hj).trans (h.evr f hf j hj),
    fun j hj => (hevp' j hj).trans (h.evp j hj), ?_, h.nodupE, ?_, ?_, ?_, ?_, ?_, hjr,
    chainE_step hX hst hxk hckA h.x⟩, hpk⟩
  · intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := h.objs f hf
    obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
    obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
    exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · exact markOK_step hpu hpt hord hord' hL hL' hmo hext hnf hfm (fun x hx hxt _ => h13 x hx hxt)
      h.mark
  · intro q hq
    obtain rfl := ptrs_some hpt hq
    exact lt_of_lt_of_le hmm hmo.2.1
  · intro f hf
    exact frameAbove_step hord hord' hL hL' hmo hext hnf hmf hfm (hobjT f hf).1 (hobjT f hf).2
      (h.above f hf)
  · intro l1 ch pa l2 hfs
    exact childMarks_keep hobjT hckT (top := e')
      (fun f hf => by simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf])
      hst hfs (h.tail l1 ch pa l2 hfs)
  · intro f hf
    have hf2 : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
    exact retOK_ext hext (hevr' f hf2 18 (by simp [evProtSlots]))
      (hevr' f hf2 27 (by simp [evProtSlots])) (h.rd f hf)

/-- **A log writer's step keeps `FinB`** (package L): the footprint is `PWtopL`, and the lists
afterwards are described by `LogSub`. -/
theorem finB_stepL {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hLog : LogStepOK σ C P R) (hLst : ∀ {Γ' : Gam} {t : State σ}, G C H Γ' t → LstArrAt Γ' t.memory)
    (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ} {Γ' : Gam} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γu a ∧ PWtopL tEV tCK ks vs u Γu a) Γu u vs r t Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a) (hfp : pt.fp = pu.fp)
    (hpar : ∀ j ∈ parKeep, fld t.memory e' (8 * j) = fld u.memory e' (8 * j))
    (hSub : LogSub Γu Γ' pt.hp u.memory t.memory) :
    FinB C H tEV tCK P R sw e c e' c' rest Γ' t ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs u Γu a → t.memory a = u.memory a) := by
  have hpkM := sumCore_prot hc h.G hac
  have hpk : ∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs u Γu a → t.memory a = u.memory a :=
    fun a hp hn => hpkM a hp fun h' => hn h'.1
  have hjr := jrNZ_sumCore hJ hgJ hc h.jr
  obtain ⟨hpu, hpt, hmo, hext, hnf, hG', -, hpg, -⟩ := hc
  obtain ⟨q, hq, hord, hL, -⟩ := h.G
  obtain rfl : pu = q := Option.some.inj (hpu.symm.trans hq)
  have hG'c := hG'
  obtain ⟨q', hq', hord', hL', -⟩ := hG'
  obtain rfl : pt = q' := Option.some.inj (hpt.symm.trans hq')
  have hesz : ∀ x ∈ Γu, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := hks k hk; omega
  have hev' : gword t nmEv = some e' := by
    unfold gword; rw [hpg _ hF.pgEv hgw.1]; exact h.ev
  have hcc' : gword t nmCC = some c' := by
    unfold gword; rw [hpg _ hF.pgCC hgw.2]; exact h.cc
  -- slot facts for the records
  have hEV : ∀ o ∈ Γu, o.ty = tEV → ∀ j ∈ evProtSlots, (o.base = e' → j ∉ ks) →
      fld t.memory o.base (8 * j) = fld u.memory o.base (8 * j) := by
    intro o ho hot j hj hnr
    have hsz := ev_size hF hL ho hot
    have hj' : j ≤ 29 := by simp [evProtSlots] at hj; omega
    refine frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.evProt j hj) fun heb => hnr ?_
    rw [h.ev] at heb; exact (Option.some.inj heb).symm
  have hCK : ∀ o ∈ Γu, o.ty = tCK → ∀ j, j < 13 →
      fld t.memory o.base (8 * j) = fld u.memory o.base (8 * j) := by
    intro o ho hot j hj
    have hsz := ck_size hF hL ho hot
    refine frame_keep hord hL hesz hpk ho (Or.inr hot) (by unfold Obj.HasSlot; omega)
      (by rw [hot]; exact hF.ckProt j hj) fun heb => ?_
    exfalso
    rw [h.ev] at heb
    obtain ⟨o', ho', hob', hot'⟩ := (h.objs (e', c') (by simp)).1
    exact base_ne_of_ty hL ho ho' (by rw [hot, hot']; exact hF.ne.symm)
      ((Option.some.inj heb).symm.trans hob'.symm)
  have hne : ∀ f ∈ (e, c) :: rest, f.1 ≠ e' := by
    intro f hf he
    have hnd := h.nodupE
    simp only [List.map_cons, List.nodup_cons, List.mem_cons, not_or] at hnd
    rcases List.mem_cons.mp hf with rfl | hf'
    · exact hnd.1.1 he
    · exact hnd.2.1 (he ▸ List.mem_map_of_mem hf')
  -- the record cells at `t`, by frame
  have hck' : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ j, j < 13 →
      fld t.memory f.2 (8 * j) = fld u.memory f.2 (8 * j) := by
    intro f hf j hj
    obtain ⟨o, ho, hob, hot⟩ := (h.objs f hf).2
    rw [← hob]; exact hCK o ho hot j hj
  have hevr' : ∀ f ∈ (e, c) :: rest, ∀ j ∈ evProtSlots,
      fld t.memory f.1 (8 * j) = fld u.memory f.1 (8 * j) := by
    intro f hf j hj
    have hf3 : f ∈ (e, c) :: (e', c') :: rest := by
      rcases List.mem_cons.mp hf with rfl | hf'
      · simp
      · exact mem_tail3 (List.mem_cons_of_mem _ hf')
    obtain ⟨o, ho, hob, hot⟩ := (h.objs f hf3).1
    rw [← hob]; exact hEV o ho hot j hj fun hb => absurd (hob.symm.trans hb) (hne f hf)
  have hevp' := hpar
  have h13 : ∀ x ∈ Γu, x.ty = tEV →
      fld t.memory x.base 8 = fld u.memory x.base 8 ∧ fld t.memory x.base 24 = fld u.memory x.base 24 := by
    intro x hx hxt
    by_cases hxe : x.base = e'
    · rw [hxe]; exact ⟨hpar 1 (by simp [parKeep]), hpar 3 (by simp [parKeep])⟩
    · exact ⟨hEV x hx hxt 1 (by simp [evProtSlots]) (fun hb => absurd hb hxe),
        hEV x hx hxt 3 (by simp [evProtSlots]) (fun hb => absurd hb hxe)⟩
  have hmm := h.mmlt pu hpu
  have hmf : mmOf sw.memory c ≤ pu.fp := le_of_lt hmm
  have hfm : mmOf sw.memory c < pu.fp ∨ ∃ y ∈ Γ', y.lo = mmOf sw.memory c := Or.inl hmm
  have hobjT : ∀ f ∈ (e', c') :: rest,
      (∃ o ∈ Γu, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γu, o.base = f.2 ∧ o.ty = tCK) :=
    fun f hf => h.objs f (mem_tail3 hf)
  have hckT : ∀ f ∈ (e', c') :: rest, ∀ k ∈ ckChainSlots,
      fld t.memory f.2 k = fld u.memory f.2 k := by
    intro f hf k hk
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
      ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact hck' f (mem_tail3 hf) 0 (by omega)
    · exact hck' f (mem_tail3 hf) 1 (by omega)
    · exact hck' f (mem_tail3 hf) 2 (by omega)
    · exact hck' f (mem_tail3 hf) 6 (by omega)
    · exact hck' f (mem_tail3 hf) 7 (by omega)
    · exact hck' f (mem_tail3 hf) 9 (by omega)
    · exact hck' f (mem_tail3 hf) 10 (by omega)
  have hst : GStep C tEV Γu Γ' u t e' :=
    ⟨pu, pt, hpu, hpt, hord, hord', hL, hL', hmo, hext, hnf, fun x hx hxt _ => h13 x hx hxt⟩
  have hxk : ∀ f ∈ (e, c) :: (e', c') :: rest, XKeepW C Γu u.memory t.memory f :=
    fun f hf => xKeepW_of_pw hord hL hevX hksX hesz hF.evSz hpkM (h.objs f hf).1
  have hckA : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ k ∈ ckXSlots,
      fld t.memory f.2 k = fld u.memory f.2 k :=
    fun f hf => ckX_of13 (hck' f hf)
  refine ⟨⟨hG'c, hev', hcc', fun f hf j hj => (hck' f hf j hj).trans (h.ck f hf j hj),
    fun f hf j hj => (hevr' f hf j hj).trans (h.evr f hf j hj),
    fun j hj => (hevp' j hj).trans (h.evp j hj), ?_, h.nodupE, ?_, ?_, ?_, ?_, ?_, hjr,
    hLog hpt hpu hord hord' hL' hmo hext hnf hxk hckA (hLst hG'c) hSub h.x⟩, hpk⟩
  · intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := h.objs f hf
    obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
    obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
    exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · exact markOK_step hpu hpt hord hord' hL hL' hmo hext hnf hfm (fun x hx hxt _ => h13 x hx hxt)
      h.mark
  · intro q hq
    obtain rfl := ptrs_some hpt hq
    exact lt_of_lt_of_le hmm hmo.2.1
  · intro f hf
    exact frameAbove_step hord hord' hL hL' hmo hext hnf hmf hfm (hobjT f hf).1 (hobjT f hf).2
      (h.above f hf)
  · intro l1 ch pa l2 hfs
    exact childMarks_keep hobjT hckT (top := e')
      (fun f hf => by simp only [List.head?_cons, Option.mem_def, Option.some.injEq] at hf; rw [← hf])
      hst hfs (h.tail l1 ch pa l2 hfs)
  · intro f hf
    have hf2 : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
    exact retOK_ext hext (hevr' f hf2 18 (by simp [evProtSlots]))
      (hevr' f hf2 27 (by simp [evProtSlots])) (h.rd f hf)


/-- **A callee step keeps `FinB`** (the callee leaves the parent's `parKeep` slots alone). -/
theorem finB_step {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop} (hF : FrameCfg C H tEV tCK)
    (hX : XCfg C tEV tCK P R) (hevX : ∀ j ∈ evXSlots, (C.ty tEV).slot j = .prot)
    {sw : State σ} {e c e' c' : BitVec 64} {rest : List Frame} {Γu : Gam} {u : State σ}
    (h : FinB C H tEV tCK P R sw e c e' c' rest Γu u) {sg : Sig} {ks : List Nat}
    (hks : ∀ k ∈ ks, k ∉ parKeep ∧ 8 * k + 8 ≤ 280) (hksX : ∀ k ∈ ks, k ∉ evXSlots)
    (hgw : nmEv ∉ sg.gw ∧ nmCC ∉ sg.gw) (hJ : JrPG C) (hgJ : JrOut (sg.gw))
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {t : State σ} {Γ' : Gam} {pu pt : Ptrs}
    (hc : SumCore C H sg (fun a => ProtCell C Γu a ∧ PWtopM tEV tCK ks vs u Γu a) Γu u vs r t Γ'
      pu pt)
    (hac : ∀ a, ArgCells sg.params vs a → ¬ ProtCell C Γu a) (hfp : pt.fp = pu.fp) :
    FinB C H tEV tCK P R sw e c e' c' rest Γ' t ∧
      (∀ a, ProtCell C Γu a → ¬ PWtop tEV tCK ks vs u Γu a → t.memory a = u.memory a) := by
  refine finB_step' hF hX hevX h (fun k hk => (hks k hk).2) hksX hgw hJ hgJ hc hac hfp fun j hj => ?_
  have hpk := keep_pwtop (sumCore_prot hc h.G hac)
  obtain ⟨q, hq, hord, hL, -⟩ := h.G
  obtain ⟨o, ho, hob, hot⟩ := (h.objs (e', c') (by simp)).1
  have hob' : o.base = e' := hob
  have hsz := ev_size hF hL ho hot
  have hesz : ∀ x ∈ Γu, x.ty = tEV → ∀ k ∈ ks, x.HasSlot k := by
    intro x hx hxt k hk
    have := ev_size hF hL hx hxt
    unfold Obj.HasSlot; have := (hks k hk).2; omega
  have hj' : j ∈ evProtSlots ∧ j ≤ 29 := by
    simp only [parKeep, List.mem_cons, List.mem_nil_iff, or_false] at hj
    rcases hj with rfl | rfl | rfl | rfl | rfl | rfl <;> simp [evProtSlots]
  rw [← hob']
  exact frame_keep hord hL hesz hpk ho (Or.inl hot) (by unfold Obj.HasSlot; omega)
    (by rw [hot]; exact hF.evProt j hj'.1) fun _ hk => (hks j hk).1 hj

end InitECandidate.Solver.MemSafe.Frames
