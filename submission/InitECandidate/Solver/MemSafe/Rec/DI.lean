import InitECandidate.Solver.MemSafe.Rec.Adopt
import InitECandidate.Solver.MemSafe.Rec.SplitVar

set_option autoImplicit false

/-!
# The record-constructor invariant `DI` and its statement rules

A constructor allocates one heap block `[Ar, Ar + n)` (`BlkF`: outside `Γ`, allocated, not
allocated at the entry), fills it by one-word stores and calls non-growing summarised callees.
`DI a Ar n L E t`: the locals satisfy `L`; the activation invariant holds for some `Γ`, `q`
extending the entry typing; the block is a caller temporary; and a *client predicate*
`E Γ q memory` (extra facts: pure facts, contents of cells of the block, cells of objects the
client adopted) holds.

Rules (post `NQ a Rv`, a non-normal end):
* `hoareG_seqDI`, `hoareG_decDI` (a local, `E` unchanged);
* `hoareG_stDI` (a store into a block word; `E` updated), `hoareG_stsDI` (a store into a
  `scalar` cell of the current `Γ`; `E` updated);
* `hoareG_callDI`, `hoareG_decCallDI` (a call to a callee with only `any` parameters and a
  capability summary, together with a located `FunSpec`; the client builds the new `DI` from the
  call outcome `CallOut`);
* `heap_callM`: `heap_call` with the callee's memory frame exposed.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH
open InitECandidate.Solver.MemSafe.Node (NQ nq_of_abn nq_locals)

variable {σ : Type} {X : Ctx 64}

/-! ## `heap_call` with the memory frame -/

theorem heap_callM {a : Act σ} (ha : ActOK a X) {Γ : Gam} {p : Ptrs} {s : State σ}
    (hh : Heap a Γ p s) {sg' : Sig} {vs : List (ValueHOL 64)}
    {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64} {st : State σ}
    (hR : SummR a.Cb a.H sg' [] vs (callEntryStateHOLFinite s callee) r st)
    (hgood : Good (some r)) (hna : ¬ Abortive r)
    (hargs : ArgsOK a.Cb Γ p sg'.params vs) (hps : ∀ pt ∈ sg'.params, pt = .any)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true) :
    ∃ Γ' q', Ext Γ Γ' ∧ Heap a Γ' q' st ∧ p.Mono q' ∧ NewFresh Γ Γ' p q' ∧
      (sg'.grows = false → NewFresh Γ Γ' p p) ∧
      (∀ x : BitVec 64, ¬ WCell a.Cb Γ x → p.Allocated x.toNat → st.memory x = s.memory x) ∧
      ∀ v, r = .returned v → RetOK Γ' p q' vs sg'.ret v := by
  have hGe : G a.Cb a.H Γ (callEntryStateHOLFinite s callee) := by
    have := G_congr (s := s) (t := callEntryStateHOLFinite s callee) ha.hH rfl rfl rfl rfl hh.1
    rw [ha.hupg] at this
    exact G_of_upg ha.hcaps this
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := hh.2.1
  obtain ⟨Γ', q, q', core, -⟩ := hR hgood hna Γ hGe ⟨p, hpe, hargs⟩ (fun c hc => by cases hc)
  have hqp : q = p := by rw [core.1] at hpe; exact Option.some.inj hpe
  subst hqp
  have hh' := heap_after_call ha hh rfl rfl core (fun x hx => absurd hx (argCells_any hps))
    hgw hgr (capSub_nil _)
  obtain ⟨-, -, hmono, hext, hnf, -, hmod, -, hng', hret⟩ := core
  refine ⟨Γ', q', hext, hh', hmono, hnf, hng', fun x hx1 hx2 => ?_, hret⟩
  refine hmod x ?_
  rintro (h | h | h | ⟨-, c, hc, -⟩)
  · exact hx1 h
  · exact argCells_any hps h
  · exact h hx2
  · cases hc

/-! ## The invariant -/

def DI (a : Act σ) (Ar : BitVec 64) (n : Nat) (L : LocalsH → Prop)
    (E : Gam → Ptrs → Mem → LocalsH → Prop) (t : State σ) : Prop :=
  L t.locals ∧ ∃ (Γ : Gam) (q : Ptrs), Ext a.Γ0 Γ ∧ Heap a Γ q t ∧ BlkF Ar n Γ q ∧
    (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) ∧ E Γ q t.memory t.globals

/-- The statement post. -/
def DQ (a : Act σ) (Ar : BitVec 64) (n : Nat) (L : LocalsH → Prop)
    (E : Gam → Ptrs → Mem → LocalsH → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → DI a Ar n L E t) ∧ ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

theorem hha_of_di {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {t : State σ} (h : DI a Ar n L E t) : HHa a t := by
  obtain ⟨-, Γ, q, he, hh, -⟩ := h
  exact ⟨Γ, q, he, hh⟩

theorem di_of_blkH {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {t : State σ}
    (hL : L t.locals) (hB : BlkH a Ar n t) : DI a Ar n L (fun _ _ _ _ => True) t := by
  obtain ⟨Γ, q, he, hh, hF, hn⟩ := hB
  exact ⟨hL, Γ, q, he, hh, hF, hn, trivial⟩

/-- What a summarised call guarantees (the part the client needs). -/
structure COut (a : Act σ) (sg' : Sig) (Γ Γ' : Gam) (q q' : Ptrs) (s st : State σ) : Prop where
  heap0 : Heap a Γ q s
  ext : Ext Γ Γ'
  heap : Heap a Γ' q' st
  mono : q.Mono q'
  nf : NewFresh Γ Γ' q q'
  nfp : sg'.grows = false → NewFresh Γ Γ' q q
  frame : ∀ x : BitVec 64, ¬ WCell a.Cb Γ x → q.Allocated x.toNat → st.memory x = s.memory x

/-! ## Statement rules -/

theorem hoareG_seqDI {a : Act σ} {P : State σ → Prop} {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c k : ProgHOL 64}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hc : HoareG σ X P c (DQ a Ar n L E)) (hk : HoareG σ X (DI a Ar n L E) k (NQ a Rv)) :
    HoareG σ X P (.seq c k) (NQ a Rv) :=
  hoareG_seq hc (fun r t _ hr _ h => nq_of_abn r t hr h.2) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem hoareG_decDI {a : Act σ} (hH : HooksLawful a.C a.H) {Ar : BitVec 64} {n : Nat}
    {L L' : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {x : MlS} {sh : ShapeHOL}
    {e : ExpHOL 64} {k : ProgHOL 64} {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (setVarHOLFinite x v s).locals)
    (hk : HoareG σ X (DI a Ar n L' E) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.dec x sh e k) (NQ a Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hF, hn, hE⟩ v hv _ => ?_
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => nq_locals hH _ hq)
  subst ht
  exact ⟨h s hs hL v hv, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hF, hn, hE⟩

theorem hoareG_stDI {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {ea ev' : ExpHOL 64}
    (hrng : Ar.toNat + n < 2 ^ 64)
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s ea = some (.val (.word w)) →
      ∃ j, 8 * j + 8 ≤ n ∧ w = Ar + BitVec.ofNat 64 (8 * j))
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s ev' = some v →
      ∃ x, v = .val (.word x))
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (j : Nat) (x : BitVec 64) (mem : Mem),
      InCtx s X → L s.locals → 8 * j + 8 ≤ n →
      ev s ea = some (.val (.word (Ar + BitVec.ofNat 64 (8 * j)))) →
      ev s ev' = some (.val (.word x)) → rd mem (Ar + BitVec.ofNat 64 (8 * j)) = x →
      (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = s.memory y) → BlkF Ar n Γ q →
      E Γ q s.memory s.globals → E' Γ q mem s.globals) :
    HoareG σ X (DI a Ar n L E) (.store ea ev') (DQ a Ar n L E') := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl⟩ := hval s hs hL v hv
  obtain ⟨j, hj, hws⟩ := haddr s hs hL w hw
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst1
  have hw8 : w.toNat % 8 = 0 := ha.hal w (hs.2.1 ▸ hdom)
  have hwn : w.toNat = Ar.toNat + 8 * j := by rw [hws]; exact Node.cell_toNat_bv hrng hj
  have hov : Overlap Ar.toNat n w := ⟨hw8, by omega, by omega⟩
  subst hws
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
  · exact heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr (hB _ hov).1)
      (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl (hn _ hov))))
  · refine hE s Γ p j x mem hs hL hj hw hv ?_ ?_ hB hEs
    · rw [hmem']; exact Struct.rd_upd_self _ _ _
    · intro y hy; rw [hmem']; exact Struct.upd_ne hy

theorem hoareG_stsDI {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {ea ev' : ExpHOL 64}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ q, Ext a.Γ0 Γ → Heap a Γ q s →
      ∀ w, ev s ea = some (.val (.word w)) → heapBase ≤ w.toNat → w.toNat % 8 = 0 →
        SCell a.Cb Γ w)
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s ev' = some v →
      ∃ x, v = .val (.word x))
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (w x : BitVec 64) (mem : Mem),
      InCtx s X → L s.locals → ev s ea = some (.val (.word w)) →
      ev s ev' = some (.val (.word x)) → rd mem w = x → (∀ y, y ≠ w → mem y = s.memory y) →
      E Γ q s.memory s.globals → E' Γ q mem s.globals) :
    HoareG σ X (DI a Ar n L E) (.store ea ev') (DQ a Ar n L E') := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl⟩ := hval s hs hL v hv
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst1
  have hdom' : s.memaddrs w := hdom
  have hc := haddr s hs hL Γ p he hh w hw (ns_of ha hs w hdom') (ha.hal w (hs.2.1 ▸ hdom))
  refine ⟨fun _ => ⟨hL, Γ, p, he, heap_store_scell ha hh hm fun y hy => hy ▸ hc, hB, hn, ?_⟩,
    fun r' h => absurd h (by simp)⟩
  refine hE s Γ p w x mem hs hL hw hv ?_ ?_ hEs
  · rw [hmem']; exact Struct.rd_upd_self _ _ _
  · intro y hy; rw [hmem']; exact Struct.upd_ne hy

theorem hoareG_callDI {a : Act σ} (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hE : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → COut a sg' Γ Γ' q q' s st →
      BlkF Ar n Γ q → E Γ q s.memory s.globals → E' Γ' q' st.memory st.globals) :
    HoareG σ X (DI a Ar n L E) (.call (some (none, none)) f args) (DQ a Ar n L E') := by
  refine hoareG_callD ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callM ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    refine ⟨fun _ => ⟨hL, Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
    exact hE s st vs callee v Γ Γ' p q' hs hL hvs hLc' ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hB hEs
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callM ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_decCallDI {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig}
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {L' : ValueHOL 64 → LocalsH → Prop}
    {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals → shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COut a sg' Γ Γ' q q' s st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (NQ a Rv)) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (NQ a Rv) := by
  refine hoareG_decCall ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callM ha hh hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs hLc'
      he hh hB hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) (fun r t _ _ hq => nq_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st v hL hsh, Γ'', q'', he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'', hB'',
      hn, hE''⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨by simp, fun r' hr' => ?_⟩
    cases hr'
    intro hna
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callM ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩


theorem hoareG_sFailDI {a : Act σ} (ha : ActOK a X) {sgf : Sig}
    (hfail : CSumm σ X a.Cb a.H (nm "ssz_fail") sgf [])
    (hfr : FunRet σ X (nm "ssz_fail") (fun _ _ => False)) (hpf : sgf.params = [.any])
    (hgf : sgf.gw = []) (hgr : sgf.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ExpHOL 64} {k : Nat} :
    HoareG σ X (DI a Ar n L E) (sFail c k) (DQ a Ar n L E) :=
  hoareG_conseq (hoareG_sFail ha hfail hfr hpf hgf hgr (P := DI a Ar n L E)
    (fun t h => hha_of_di h) (c := c) (k := k)) (fun t _ ht => ht)
    (fun r t _ _ h => ⟨fun hr => (h.1 hr).1, h.2⟩)

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_sFailDI
