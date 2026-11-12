import InitECandidate.Solver.MemSafe.Node.Blk

set_option autoImplicit false

/-!
# Fresh typed objects: block contents, stores, `heap_addObj`

See `Blk.lean`. `BlkW` tracks the words written into the allocated block; `heap_addObj` turns a
fully specified block into an object of `Γ` (tagged types and mixed slots allowed).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-! ## The block invariant with contents -/

/-- `BlkH` plus content: every slot `i ∈ D` of the block satisfies `Sp i`. -/
def BlkW (a : Act σ) (Ar : BitVec 64) (n : Nat) (Sp : Nat → BitVec 64 → Prop) (D : Nat → Prop)
    (u : State σ) : Prop :=
  BlkH a Ar n u ∧ ∀ i, D i → Sp i (rd u.memory (Ar + BitVec.ofNat 64 (8 * i)))

/-- The statement post: normal end keeps the locals and the block; abnormal ends keep `HHa`. -/
def BQW (a : Act σ) (L : LocalsH → Prop) (Ar : BitVec 64) (n : Nat) (Sp : Nat → BitVec 64 → Prop)
    (D : Nat → Prop) (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  (r = none → L t.locals ∧ BlkW a Ar n Sp D t) ∧
    ∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)

theorem hoareG_seqW {a : Act σ} {P : State σ → Prop} {L : LocalsH → Prop} {Ar : BitVec 64}
    {n : Nat} {Sp : Nat → BitVec 64 → Prop} {D : Nat → Prop} {c k : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r t, r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) → Q r t)
    (hc : HoareG σ X P c (BQW a L Ar n Sp D))
    (hk : HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) k Q) :
    HoareG σ X P (.seq c k) Q :=
  hoareG_seq hc (fun r t _ hr _ h => hQ r t hr h.2) (hoareG_pre hk fun _ _ h => h.1 rfl)

theorem cell_inj_bv {Ar : BitVec 64} {n i j : Nat} (hrng : Ar.toNat + n < 2 ^ 64)
    (hi : 8 * i + 8 ≤ n) (hj : 8 * j + 8 ≤ n)
    (h : Ar + BitVec.ofNat 64 (8 * i) = Ar + BitVec.ofNat 64 (8 * j)) : i = j := by
  have := congrArg BitVec.toNat h
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat] at this
  omega

theorem cell_toNat_bv {Ar : BitVec 64} {n i : Nat} (hrng : Ar.toNat + n < 2 ^ 64)
    (hi : 8 * i + 8 ≤ n) : (Ar + BitVec.ofNat 64 (8 * i)).toNat = Ar.toNat + 8 * i := by
  simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
  omega

/-- **A one-word store into slot `j` of the block.** The address is `Ar + 8 j`; the value is a
word satisfying `Sp j`. -/
theorem hoareG_stSlot {a : Act σ} (ha : ActOK a X) {L : LocalsH → Prop} {Ar : BitVec 64} {n : Nat}
    {Sp : Nat → BitVec 64 → Prop} {D : Nat → Prop} {j : Nat} {ea ev' : ExpHOL 64}
    (hrng : Ar.toNat + n < 2 ^ 64) (hD : ∀ i, D i → 8 * i + 8 ≤ n) (hj : 8 * j + 8 ≤ n)
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s ea = some (.val (.word w)) →
      w = Ar + BitVec.ofNat 64 (8 * j))
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s ev' = some v →
      ∃ x, v = .val (.word x) ∧ Sp j x) :
    HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (.store ea ev')
      (BQW a L Ar n Sp (fun i => D i ∨ i = j)) := by
  refine hoareG_store fun s hs ⟨hL, ⟨Γ, p, he, hh, hB, hn⟩, hmem⟩ w v mem hw hv hst => ?_
  obtain ⟨x, rfl, hx⟩ := hval s hs hL v hv
  have hws := haddr s hs hL w hw
  have hf : flattenHOL (ValueHOL.val (HolWordLab.word x) : ValueHOL 64) = [HolWordLab.word x] := by
    simp [flattenHOL]
  have hmem' := Struct.store_word hst
  have hst1 := hst
  rw [hf] at hst1
  obtain ⟨hm, hdom⟩ := Helpers.store1_mod hst1
  have hw8 : w.toNat % 8 = 0 := ha.hal w (hs.2.1 ▸ hdom)
  have hwn : w.toNat = Ar.toNat + 8 * j := by rw [hws]; exact cell_toNat_bv hrng hj
  have hov : Overlap Ar.toNat n w := ⟨hw8, by omega, by omega⟩
  refine ⟨fun _ => ⟨hL, ⟨⟨Γ, p, he, ?_, hB, hn⟩, ?_⟩⟩, fun r' h => absurd h (by simp)⟩
  · exact heap_store_buf ha hh hm (fun y hy => hy ▸ Or.inr (hB _ hov).1)
      (fun y hy => hy ▸ Or.inr (Or.inr (Or.inl (hn _ hov))))
  · intro i hi
    show Sp i (rd mem (Ar + BitVec.ofNat 64 (8 * i)))
    rw [hmem', Struct.rd_upd]
    by_cases hc : Ar + BitVec.ofNat 64 (8 * i) = w
    · have hij : i = j := by
        rcases hi with hi | hi
        · exact cell_inj_bv hrng (hD i hi) hj (hc.trans hws)
        · exact hi
      subst hij
      rw [if_pos hc]
      exact hx
    · rw [if_neg hc]
      refine hmem i ?_
      rcases hi with hi | rfl
      · exact hi
      · exact absurd hws.symm hc

/-- **`memzero` of the whole block** (`N = n` bytes at `Ar`, 8-aligned, `n < 2^63`): every slot
`i` with `Sp i 0` is done afterwards. -/
theorem hoareG_mzW {a : Act σ} (ha : ActOK a X)
    (hmz : CSumm σ X a.Cb a.H (nm "memzero") Helpers.sigMemzero [])
    (hmzv : FunSpec σ X (nm "memzero") (fun vs _ r t => ∀ v, r = .returned v → MzZ vs t))
    {L : LocalsH → Prop} {Ar N : BitVec 64} {n : Nat} {Sp : Nat → BitVec 64 → Prop}
    {D : Nat → Prop} {de ne : ExpHOL 64} (hA8 : Ar.toNat % 8 = 0) (hNn : N.toNat = n)
    (hN8 : n % 8 = 0) (hN63 : n < 2 ^ 63)
    (hev : ∀ s : State σ, InCtx s X → L s.locals →
      ev s de = some (.val (.word Ar)) ∧ ev s ne = some (.val (.word N))) :
    HoareG σ X (fun s => L s.locals ∧ BlkW a Ar n Sp D s) (callD (nm "memzero") [de, ne])
      (BQW a L Ar n Sp (fun i => 8 * i + 8 ≤ n ∧ Sp i 0)) := by
  refine hoareG_callD ((summ_funSpec hmz).and hmzv) ?_ ?_
  · intro s hs ⟨hL, ⟨Γ, p, he, hh, hB, hn⟩, hmem⟩ vs hvs callee v st ⟨hR, hZ⟩ _
    obtain ⟨hAr, hNe⟩ := hev s hs hL
    obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
    have hv1 : v1 = .val (.word Ar) := Option.some.inj (e1.symm.trans hAr)
    have hv2 : v2 = .val (.word N) := Option.some.inj (e2.symm.trans hNe)
    have hvs2 : vs2 = [] := Option.some.inj (q2.symm.trans evs_nil)
    subst hv1 hv2 hvs2
    have hargs : ArgsOK a.Cb Γ p Helpers.sigMemzero.params
        [.val (.word Ar), .val (.word N)] := by
      refine ⟨rfl, fun i pt w hpt hw => ?_⟩
      rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hpt hw <;> subst hpt <;> subst hw
      · exact ⟨Ar, N, rfl, rfl, bufOK_blk hB le_rfl (by omega)⟩
      · trivial
    have hfoot : ∀ x, ArgCells Helpers.sigMemzero.params [.val (.word Ar), .val (.word N)] x →
        a.Foot x := by
      intro x hx
      obtain ⟨i, w, hw, h⟩ := hx
      have hov : Overlap Ar.toNat n x := by
        rcases h with ⟨m, hn', -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
        · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hn'
        · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hj
          obtain ⟨rfl, rfl, rfl⟩ := hj
          simp [argW, wordOf] at hw hz
          subst hw; subst hz
          have := ho
          rw [hNn] at this
          simpa using this
      exact Or.inr (Or.inr (Or.inl (hn _ hov)))
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_call ha hh hR (by simp [Good])
      (by simp [Abortive]) hargs hfoot (by simp [Helpers.sigMemzero])
      (by simp [Helpers.sigMemzero])
    have hz := hZ v rfl Ar N rfl hA8 (by omega) (by omega)
    refine ⟨fun _ => ⟨hL, ⟨⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      blkF_after (heap_ord hh) (heap_ord hh') hmo hnf hB, hn⟩, ?_⟩⟩, fun r' h => absurd h (by simp)⟩
    rintro i ⟨hi, hSp⟩
    have h0 : st.memory (Ar + BitVec.ofNat 64 (8 * i)) = .word 0 := by
      have := hz (8 * i) (by omega) (by omega)
      exact this
    have : rd st.memory (Ar + BitVec.ofNat 64 (8 * i)) = 0 := by
      unfold rd; rw [h0]
    show Sp i (rd st.memory (Ar + BitVec.ofNat 64 (8 * i)))
    rw [this]
    exact hSp
  · intro s hs ⟨hL, ⟨Γ, p, he, hh, hB, hn⟩, hmem⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨fun h => absurd h (by simp), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨habn, fun hna => ?_⟩
    obtain ⟨hAr, hNe⟩ := hev s hs hL
    obtain ⟨v1, vs1, rfl, e1, q1⟩ := evs_cons_inv hvs
    obtain ⟨v2, vs2, rfl, e2, q2⟩ := evs_cons_inv q1
    have hv1 : v1 = .val (.word Ar) := Option.some.inj (e1.symm.trans hAr)
    have hv2 : v2 = .val (.word N) := Option.some.inj (e2.symm.trans hNe)
    have hvs2 : vs2 = [] := Option.some.inj (q2.symm.trans evs_nil)
    subst hv1 hv2 hvs2
    have hargs : ArgsOK a.Cb Γ p Helpers.sigMemzero.params
        [.val (.word Ar), .val (.word N)] := by
      refine ⟨rfl, fun i pt w hpt hw => ?_⟩
      rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hpt hw <;> subst hpt <;> subst hw
      · exact ⟨Ar, N, rfl, rfl, bufOK_blk hB le_rfl (by omega)⟩
      · trivial
    have hfoot : ∀ x, ArgCells Helpers.sigMemzero.params [.val (.word Ar), .val (.word N)] x →
        a.Foot x := by
      intro x hx
      obtain ⟨i, w, hw, h⟩ := hx
      have hov : Overlap Ar.toNat n x := by
        rcases h with ⟨m, hn', -⟩ | ⟨j, c, d, z, hj, hz, ho⟩
        · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hn'
        · rcases i with _ | _ | i <;> simp [Helpers.sigMemzero] at hj
          obtain ⟨rfl, rfl, rfl⟩ := hj
          simp [argW, wordOf] at hw hz
          subst hw; subst hz
          have := ho
          rw [hNn] at this
          simpa using this
      exact Or.inr (Or.inr (Or.inl (hn _ hov)))
    obtain ⟨Γ', q', he', hh', -⟩ := heap_call ha hh hR (abn_good' habn) hna hargs hfoot
      (by simp [Helpers.sigMemzero]) (by simp [Helpers.sigMemzero])
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.hoareG_stSlot
#print axioms InitECandidate.Solver.MemSafe.Node.hoareG_mzW
