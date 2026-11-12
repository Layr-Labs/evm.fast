import InitECandidate.Solver.MemSafe.Rec.TxAcc
import InitECandidate.Solver.MemSafe.Rec.TxAuth

set_option autoImplicit false

/-!
# Rules for `decode_transaction_rlp` (step 1 of `research/notes/sonnet-txdec4-status.md`)

* `hoareG_iteT` / `hoareG_iteF`: an `if` whose outcome is statically known (a ghost value fixes the
  condition): only the taken branch is proved.
* `hoareG_callAL`: `x = f(args);` with a located spec `Lc` and a memory-dependent client predicate.
* `hoareG_decCallPreQD`: `var x = f(args); k` for a hand `SumSpecA` callee (precondition on the
  callee entry state, value fact `Q` that sees the final state), normal-end continuation.
* `hoareG_stDINE`: a multi-word store into the `DI` block with a memory-dependent client predicate.
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

theorem hoareG_iteT {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {p q : ProgHOL 64} {w0 : BitVec 64} (hw : w0 ≠ 0)
    (hc : ∀ s : State σ, InCtx s X → P s → ev s c = some (.val (.word w0)))
    (hp : HoareG σ X P p Q) : HoareG σ X P (.ite c p q) Q :=
  hoareG_ite (hoareG_pre hp (fun s _ h => h.1))
    (hoareG_false (fun s hs h => hw (by
      have := (hc s hs h.1).symm.trans h.2
      simpa using this)))

theorem hoareG_iteF {P : State σ → Prop} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {c : ExpHOL 64} {p q : ProgHOL 64}
    (hc : ∀ s : State σ, InCtx s X → P s → ev s c = some (.val (.word 0)))
    (hq : HoareG σ X P q Q) : HoareG σ X P (.ite c p q) Q :=
  hoareG_ite (hoareG_false (fun s hs ⟨hP, w, hw, hne⟩ => hne (by
      have := (hc s hs hP).symm.trans hw
      simpa using this.symm)))
    (hoareG_pre hq (fun s _ h => h.1))

theorem hoareG_callAL {a : Act σ} (ha : ActOK a X) {w f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {L L' : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    (hL : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64), L s.locals →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      isValidValueHOLExact s.toExact .local w v = true → L' (setVarHOLFinite w v s).locals)
    (hE : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COutA a sg' vs Γ Γ' q q' s st →
      isValidValueHOLExact s.toExact .local w v = true → E' Γ' q' st.memory st.globals) :
    HoareG σ X (DI a Ar n L E) (.call (some (some (.local, w), none)) f args) (DQ a Ar n L' E') := by
  refine hoareG_callA ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hval
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    refine ⟨fun _ => ⟨hL s st vs callee v hL0 hLc' hval, Γ', q', ext_trans he he', ?_,
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
    · exact heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local w v { st with locals := s.locals })
        rfl rfl rfl rfl hh'
    · exact hE s st vs callee v Γ Γ' p q' hs hL0 hvs hLc' he hh hB hn hEs
        ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hval
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA
      (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- `hoareG_callAL` whose locals update also sees the heap and the client predicate. -/
theorem hoareG_callALH {a : Act σ} (ha : ActOK a X) {w f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf : CSumm σ X a.Cb a.H f sg' []) (hLc : FunSpec σ X f Lc)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hlen : sg'.params.length = args.length)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    {Ar : BitVec 64} {n : Nat} {L L' : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    (hL : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ : Gam) (q : Ptrs),
      L s.locals → evs s args = some vs → Heap a Γ q s →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st →
      isValidValueHOLExact s.toExact .local w v = true → L' (setVarHOLFinite w v s).locals)
    (hE : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs →
      Lc vs (callEntryStateHOLFinite s callee) (.returned v) st → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COutA a sg' vs Γ Γ' q q' s st →
      isValidValueHOLExact s.toExact .local w v = true → E' Γ' q' st.memory st.globals) :
    HoareG σ X (DI a Ar n L E) (.call (some (some (.local, w), none)) f args) (DQ a Ar n L' E') := by
  refine hoareG_callA ((summ_funSpec hf).and hLc) ?_ ?_
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st ⟨hR, hLc'⟩ _ hval
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, -⟩ := heap_callMA ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    refine ⟨fun _ => ⟨hL s st vs callee v Γ p hL0 hvs hh hLc' hval, Γ', q', ext_trans he he', ?_,
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
    · exact heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local w v { st with locals := s.locals })
        rfl rfl rfl rfl hh'
    · exact hE s st vs callee v Γ Γ' p q' hs hL0 hvs hLc' he hh hB hn hEs
        ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ hval
  · intro s hs ⟨hL0, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    have hA : ArgsOK a.Cb Γ p sg'.params vs :=
      argsOK_any hps (by rw [evs_len2 hvs]; exact hlen)
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMA ha hh hR (abn_good' habn) hna hA
      (fun x hx => absurd hx (argCells_any hps)) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_decCallPreQD {a : Act σ} (ha : ActOK a X) {rn : MlS} {sh : ShapeHOL} {f : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    (hps : ∀ pt ∈ sg'.params, pt = .any) (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw)
    (hgr : sg'.grows = true → a.sg.grows = true) {Ar : BitVec 64} {n : Nat}
    {L : LocalsH → Prop} {E : Gam → Ptrs → Mem → LocalsH → Prop}
    {L' : ValueHOL 64 → LocalsH → Prop} {E' : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {L2 : ValueHOL 64 → LocalsH → Prop} {E2 : ValueHOL 64 → Gam → Ptrs → Mem → LocalsH → Prop}
    {Lf : LocalsH → Prop} {Ef : Gam → Ptrs → Mem → LocalsH → Prop} {k : ProgHOL 64}
    (hlen : ∀ s : State σ, InCtx s X → L s.locals → ∀ vs, evs s args = some vs →
      sg'.params.length = vs.length)
    (hL' : ∀ (s st : State σ) (v : ValueHOL 64), L s.locals →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      L' v (setVarHOLFinite rn v { st with locals := s.locals }).locals)
    (hPre : ∀ (s : State σ) (vs : List (ValueHOL 64)) (Γ : Gam) (q : Ptrs)
      (callee : HolFiniteMapExact MlS (ValueHOL 64)), InCtx s X →
      L s.locals → evs s args = some vs → Heap a Γ q s → E Γ q s.memory s.globals →
      Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (v : ValueHOL 64) (Γ Γ' : Gam) (q q' : Ptrs),
      InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ → Heap a Γ q s →
      BlkF Ar n Γ q → (∀ x : BitVec 64, Overlap Ar.toNat n x → ¬ a.p0.Allocated x.toNat) →
      E Γ q s.memory s.globals → COut a sg' Γ Γ' q q' s st →
      RetOK Γ' q q' vs sg'.ret v → Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ (Γ'' : Gam) (q'' : Ptrs), Ext a.Γ0 Γ'' ∧ Heap a Γ'' q'' st ∧ BlkF Ar n Γ'' q'' ∧
        E' v Γ'' q'' st.memory st.globals)
    (hk : ∀ v, HoareG σ X (DI a Ar n (L' v) (E' v)) k (DQ a Ar n (L2 v) (E2 v)))
    (hresL : ∀ (m0 m : LocalsH) (v : ValueHOL 64), L m0 → L2 v m →
      Lf (m.resVarEq (rn, m0.lookup rn)))
    (hresE : ∀ v Γ q mem g, E2 v Γ q mem g → Ef Γ q mem g) :
    HoareG σ X (DI a Ar n L E) (.decCall rn sh f args k) (DQ a Ar n Lf Ef) := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee v st hR _ hsh
    obtain ⟨Γ', q', he', hh', hmo, hnf, hnfp, hmod, hret, hQ⟩ := heap_callMPQ ha hh hR
      (by simp [Good]) (by simp [Abortive]) (argsOK_any hps (hlen s hs hL vs hvs)) hps
      (hPre s vs Γ p callee hs hL hvs hh hEs) hgw hgr
    obtain ⟨Γ'', q'', he'', hh'', hB'', hE''⟩ := hpost s st vs callee v Γ Γ' p q' hs hL hvs he hh hB
      hn hEs ⟨hh, he', hh', hmo, hnf, hnfp, hmod⟩ (hret v rfl) hQ hsh
    refine hoareG_conseq (hk v) (fun t _ ht => ?_) ?_
    · subst ht
      exact ⟨hL' s st v hL hsh, Γ'', q'', he'', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'',
        hB'', hn, hE''⟩
    · intro r t _ _ hq
      refine ⟨fun hr => ?_, fun r' hr' => ?_⟩
      · obtain ⟨hL2, Γ3, q3, he3, hh3, hB3, hn3, hE3⟩ := hq.1 hr
        exact ⟨hresL _ _ v hL hL2, Γ3, q3, he3,
          heap_congr (s := t) ha.hH
            (t := { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) })
            rfl rfl rfl rfl hh3, hB3, hn3, hresE _ _ _ _ _ hE3⟩
      · obtain ⟨h1, h2⟩ := hq.2 r' hr'
        refine ⟨h1, fun hna => ?_⟩
        obtain ⟨Γ3, q3, he3, hh3⟩ := h2 hna
        exact ⟨Γ3, q3, he3, heap_congr (s := t) ha.hH
          (t := { t with locals := t.locals.resVarEq (rn, s.locals.lookup rn) }) rfl rfl rfl rfl hh3⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ vs hvs callee r st hR _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callMPQ ha hh hR (abn_good' habn) hna
      (argsOK_any hps (hlen s hs hL vs hvs)) hps (hPre s vs Γ p callee hs hL hvs hh hEs) hgw hgr
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

theorem hoareG_stDINE {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop} {ea ev' : ExpHOL 64} (hrng : Ar.toNat + n < 2 ^ 64)
    (hall : ∀ s : State σ, InCtx s X → L s.locals → ∀ (w : BitVec 64) (v : ValueHOL 64),
      ev s ea = some (.val (.word w)) → ev s ev' = some v →
      ∃ j, 8 * j + 8 * (flattenHOL v).length ≤ n ∧ w = Ar + BitVec.ofNat 64 (8 * j))
    (hE : ∀ (s : State σ) (Γ : Gam) (q : Ptrs) (v : ValueHOL 64) (j : Nat) (mem : Mem),
      InCtx s X → L s.locals → ev s ev' = some v → 8 * j + 8 * (flattenHOL v).length ≤ n →
      ev s ea = some (.val (.word (Ar + BitVec.ofNat 64 (8 * j)))) →
      ModifiesOnly (fun y => ∃ i, i < (flattenHOL v).length ∧ y = Ar + BitVec.ofNat 64 (8 * (j + i)))
        s.memory mem → BlkF Ar n Γ q → E Γ q s.memory s.globals → E' Γ q mem s.globals) :
    HoareG σ X (DI a Ar n L E) (.store ea ev') (DQ a Ar n L E') := by
  refine hoareG_store fun s hs ⟨hL, Γ, p, he, hh, hB, hn, hEs⟩ w v mem hw hv hst => ?_
  obtain ⟨j, hj, hws⟩ := hall s hs hL w v hw hv
  obtain ⟨hm, hdom⟩ := Helpers.stores_mod hst
  have hcell : ∀ i, i < (flattenHOL v).length → Overlap Ar.toNat n (w + BitVec.ofNat 64 (8 * i)) := by
    intro i hi
    have e : w + BitVec.ofNat 64 (8 * i) = Ar + BitVec.ofNat 64 (8 * (j + i)) := by
      rw [hws, BitVec.add_assoc, BitVec.ofNat_add_ofNat]
      congr 2
      omega
    have h8 : (w + BitVec.ofNat 64 (8 * i)).toNat % 8 = 0 :=
      ha.hal _ (hs.2.1 ▸ hdom i hi)
    have ec := Node.cell_toNat_bv hrng (i := j + i) (by omega)
    rw [e, ec] at h8
    rw [e]
    exact ⟨by rw [ec]; exact h8, by rw [ec]; omega, by rw [ec]; omega⟩
  refine ⟨fun _ => ⟨hL, Γ, p, he, ?_, hB, hn, ?_⟩, fun r' h => absurd h (by simp)⟩
  · refine heap_store_buf ha hh hm (fun y ⟨i, hi, hy⟩ => Or.inr ?_) (fun y ⟨i, hi, hy⟩ => ?_)
    · subst hy; exact (hB _ (hcell i hi)).1
    · subst hy; exact Or.inr (Or.inr (Or.inl (hn _ (hcell i hi))))
  · refine hE s Γ p v j mem hs hL hv hj (by rw [← hws]; exact hw) ?_ hB hEs
    refine hm.mono ?_
    rintro y ⟨i, hi, hy⟩
    refine ⟨i, hi, ?_⟩
    rw [hy, hws, BitVec.add_assoc, BitVec.ofNat_add_ofNat]
    congr 2
    omega

end InitECandidate.Solver.MemSafe.Rec

#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_iteT
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_iteF
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_callAL
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_decCallPreQD
#print axioms InitECandidate.Solver.MemSafe.Rec.hoareG_stDINE
