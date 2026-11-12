import InitECandidate.Solver.MemSafe.Frames.Marks
import InitECandidate.Solver.MemSafe.Frames.Ctor

/-!
# Transporting the chain

* `ChainKeep`: the cells `Chain` reads are unchanged; `GStep`: a step of the typed heap;
  `chainL_keep` transports `ChainL` (to an extension of `Γ`), `wsum_keep` the weights.
* `childMarks_keep` / `childMarks_push`: the release facts of the child frames.
* `ev_obj` / `ck_obj`: the records of a chain frame are objects of `Γ`.
-/

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Transporting the chain -/

theorem ev_obj {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s : State σ} {fs : List Frame}
    (h : ChainL C tEV tCK Γ s fs) {f : Frame} (hf : f ∈ fs) :
    ∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV := (h.objs f hf).1

theorem ck_obj {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s : State σ} {fs : List Frame}
    (h : ChainL C tEV tCK Γ s fs) {f : Frame} (hf : f ∈ fs) :
    ∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK := (h.objs f hf).2

def ckChainSlots : List Nat := [ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart, ckOutSize]
def evParentSlots : List Nat := [evSp, evStackCap, evMem, evMemCap, evMemLen]

/-- The cells `ChainL` reads are unchanged from `s` to `t`. -/
structure ChainKeep (s t : State σ) (fs : List Frame) : Prop where
  ev : gword t nmEv = gword s nmEv
  cc : gword t nmCC = gword s nmCC
  ck : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k
  pa : ∀ f ∈ fs.tail, ∀ k ∈ evParentSlots, fld t.memory f.1 k = fld s.memory f.1 k
  top : ∀ f ∈ fs.head?, ∀ k ∈ [evMem, evMemCap], fld t.memory f.1 k = fld s.memory f.1 k
  fp : ∀ p', ptrsOf t = some p' → ∃ p, ptrsOf s = some p ∧ p'.fp = p.fp
  rd : ∀ f ∈ fs, ∀ k ∈ [evRetd, evRetdCap], fld t.memory f.1 k = fld s.memory f.1 k

/-- **A step of the typed heap** from `(Γ, s)` to `(Γ', t)`: what a summary core provides
(monotone allocator, `Ext`, `NewFresh`, both laid out), with the stack / memory slots of every EV
record other than the running one (`top`) unchanged. -/
def GStep (C : Cfg) (tEV : Nat) (Γ Γ' : Gam) (s t : State σ) (top : BitVec 64) : Prop :=
  ∃ p p', ptrsOf s = some p ∧ ptrsOf t = some p' ∧ p.Ordered ∧ p'.Ordered ∧ Layout C p Γ ∧
    Layout C p' Γ' ∧ p.Mono p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
    ∀ e ∈ Γ, e.ty = tEV → e.base ≠ top →
      fld t.memory e.base 8 = fld s.memory e.base 8 ∧ fld t.memory e.base 24 = fld s.memory e.base 24

theorem gStep_ext {C : Cfg} {tEV : Nat} {Γ Γ' : Gam} {s t : State σ} {top : BitVec 64}
    (h : GStep C tEV Γ Γ' s t top) : Ext Γ Γ' :=
  let ⟨_, _, _, _, _, _, _, _, _, h8, _, _⟩ := h; h8

/-- The trivial step: same typing and allocator, the EV slots kept. -/
theorem gStep_refl {C : Cfg} {tEV : Nat} {Γ : Gam} {s t : State σ} {top : BitVec 64} {p : Ptrs}
    (hp : ptrsOf s = some p) (hp' : ptrsOf t = some p) (hord : p.Ordered) (hL : Layout C p Γ)
    (hev : ∀ e ∈ Γ, e.ty = tEV → e.base ≠ top →
      fld t.memory e.base 8 = fld s.memory e.base 8 ∧ fld t.memory e.base 24 = fld s.memory e.base 24) :
    GStep C tEV Γ Γ s t top :=
  ⟨p, p, hp, hp', hord, hord, hL, hL, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩,
    fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩,
    fun o ho a h1 h2 => Or.inl ⟨o, ho, rfl, rfl, h1, h2⟩, hev⟩

theorem isChain_keep {m m' : Mem} {fs : List Frame} (h : IsChain m fs)
    (hk : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld m' f.2 k = fld m f.2 k) : IsChain m' fs := by
  induction h with
  | base hk0 =>
      have h0 := hk _ (List.mem_singleton_self _)
      refine IsChain.base ⟨?_, ?_, ?_⟩
      · rw [h0 ckKind (by simp [ckChainSlots])]; exact hk0.1
      · rw [h0 ckParent (by simp [ckChainSlots])]; exact hk0.2.1
      · rw [h0 ckParentCont (by simp [ckChainSlots])]; exact hk0.2.2
  | @step e c rest hk0 hp _ ih =>
      have h0 := hk (e, c) (List.mem_cons_self ..)
      refine IsChain.step ?_ ?_ (ih fun f hf => hk f (List.mem_cons_of_mem _ hf))
      · rw [h0 ckKind (by simp [ckChainSlots])]; exact hk0
      · rw [h0 ckParent (by simp [ckChainSlots]), h0 ckParentCont (by simp [ckChainSlots])]
        exact hp

theorem adj_mem {fs : List Frame} {ch pa : Frame} (h : Adj fs ch pa) : ch ∈ fs ∧ pa ∈ fs.tail := by
  obtain ⟨l1, l2, rfl⟩ := h
  refine ⟨by simp, ?_⟩
  cases l1 with
  | nil => simp
  | cons x l1 => simp

theorem head_mem_split {fs l1 l2 : List Frame} {ch : Frame} (h : fs = l1 ++ ch :: l2) {f : Frame}
    (hf : f ∈ fs.head?) : f ∈ l1 ++ [ch] := by
  subst h
  cases l1 with
  | nil => simp only [List.nil_append, List.head?_cons, Option.mem_def, Option.some.injEq] at hf; simp [hf]
  | cons x l1 =>
      simp only [List.cons_append, List.head?_cons, Option.mem_def, Option.some.injEq] at hf
      simp [hf]

/-- The marks of a child frame are unchanged when its record is. -/
theorem mk_keep {s t : State σ} {fs : List Frame}
    (hk : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k) {f : Frame}
    (hf : f ∈ fs) :
    mkOf t.memory f.2 = mkOf s.memory f.2 ∧ mmOf t.memory f.2 = mmOf s.memory f.2 := by
  unfold mkOf mmOf
  rw [hk f hf ckMark (by simp [ckChainSlots]), hk f hf ckMemMark (by simp [ckChainSlots])]
  exact ⟨rfl, rfl⟩

/-- The release facts under a step. -/
theorem childMarks_keep {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (hk : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k) {top : BitVec 64} (htop : ∀ f ∈ fs.head?, f.1 = top)
    (hst : GStep C tEV Γ Γ' s t top) {l1 : List Frame} {ch pa : Frame} {l2 : List Frame}
    (hfs : fs = l1 ++ ch :: pa :: l2) (h : ChildMarks C tEV tCK Γ s l1 ch pa l2) :
    ChildMarks C tEV tCK Γ' t l1 ch pa l2 := by
  obtain ⟨p, p', hp, hp', hord, hord', hL, hL', hmo, hext, hnf, hev⟩ := hst
  have hch : ch ∈ fs := by rw [hfs]; simp
  have hpa : pa ∈ fs := by rw [hfs]; simp
  obtain ⟨hmk, hmm⟩ := mk_keep hk hch
  obtain ⟨hm1, hna, hfa, hord2, hlt⟩ := h
  have hfp : mmOf s.memory ch.2 < p.fp := hlt p hp
  have hmf : mmOf s.memory ch.2 ≤ p.fp := (hm1.ptrs p hp).2
  have hfm : mmOf s.memory ch.2 < p.fp ∨ ∃ y ∈ Γ', y.lo = mmOf s.memory ch.2 := Or.inl hfp
  unfold ChildMarks
  rw [hmk, hmm]
  refine ⟨markOK_step hp hp' hord hord' hL hL' hmo hext hnf hfm ?_ hm1, ?_, ?_, ?_, ?_⟩
  · intro e he het hab
    refine hev e he het fun heq => ?_
    -- the running frame's EV record does not survive
    have hfs' : fs.head? ∈ [fs.head?] := List.mem_singleton_self _
    cases hh : fs.head? with
    | none => rw [hfs] at hh; cases l1 <;> simp at hh
    | some f0 =>
        have hf0 : f0 ∈ fs.head? := hh
        have h1 := head_mem_split (l2 := pa :: l2) hfs hf0
        exact hna f0 h1 e he (by rw [heq]; exact (htop f0 hf0).symm) het hab
  · intro f hf o' ho' hb ht
    have hfm' : f ∈ fs := by
      rw [hfs]; rcases List.mem_append.mp hf with h | h
      · exact List.mem_append_left _ h
      · simp only [List.mem_singleton] at h; subst h; simp
    exact notAbove_step hord hord' hL hL' hmo hext hnf hmf hfm (hobj f hfm').1 (hna f hf) o' ho' hb ht
  · intro f hf
    have hfm' : f ∈ fs := by
      rw [hfs]; rcases List.mem_cons.mp hf with h | h
      · subst h; simp
      · simp [h]
    exact frameAbove_step hord hord' hL hL' hmo hext hnf hmf hfm (hobj f hfm').1 (hobj f hfm').2
      (hfa f hf)
  · intro l3 f l4 he hne
    have hf2 : f ∈ pa :: l2 := by rw [he]; simp
    have hf : f ∈ fs := by
      rw [hfs]; exact List.mem_append_right _ (List.mem_cons_of_mem _ hf2)
    obtain ⟨hf1, hf2'⟩ := mk_keep hk hf
    rw [hf1, hf2']
    exact hord2 l3 f l4 he hne
  · intro q hq
    obtain rfl := ptrs_some hp' hq
    exact lt_of_lt_of_le hfp hmo.2.1

/-- The release facts of an old child frame when a new frame `f0` (whose EV records lie below the
old `scratch_ptr`) is pushed below the chain. -/
theorem childMarks_push {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {fs : List Frame}
    (hobj : ∀ f ∈ fs, (∃ o ∈ Γ, o.base = f.1 ∧ o.ty = tEV) ∧ (∃ o ∈ Γ, o.base = f.2 ∧ o.ty = tCK))
    (hk : ∀ f ∈ fs, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld s.memory f.2 k) {top : BitVec 64}
    (htop : ∀ f ∈ fs.head?, f.1 = top) (hst : GStep C tEV Γ Γ' s t top) {f0 : Frame}
    (hnew : ∀ o ∈ Γ', o.base = f0.1 → o.ty = tEV → ∀ p, ptrsOf s = some p → o.hi ≤ p.sp)
    {l1 : List Frame} {ch pa : Frame} {l2 : List Frame}
    (hfs : fs = l1 ++ ch :: pa :: l2) (h : ChildMarks C tEV tCK Γ s l1 ch pa l2) :
    ChildMarks C tEV tCK Γ' t (f0 :: l1) ch pa l2 := by
  have hm := h.1
  obtain ⟨p, hp⟩ : ∃ p, ptrsOf s = some p := let ⟨p, _, hp, _⟩ := hst; ⟨p, hp⟩
  have hsp := (hm.ptrs p hp).1
  obtain ⟨h1, h2, h3, h4, h5⟩ := childMarks_keep hobj hk htop hst hfs h
  refine ⟨h1, fun f hf o ho hb ht hab => ?_, h3, h4, h5⟩
  rcases List.mem_cons.mp hf with rfl | hf'
  · have hch : ch ∈ fs := by rw [hfs]; simp
    rw [(mk_keep hk hch).1, (mk_keep hk hch).2] at hab
    have hhi := hnew o ho hb ht p hp
    unfold Above at hab
    rw [ht, hm.rg.1] at hab
    simp only at hab
    obtain ⟨_, _, _, _, _, _, _, hL', -⟩ := hst
    have := (lay_obj hL' ho).2.2.1
    unfold Obj.hi Obj.lo at *
    omega
  · exact h2 f hf' o ho hb ht hab

theorem chainL_keep {C : Cfg} {tEV tCK : Nat} {Γ Γ' : Gam} {s t : State σ} {fs : List Frame}
    (h : ChainL C tEV tCK Γ s fs) (hk : ChainKeep s t fs) {top : BitVec 64}
    (htop : ∀ f ∈ fs.head?, f.1 = top) (hst : GStep C tEV Γ Γ' s t top) :
    ChainL C tEV tCK Γ' t fs := by
  have hext := gStep_ext hst
  obtain ⟨⟨e, c, rest, hfs, he, hc, hch⟩, hobj, hnE, hnC, hst', hmm, hout, htm, hmk, hrd⟩ := h
  refine ⟨⟨e, c, rest, hfs, by rw [hk.ev]; exact he, by rw [hk.cc]; exact hc,
    isChain_keep hch hk.ck⟩, ?_, hnE, hnC, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := hobj f hf
    obtain ⟨o1', ho1', hb1', ht1', -⟩ := hext o1 ho1
    obtain ⟨o2', ho2', hb2', ht2', -⟩ := hext o2 ho2
    exact ⟨⟨o1', ho1', hb1'.trans hb1, ht1'.trans ht1⟩, ⟨o2', ho2', hb2'.trans hb2, ht2'.trans ht2⟩⟩
  · intro ch pa ha
    obtain ⟨-, hpa⟩ := adj_mem ha
    rw [hk.pa pa hpa evSp (by simp [evParentSlots]), hk.pa pa hpa evStackCap (by simp [evParentSlots])]
    exact hst' ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa⟩ := adj_mem ha
    rw [hk.ck ch hch' ckMemMark (by simp [ckChainSlots]),
      hk.pa pa hpa evMem (by simp [evParentSlots]), hk.pa pa hpa evMemCap (by simp [evParentSlots])]
    exact hmm ch pa ha
  · intro ch pa ha
    obtain ⟨hch', hpa⟩ := adj_mem ha
    rw [hk.ck ch hch' ckOutSize (by simp [ckChainSlots]),
      hk.ck ch hch' ckOutStart (by simp [ckChainSlots]),
      hk.pa pa hpa evMemLen (by simp [evParentSlots])]
    exact hout ch pa ha
  · intro e' c' rest' hfs' p' hp'
    obtain ⟨p, hp, hfp⟩ := hk.fp p' hp'
    have htop' : (e', c') ∈ fs.head? := by rw [hfs']; rfl
    rw [hk.top _ htop' evMem (by simp), hk.top _ htop' evMemCap (by simp), hfp]
    exact htm e' c' rest' hfs' p hp
  · intro l1 ch pa l2 hfs'
    exact childMarks_keep hobj hk.ck htop hst hfs' (hmk l1 ch pa l2 hfs')
  · intro f hf
    exact retOK_ext hext (hk.rd f hf evRetd (by simp)) (hk.rd f hf evRetdCap (by simp)) (hrd f hf)

/-- The weight of a frame is unchanged when its weight cells are. -/
theorem wt_keep {m m' : Mem} {f : Frame}
    (hev : ∀ k ∈ [evGasLeft, evSpilled, evRunning], fld m' f.1 k = fld m f.1 k)
    (hck : fld m' f.2 ckDone = fld m f.2 ckDone) : wt m' f = wt m f := by
  unfold wt
  rw [hev evGasLeft (by simp), hev evSpilled (by simp), hev evRunning (by simp), hck]

theorem wsum_keep {m m' : Mem} {fs : List Frame}
    (h : ∀ f ∈ fs, (∀ k ∈ [evGasLeft, evSpilled, evRunning], fld m' f.1 k = fld m f.1 k) ∧
      fld m' f.2 ckDone = fld m f.2 ckDone) : wsum m' fs = wsum m fs := by
  induction fs with
  | nil => rfl
  | cons f fs ih =>
      simp only [wsum, List.map_cons, List.sum_cons] at ih ⊢
      obtain ⟨h1, h2⟩ := h f (List.mem_cons_self ..)
      rw [wt_keep h1 h2, ih fun g hg => h g (List.mem_cons_of_mem _ hg)]

theorem wsum_cons (m : Mem) (f : Frame) (fs : List Frame) : wsum m (f :: fs) = wt m f + wsum m fs := by
  simp [wsum]

end InitECandidate.Solver.MemSafe.Frames
