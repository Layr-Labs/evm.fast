import InitECandidate.Solver.MemSafe.Rec.TxRecV2
import InitECandidate.Solver.MemSafe.Rec.TxTile

set_option autoImplicit false

/-!
# `decode_transaction_rlp`: `lst = rlp_list_to_slices(top.1, top.2)`, `arr = lst.0`, the field-count guard, `txrV`
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
open InitECandidate.Solver.Spec.Mpt.Dec (SlPre FreshFoot SIn)
open InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem txrExL {β : Type} {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : β → LocalsH → Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : ∀ x, HoareG σ X (DI a Ar n (L x) E) c Q) :
    HoareG σ X (DI a Ar n (fun m => ∃ x, L x m) E) c Q :=
  fun s hs ⟨⟨x, hx⟩, rest⟩ hg => h x s hs ⟨hx, rest⟩ hg

theorem hoareG_exP {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop} {P : Prop}
    {E : Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : P → HoareG σ X (DI a Ar n L E) c Q) :
    HoareG σ X (DI a Ar n (fun m => L m ∧ P) E) c Q :=
  fun s hs ⟨⟨hl, hp⟩, rest⟩ hg => h hp s hs ⟨hl, rest⟩ hg

def txrL1 (Ar : BitVec 64) (tt : Nat) (Pt Nt : BitVec 64) (m : LocalsH) : Prop :=
  LV [(nm "tx", Wd Ar), (nm "t", Wd (BitVec.ofNat 64 tt)),
    (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt)))] m ∧
  ∃ a' d' : BitVec 64, m.lookup (nm "top") = some (.rStruct [Wd a', Wd Pt, Wd Nt, Wd d'])

theorem txrL1_set {Ar Pt Nt : BitVec 64} {tt : Nat} {s : State σ} {x : MlS} (hx : x ≠ nm "tx" ∧ x ≠ nm "t" ∧
    x ≠ nm "nfields" ∧ x ≠ nm "top") (v : ValueHOL 64) (h : txrL1 Ar tt Pt Nt s.locals) :
    txrL1 Ar tt Pt Nt (setVarHOLFinite x v s).locals := by
  obtain ⟨h1, a', d', h2⟩ := h
  refine ⟨?_, a', d', ?_⟩
  · intro q hq
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hq
    rcases hq with rfl | rfl | rfl
    · rw [lk_set_ne _ _ hx.1]; exact h1 (nm "tx", Wd Ar) (by simp)
    · rw [lk_set_ne _ _ hx.2.1]; exact h1 (nm "t", Wd (BitVec.ofNat 64 tt)) (by simp)
    · rw [lk_set_ne _ _ hx.2.2.1]; exact h1 (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt))) (by simp)
  · rw [lk_set_ne _ _ hx.2.2.2]; exact h2


theorem txrDiE {a : Act σ} {Ar : BitVec 64} {n : Nat} {L : LocalsH → Prop}
    {E E2 : Gam → Ptrs → Mem → LocalsH → Prop} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hE : ∀ Γ q mem g, E Γ q mem g → E2 Γ q mem g) (h : HoareG σ X (DI a Ar n L E2) c Q) :
    HoareG σ X (DI a Ar n L E) c Q :=
  hoareG_pre h (fun s _ hD => di_mono (fun _ x => x) hE hD)

theorem txr_Lst {a : Act σ} (ha : ActOK a X) (hcs : TxCS X a) (hgr : a.sg.grows = true)
    {Ar Pt Nt : BitVec 64} (hAr : Ar.toNat % 8 = 0 ∧ Ar.toNat + 400 ≤ heapEnd)
    (hAb : heapBase ≤ Ar.toNat) (tt : Nat) (htt : tt ≤ 4)
    (hPN : heapBase ≤ Pt.toNat ∧ Pt.toNat + Nt.toNat ≤ a.p0.hp)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}
    (hRv : ∀ Γ' p' mem tx, (∃ o ∈ Γ', o.base = tx ∧ o.ty = Types.tTX) → TxK tx Pt Nt mem → Rv Γ' p' mem (Wd tx)) :
    HoareG σ X (DI a Ar 400 (txrL1 Ar tt Pt Nt) (EZ Ar)) txrLst (NQM a Rv) := by
  have hse := heapEnd_lt64
  unfold txrLst
  have hps : ∀ pt ∈ rlsSig.params, pt = .any := by simp [rlsSig]
  refine hoareG_decCallDIM ha hcs.rls (freshFoot_rlp_list_to_slices_tile hcs.hC) hps (by simp [rlsSig])
    (by simp [rlsSig])
    (L' := fun v m => ∃ A c : BitVec 64, (txrL1 Ar tt Pt Nt m ∧ m.lookup (nm "lst") = some v) ∧
      v = .rStruct [Wd A, Wd c])
    (E' := fun v Γ q mem g => EZ Ar Γ q mem g ∧ ∀ A c : BitVec 64,
      v = .rStruct [Wd A, Wd c] → EAr a Ar A c Pt Nt Γ q mem) ?_ ?_ ?_ ?_
  · intro s' hs hL vs hvs
    rw [evs_len2 hvs]; simp [rlsSig]
  · intro s' st v hL hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    exact ⟨x, y, ⟨txrL1_set (s := ({ st with locals := s'.locals } : State σ))
      ⟨by decide, by decide, by decide, by decide⟩ _ hL, lk_set_self _ _ _⟩, rfl⟩
  · intro s' st vs callee v Γ Γ' q q' hs hL hvs hLc he hh hB hn hE co hsh
    obtain ⟨x, y, rfl⟩ := rstruct_of_shape hsh
    obtain ⟨hl1, a', d', htop⟩ := hL
    rw [evs_cons (Spec.Mpt.Dec.ev_rfield_w htop rfl) (evs_cons (Spec.Mpt.Dec.ev_rfield_w htop rfl) evs_nil)] at hvs
    cases hvs
    have hpe : ptrsOf (callEntryStateHOLFinite s' callee) = some q := hh.2.1
    have hmo0 : a.p0.hp ≤ q.hp := hh.2.2.1.1
    obtain ⟨p', hp', hord', hmo, -, hQ⟩ := hLc _ rfl q hpe (heap_ord hh)
      ⟨Pt, Nt, rfl, hPN.1, q, hpe, by omega⟩
    have hp'q : p' = q' := Option.some.inj (hp'.symm.trans co.heap.2.1)
    subst hp'q
    obtain ⟨h0, h1, hrest⟩ := hQ x y rfl
    obtain ⟨hsin, hcn, -, -⟩ := hrest Pt Nt rfl
    have hqo := (heap_ord co.heap).2.1
    have hEZ := ez_call hcs.hCb hAr rlsSig [Wd Pt, Wd Nt] Γ Γ' q p' s' st s'.globals st.globals
        (coa_of_co co _) (fun x hx => argCells_any hps hx) hB hE
    refine ⟨Γ', p', ext_trans he co.ext, co.heap,
      blkF_after (heap_ord hh) (heap_ord co.heap) co.mono co.nf hB, hEZ, ?_⟩
    · intro A c hv
      simp only [ValueHOL.rStruct.injEq, List.cons.injEq, Wd, ValueHOL.val.injEq,
        HolWordLab.word.injEq, and_true] at hv
      obtain ⟨rfl, rfl⟩ := hv
      refine ⟨fzB_arr co.heap0 co.heap (co.nfp rfl) (fun hn => h0 (by omega)) h1, hsin, hPN.1, hPN.2,
        by omega, ?_, Or.inl hEZ.2, fun j hj => ?_⟩
      swap
      · rw [hEZ.1.2.1 rfl] at hj
        exact absurd hj (by simp)
      intro z hz ⟨hz1, hz2⟩
      have hal := (hB z hz).2
      have hpos : 0 < y.toNat := by omega
      have hq := h0 hpos
      unfold Ptrs.Allocated at hal
      obtain ⟨hz8, hz3, hz4⟩ := hz
      have hord := heap_ord hh
      obtain ⟨o1, o2, o3, o4, o5, -, -, -⟩ := hord
      obtain ⟨hAr1, hAr2⟩ := hAr
      unfold heapBase heapEnd scratchEnd at *
      omega
  · intro v
    refine txrExL (fun A => txrExL (fun c => ?_))
    refine hoareG_exP (fun hv => ?_)
    subst hv
    have hnf : txrNfOf tt ≤ 14 := by interval_cases tt <;> simp [txrNfOf]
    refine hoareG_decDIM ha.hH (L' := fun m => ((txrL1 Ar tt Pt Nt m ∧
      m.lookup (nm "lst") = some (.rStruct [Wd A, Wd c])) ∧ m.lookup (nm "arr") = some (Wd A))) ?_ ?_
    · intro s hs hL v' hv'
      rw [Spec.Mpt.Dec.ev_rfield_w hL.2 rfl] at hv'
      cases hv'
      refine ⟨⟨txrL1_set (s := s) ⟨by decide, by decide, by decide, by decide⟩ _ hL.1, ?_⟩,
        lk_set_self _ _ _⟩
      rw [lk_set_ne _ _ (by decide : nm "arr" ≠ nm "lst")]; exact hL.2
    · refine hoareG_seqDIM (hoareG_guardDL ha.hH
        (L' := fun m => ((txrL1 Ar tt Pt Nt m ∧ m.lookup (nm "lst") = some (.rStruct [Wd A, Wd c])) ∧
          m.lookup (nm "arr") = some (Wd A)) ∧ c = BitVec.ofNat 64 (txrNfOf tt)) ?_) ?_
      · intro s hs hL hc
        obtain ⟨⟨⟨h1, a', d', htop⟩, hlst⟩, harr⟩ := hL
        have hnfl := h1 (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt))) (by simp)
        rw [ev_cmp (Spec.Mpt.Dec.ev_rfield_w hlst rfl) (ev_lw hnfl)] at hc
        have hc' : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual c (BitVec.ofNat 64 (txrNfOf tt)) = false := by
          by_contra hne
          have : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .notEqual c (BitVec.ofNat 64 (txrNfOf tt)) = true := by
            simpa using hne
          rw [if_pos this] at hc
          simp at hc
        exact ⟨⟨⟨⟨h1, a', d', htop⟩, hlst⟩, harr⟩, ne_false hc'⟩
      · refine hoareG_exP (fun hceq => ?_)
        have hcnt : c.toNat = txrNfOf tt := by
          rw [hceq, BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt (by omega)
        refine txrDiE (E2 := ET2 a Ar A c Pt Nt true true) (fun Γ q mem g ⟨hz, hE⟩ => ⟨hz.1, hE A c rfl⟩)
          (hoareG_diL (txr_V ha hcs hgr hAr hAb tt htt hcnt hRv (A := A) (Pt := Pt) (Nt := Nt)) ?_)
        rintro m ⟨⟨⟨h1, -⟩, -⟩, harr⟩
        intro q hq
        simp only [txrLB, List.mem_cons, List.not_mem_nil, or_false] at hq
        rcases hq with rfl | rfl | rfl | rfl
        · exact h1 (nm "tx", Wd Ar) (by simp)
        · exact harr
        · exact h1 (nm "t", Wd (BitVec.ofNat 64 tt)) (by simp)
        · exact h1 (nm "nfields", Wd (BitVec.ofNat 64 (txrNfOf tt))) (by simp)

end InitECandidate.Solver.MemSafe.Rec
