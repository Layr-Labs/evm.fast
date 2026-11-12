import InitECandidate.Solver.MemSafe.Frames.FinB

/-!
# `finish_child`: the release and the parent's chain

At the end of the parent side (`FinB` at `(Γb, ub)`), `scratch_release(CK_MARK)` and
`frame_mem_release(CK_MEM_MARK)` move the allocator pointers to the child's marks.

* `markOK_release` / `childMarks_release`: the release facts of the frames above survive the
  release (their marks are above the child's).
* **`fin_release`**: `G` for the surviving objects, the chain of the parent (the tail), and the
  weights of the frames above the parent unchanged.
-/

set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-- The allocator state after the release. -/
theorem ptrs_release {s t : State σ} {p : Ptrs} (hp : ptrsOf s = some p) {mk mm : Nat}
    (hmk : mk < 2 ^ 64) (hmm : mm < 2 ^ 64)
    (hgs : t.globals.lookup gScratch = some (.val (.word (BitVec.ofNat 64 mk))))
    (hgf : t.globals.lookup gFrame = some (.val (.word (BitVec.ofNat 64 mm))))
    (hgo : ∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = s.globals.lookup g) :
    ptrsOf t = some ⟨p.hp, mm, mk⟩ := by
  obtain ⟨ha, hb, hc, hga, -, -, rfl⟩ := ptrsOf_parts hp
  have hh : gword t gHeap = some ha := by
    unfold gword; rw [hgo gHeap (by decide) (by decide)]; exact hga
  have h1 : gword t gFrame = some (BitVec.ofNat 64 mm) := by unfold gword; rw [hgf]
  have h2 : gword t gScratch = some (BitVec.ofNat 64 mk) := by unfold gword; rw [hgs]
  rw [ptrsOf_of hh h1 h2, toNat_ofNat_lt hmm, toNat_ofNat_lt hmk]

/-- Survival to the deeper marks implies survival to the child's marks. -/
theorem above_mono {C : Cfg} {mk mm mk2 mm2 : Nat} (h1 : mk ≤ mk2) (h2 : mm2 ≤ mm) {o : Obj}
    (h : Above C mk2 mm2 o) : Above C mk mm o := by
  unfold Above at *
  cases hr : (C.ty o.ty).region <;> simp only [hr] at h ⊢ <;> omega

/-- The release invariant of a frame above, after the release. -/
theorem markOK_release {C : Cfg} {tEV : Nat} {Γ : Gam} {s t : State σ} {mk mm mk2 mm2 : Nat}
    (h : MarkOK C tEV Γ s mk2 mm2) (hmk : mk < mk2) (hmm : mm2 < mm)
    (hm : t.memory = s.memory) {p' : Ptrs} (hp' : ptrsOf t = some p') (hsp : p'.sp = mk)
    (hfp : p'.fp = mm) : MarkOK C tEV (relKeep C mk mm Γ) t mk2 mm2 := by
  refine ⟨h.rg, fun q hq => ?_, h.mkB, h.mmB, fun o ho => h.split o (mem_relKeep.mp ho).1,
    fun e he het hab => ?_, fun o ho hab x hx hxt hxo => ?_⟩
  · obtain rfl := ptrs_some hp' hq
    rw [hsp, hfp]; exact ⟨hmk, le_of_lt hmm⟩
  · obtain ⟨⟨x, hx, hxb, hxa⟩, ⟨y, hy, hyb, hya⟩⟩ := h.evDeps e (mem_relKeep.mp he).1 het hab
    rw [hm]
    exact ⟨⟨x, mem_relKeep.mpr ⟨hx, above_mono (le_of_lt hmk) (le_of_lt hmm) hxa⟩, hxb, hxa⟩,
      ⟨y, mem_relKeep.mpr ⟨hy, above_mono (le_of_lt hmk) (le_of_lt hmm) hya⟩, hyb, hya⟩⟩
  · have hx' := (mem_relKeep.mp hx).1
    have := h.adj o (mem_relKeep.mp ho).1 hab x hx' hxt hxo
    exact this

theorem childMarks_release {C : Cfg} {tEV tCK : Nat} {Γ : Gam} {s t : State σ} {mk mm : Nat}
    {l1 : List Frame} {ch pa : Frame} {l2 : List Frame} (h : ChildMarks C tEV tCK Γ s l1 ch pa l2)
    (hmk : mk < mkOf s.memory ch.2) (hmm : mmOf s.memory ch.2 < mm) (hm : t.memory = s.memory)
    {p' : Ptrs} (hp' : ptrsOf t = some p') (hsp : p'.sp = mk) (hfp : p'.fp = mm) :
    ChildMarks C tEV tCK (relKeep C mk mm Γ) t l1 ch pa l2 := by
  obtain ⟨a1, a2, a3, a4, -⟩ := h
  unfold ChildMarks
  rw [hm]
  refine ⟨markOK_release a1 hmk hmm hm hp' hsp hfp, fun f hf o ho => a2 f hf o (mem_relKeep.mp ho).1,
    fun f hf o ho => a3 f hf o (mem_relKeep.mp ho).1, a4, fun q hq => ?_⟩
  obtain rfl := ptrs_some hp' hq
  rw [hfp]; exact hmm

theorem retOK_release {C : Cfg} {Γ : Gam} {m : Mem} {e : BitVec 64} {mk mm : Nat}
    (h : RetOK C Γ m e) : RetOK C (relKeep C mk mm Γ) m e := by
  rcases h with h | ⟨o, ho, hb, hs, hr, hsz⟩
  · exact Or.inl h
  · exact Or.inr ⟨o, mem_relKeep.mpr ⟨ho, above_heap hr⟩, hb, hs, hr, hsz⟩

theorem adj_cons_tail {f : Frame} {fs : List Frame} {ch pa : Frame} (h : Adj fs ch pa) :
    Adj (f :: fs) ch pa := by
  obtain ⟨l1, l2, rfl⟩ := h
  exact ⟨f :: l1, l2, rfl⟩

/-- **The release.** -/
theorem fin_release {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop} {R : Gam → Mem → Frame → Frame → Prop}
    {Ref : Gam → State σ → Obj → BitVec 64 → Prop} (hR : RelCfg C H tEV Ref)
    (hD : DrvCfg C H tEV tCK) {Γa : Gam} {sw : State σ} {e c e' c' : BitVec 64}
    {rest : List Frame} (hch : ChainL C tEV tCK Γa sw ((e, c) :: (e', c') :: rest)) {Γb : Gam}
    {ub : State σ} (h : FinB C H tEV tCK P R sw e c e' c' rest Γb ub)
    (hrdp : RetOK C Γb ub.memory e') {t : State σ} (hm : t.memory = ub.memory)
    (hd : t.memaddrs = ub.memaddrs) (hbe : t.be = ub.be)
    (hgs : t.globals.lookup gScratch = some (.val (.word (fld sw.memory c ckMark))))
    (hgf : t.globals.lookup gFrame = some (.val (.word (fld sw.memory c ckMemMark))))
    (hgo : ∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = ub.globals.lookup g) :
    G C H (relKeep C (mkOf sw.memory c) (mmOf sw.memory c) Γb) t ∧
      ChainL C tEV tCK (relKeep C (mkOf sw.memory c) (mmOf sw.memory c) Γb) t ((e', c') :: rest) ∧
      wsum t.memory rest = wsum sw.memory rest := by
  set mk := mkOf sw.memory c with hmkd
  set mm := mmOf sw.memory c with hmmd
  have hF := hD.fc
  have hgs' : t.globals.lookup gScratch = some (.val (.word (BitVec.ofNat 64 mk))) := by
    rw [hgs, hmkd, mkOf, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  have hgf' : t.globals.lookup gFrame = some (.val (.word (BitVec.ofNat 64 mm))) := by
    rw [hgf, hmmd, mmOf, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  have hev : ∀ o ∈ Γb, gword ub nmEv = some o.base → o.ty = tEV → Above C mk mm o := by
    intro o ho hb hot
    rw [h.ev] at hb
    exact h.above (e', c') (by simp) o ho (Or.inl ⟨(Option.some.inj hb).symm, hot⟩)
  have hcc : ∀ o ∈ Γb, gword ub nmCC = some o.base → o.ty = tCK → Above C mk mm o := by
    intro o ho hb hot
    rw [h.cc] at hb
    exact h.above (e', c') (by simp) o ho (Or.inr ⟨(Option.some.inj hb).symm, hot⟩)
  have hGt := G_release hR hD h.G h.mark hm hd hbe hgs' hgf' hgo hev hcc
  refine ⟨hGt, ?_, ?_⟩
  rotate_left
  · -- the weights of the frames above
    refine wsum_keep fun f hf => ⟨fun k hk => ?_, ?_⟩
    · rw [hm]
      have hf2 : f ∈ (e, c) :: rest := List.mem_cons_of_mem _ hf
      simp only [evGasLeft, evSpilled, evRunning, List.mem_cons, List.mem_nil_iff, or_false] at hk
      rcases hk with rfl | rfl | rfl
      · exact h.evr f hf2 8 (by simp [evProtSlots])
      · exact h.evr f hf2 24 (by simp [evProtSlots])
      · exact h.evr f hf2 13 (by simp [evProtSlots])
    · rw [hm]; exact h.ck f (mem_tail3 (List.mem_cons_of_mem _ hf)) 4 (by omega)
  -- the chain of the parent
  obtain ⟨p, hp, hord, hL, -⟩ := h.G
  have hO := hord
  unfold Ptrs.Ordered at hO
  have hs64 : scratchEnd < 2 ^ 64 := by decide
  have hmk64 : mk < 2 ^ 64 := by
    have := h.mark.mkB.2
    omega
  have hmm64 : mm < 2 ^ 64 := by
    have := h.mark.mmB.2
    have := h.mark.ptrs p hp
    omega
  have hpt := ptrs_release hp hmk64 hmm64 hgs' hgf' hgo
  have hevt : gword t nmEv = some e' := by
    unfold gword; rw [hgo nmEv (by decide) (by decide)]; exact h.ev
  have hcct : gword t nmCC = some c' := by
    unfold gword; rw [hgo nmCC (by decide) (by decide)]; exact h.cc
  have hckT : ∀ f ∈ (e', c') :: rest, ∀ k ∈ ckChainSlots, fld t.memory f.2 k = fld sw.memory f.2 k := by
    intro f hf k hk
    rw [hm]
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
      ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact h.ck f (mem_tail3 hf) 0 (by omega)
    · exact h.ck f (mem_tail3 hf) 1 (by omega)
    · exact h.ck f (mem_tail3 hf) 2 (by omega)
    · exact h.ck f (mem_tail3 hf) 6 (by omega)
    · exact h.ck f (mem_tail3 hf) 7 (by omega)
    · exact h.ck f (mem_tail3 hf) 9 (by omega)
    · exact h.ck f (mem_tail3 hf) 10 (by omega)
  have hrestE : ∀ f ∈ rest, ∀ j ∈ evProtSlots, fld t.memory f.1 (8 * j) = fld sw.memory f.1 (8 * j) := by
    intro f hf j hj; rw [hm]; exact h.evr f (List.mem_cons_of_mem _ hf) j hj
  have hrestE' : ∀ f ∈ rest, ∀ k ∈ evParentSlots,
      fld t.memory f.1 k = fld sw.memory f.1 k := by
    intro f hf k hk
    simp only [evParentSlots, evSp, evStackCap, evMem, evMemCap, evMemLen, List.mem_cons,
      List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl | rfl
    · exact hrestE f hf 2 (by simp [evProtSlots])
    · exact hrestE f hf 29 (by simp [evProtSlots])
    · exact hrestE f hf 3 (by simp [evProtSlots])
    · exact hrestE f hf 5 (by simp [evProtSlots])
    · exact hrestE f hf 4 (by simp [evProtSlots])
  have hic : IsChain sw.memory ((e, c) :: (e', c') :: rest) := by
    obtain ⟨e1, c1, rest1, hfs1, -, -, hic⟩ := hch.chain
    exact hic
  have hic2 : IsChain sw.memory ((e', c') :: rest) := by
    cases hic with
    | step _ _ h3 => exact h3
  have hadj : ∀ ch pa, Adj ((e', c') :: rest) ch pa → Adj ((e, c) :: (e', c') :: rest) ch pa :=
    fun ch pa ha => adj_cons_tail ha
  have hpaR : ∀ ch pa, Adj ((e', c') :: rest) ch pa → pa ∈ rest := by
    intro ch pa ha
    have := (adj_mem ha).2
    simpa using this
  refine ⟨⟨e', c', rest, rfl, hevt, hcct, isChain_keep hic2 hckT⟩, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · -- objects survive
    intro f hf
    obtain ⟨⟨o1, ho1, hb1, ht1⟩, ⟨o2, ho2, hb2, ht2⟩⟩ := h.objs f (mem_tail3 hf)
    exact ⟨⟨o1, mem_relKeep.mpr ⟨ho1, h.above f hf o1 ho1 (Or.inl ⟨hb1, ht1⟩)⟩, hb1, ht1⟩,
      ⟨o2, mem_relKeep.mpr ⟨ho2, h.above f hf o2 ho2 (Or.inr ⟨hb2, ht2⟩)⟩, hb2, ht2⟩⟩
  · have := hch.nodupE; simp only [List.map_cons, List.nodup_cons] at this ⊢; exact this.2
  · have := hch.nodupC; simp only [List.map_cons, List.nodup_cons] at this ⊢; exact this.2
  · intro ch pa ha
    have hpa := hpaR ch pa ha
    rw [hrestE' pa hpa evSp (by simp [evParentSlots]), hrestE' pa hpa evStackCap (by simp [evParentSlots])]
    exact hch.stack ch pa (hadj ch pa ha)
  · intro ch pa ha
    have hpa := hpaR ch pa ha
    rw [hckT ch (adj_mem ha).1 ckMemMark (by simp [ckChainSlots]),
      hrestE' pa hpa evMem (by simp [evParentSlots]), hrestE' pa hpa evMemCap (by simp [evParentSlots])]
    exact hch.memMark ch pa (hadj ch pa ha)
  · intro ch pa ha
    have hpa := hpaR ch pa ha
    rw [hckT ch (adj_mem ha).1 ckOutSize (by simp [ckChainSlots]),
      hckT ch (adj_mem ha).1 ckOutStart (by simp [ckChainSlots]),
      hrestE' pa hpa evMemLen (by simp [evParentSlots])]
    exact hch.outRange ch pa (hadj ch pa ha)
  · -- the parent's memory ends at the released `frame_mem_ptr`
    intro e2 c2 rest2 hfs2 p2 hp2
    simp only [List.cons.injEq, Prod.mk.injEq] at hfs2
    obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hfs2
    rw [hpt, Option.some.injEq] at hp2
    subst hp2
    have h3 := h.evp 3 (by simp [parKeep])
    have h5 := h.evp 5 (by simp [parKeep])
    rw [hm]
    show (fld ub.memory e' 24).toNat + (fld ub.memory e' 40).toNat = mm
    rw [show (24 : Nat) = 8 * 3 from rfl, show (40 : Nat) = 8 * 5 from rfl, h3, h5]
    have := hch.memMark (e, c) (e', c') ⟨[], rest, rfl⟩
    simp only [evMem, evMemCap, ckMemMark] at this
    rw [hmmd, mmOf]
    exact this.symm
  · -- the release facts of the frames above
    intro l1 ch pa l2 hfs2
    have hord2 := (hch.marks [] (e, c) (e', c') rest rfl).2.2.2.1
    have hch2 : ch ∈ (e', c') :: rest := by rw [hfs2]; simp
    have hlt := hord2 l1 ch (pa :: l2) hfs2 (by simp)
    obtain ⟨hmkc, hmmc⟩ := mk_keep (s := sw) (t := ub) (fs := (e', c') :: rest)
      (fun f hf k hk => by rw [← hm]; exact hckT f hf k hk) hch2
    have hcmub := childMarks_release (h.tail l1 ch pa l2 hfs2) (mk := mk) (mm := mm)
      (by rw [hmkc]; exact hlt.1) (by rw [hmmc]; exact hlt.2) hm hpt rfl rfl
    exact hcmub
  · intro f hf
    rcases List.mem_cons.mp hf with rfl | hf'
    · rw [hm]; exact retOK_release hrdp
    · rw [hm]; exact retOK_release (h.rd f hf')

/-- **The release keeps the chain extension of the parent's chain** (frames7). -/
theorem fin_releaseX {C : Cfg} {H : Hooks σ} {tEV tCK : Nat} {P : Gam → Mem → Ptrs → Frame → Prop}
    {R : Gam → Mem → Frame → Frame → Prop} (hX : XCfg C tEV tCK P R) {Γa : Gam} {sw : State σ}
    {e c e' c' : BitVec 64} {rest : List Frame}
    (hch : ChainL C tEV tCK Γa sw ((e, c) :: (e', c') :: rest)) {Γb : Gam}
    {ub : State σ} (h : FinB C H tEV tCK P R sw e c e' c' rest Γb ub) {t : State σ}
    (hm : t.memory = ub.memory)
    (hgs : t.globals.lookup gScratch = some (.val (.word (fld sw.memory c ckMark))))
    (hgf : t.globals.lookup gFrame = some (.val (.word (fld sw.memory c ckMemMark))))
    (hgo : ∀ g, g ≠ gScratch → g ≠ gFrame → t.globals.lookup g = ub.globals.lookup g) :
    ChainE P R (relKeep C (mkOf sw.memory c) (mmOf sw.memory c) Γb) t ((e', c') :: rest) := by
  set mk := mkOf sw.memory c with hmkd
  set mm := mmOf sw.memory c with hmmd
  have hgs' : t.globals.lookup gScratch = some (.val (.word (BitVec.ofNat 64 mk))) := by
    rw [hgs, hmkd, mkOf, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  have hgf' : t.globals.lookup gFrame = some (.val (.word (BitVec.ofNat 64 mm))) := by
    rw [hgf, hmmd, mmOf, BitVec.ofNat_toNat, BitVec.setWidth_eq]
  obtain ⟨p, hp, hord, hL, -⟩ := h.G
  have hs64 : scratchEnd < 2 ^ 64 := by decide
  have hmk64 : mk < 2 ^ 64 := by
    have := h.mark.mkB.2
    omega
  have hmm64 : mm < 2 ^ 64 := by
    have := h.mark.mmB.2
    have := h.mark.ptrs p hp
    have hO := hord
    unfold Ptrs.Ordered at hO
    omega
  have hpt := ptrs_release hp hmk64 hmm64 hgs' hgf' hgo
  have hckU : ∀ f ∈ (e, c) :: (e', c') :: rest, ∀ k ∈ ckChainSlots,
      fld ub.memory f.2 k = fld sw.memory f.2 k := by
    intro f hf k hk
    simp only [ckChainSlots, ckParent, ckParentCont, ckKind, ckMark, ckMemMark, ckOutStart,
      ckOutSize, List.mem_cons, List.mem_nil_iff, or_false] at hk
    rcases hk with rfl | rfl | rfl | rfl | rfl | rfl | rfl
    · exact h.ck f hf 0 (by omega)
    · exact h.ck f hf 1 (by omega)
    · exact h.ck f hf 2 (by omega)
    · exact h.ck f hf 6 (by omega)
    · exact h.ck f hf 7 (by omega)
    · exact h.ck f hf 9 (by omega)
    · exact h.ck f hf 10 (by omega)
  obtain ⟨hmkU, hmmU⟩ := mk_keep hckU (f := (e, c)) (by simp)
  have hord2 := (hch.marks [] (e, c) (e', c') rest rfl).2.2.2.1
  have hord2' : ∀ l3 g l4, (e', c') :: rest = l3 ++ g :: l4 → l4 ≠ [] →
      mkOf ub.memory (e, c).2 < mkOf ub.memory g.2 ∧ mmOf ub.memory g.2 < mmOf ub.memory (e, c).2 := by
    intro l3 g l4 he hne
    have hg : g ∈ (e, c) :: (e', c') :: rest := by
      apply List.mem_cons_of_mem; rw [he]; simp
    obtain ⟨h1, h2⟩ := mk_keep hckU hg
    rw [hmkU, hmmU, h1, h2]
    exact hord2 l3 g l4 he hne
  have hmark : MarkOK C tEV Γb ub (mkOf ub.memory (e, c).2) (mmOf ub.memory (e, c).2) := by
    rw [hmkU, hmmU]; exact h.mark
  have hpt' : ptrsOf t = some ⟨p.hp, mmOf ub.memory (e, c).2, mkOf ub.memory (e, c).2⟩ := by
    rw [hmkU, hmmU]; exact hpt
  have := chainE_release hX hp hord hL hmark hord2' hm hpt' h.x
  rw [hmkU, hmmU] at this
  exact this

end InitECandidate.Solver.MemSafe.Frames
