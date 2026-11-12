import InitECandidate.Solver.MemSafe.Rec.DecPayEP

set_option autoImplicit false

/-!
# `decode_payload`: the last eleven stores and the return (`dpE`)
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Rec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec (SIn)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Types (tPL tSLA)
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

theorem ofNat_cancel {Ar : BitVec 64} {x y : Nat} (hx : x < 2 ^ 64) (hy : y < 2 ^ 64)
    (h : Ar + BitVec.ofNat 64 x = Ar + BitVec.ofNat 64 y) : x = y := by
  have h2 : BitVec.ofNat 64 x = BitVec.ofNat 64 y := by
    have := congrArg (fun z => z - Ar) h
    simpa using this
  have := congrArg BitVec.toNat h2
  rwa [BitVec.toNat_ofNat, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hx, Nat.mod_eq_of_lt hy] at this

/-- A store into the record, the known words kept. -/
theorem dp_st_keepK {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 136 ≤ heapEnd) {k j : Nat} (hkj : k = 8 * j) (hj : 8 * j + 8 ≤ 136)
    {L : LocalsH → Prop} (hpl : ∀ m, L m → m.lookup (nm "pl") = some (.val (.word Ar)))
    {e : ExpHOL 64}
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      ∃ x, v = .val (.word x)) {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    {ks : List (Nat × BitVec 64)} (hks : ∀ kv ∈ ks, kv.1 ≠ j)
    (hE : ∀ Γ q m mem g, (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y) → BlkF Ar 136 Γ q →
      E Γ q m g → E' Γ q mem g) :
    HoareG σ X (DI a Ar 136 L (EKw E 136 Ar ks)) (dpSt k e) (DQ a Ar 136 L (EKw E' 136 Ar ks)) := by
  subst hkj
  have hse := heapEnd_lt64
  unfold dpSt
  refine hoareG_stDI ha (by omega) ?_ hval ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hpl _ hL)) (ev_cw _ (8 * j))] at hw
    cases hw
    exact ⟨j, hj, rfl⟩
  · intro s Γ q j' x mem hs hL hj' ha' hv' hrd hmem hB hE0
    rw [ev_add2 (ev_lw (hpl _ hL)) (ev_cw _ (8 * j))] at ha'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha'
    have h88 := ofNat_cancel (by omega) (by omega) ha'
    have hjj : j' = j := by omega
    subst hjj
    exact ⟨hE _ _ _ _ _ hmem hB hE0.1, rk_store hAr hj' hks hmem hE0.2⟩

/-- A store into the record that adds a known word. -/
theorem dp_st_addK {a : Act σ} (ha : ActOK a X) {Ar : BitVec 64}
    (hAr : Ar.toNat + 136 ≤ heapEnd) {k j : Nat} (hkj : k = 8 * j) (hj : 8 * j + 8 ≤ 136)
    {L : LocalsH → Prop} (hpl : ∀ m, L m → m.lookup (nm "pl") = some (.val (.word Ar)))
    {e : ExpHOL 64} {x : BitVec 64}
    (hval : ∀ s : State σ, InCtx s X → L s.locals → ev s e = some (.val (.word x)))
    {E E' : Gam → Ptrs → Mem → LocalsH → Prop}
    {ks : List (Nat × BitVec 64)} (hks : ∀ kv ∈ ks, kv.1 ≠ j)
    (hE : ∀ Γ q m mem g, (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y) → BlkF Ar 136 Γ q →
      E Γ q m g → E' Γ q mem g) :
    HoareG σ X (DI a Ar 136 L (EKw E 136 Ar ks)) (dpSt k e)
      (DQ a Ar 136 L (EKw E' 136 Ar ((j, x) :: ks))) := by
  subst hkj
  have hse := heapEnd_lt64
  unfold dpSt
  refine hoareG_stDI ha (by omega) ?_ (fun s hs hL v hv => ⟨x, ?_⟩) ?_
  · intro s hs hL w hw
    rw [ev_add2 (ev_lw (hpl _ hL)) (ev_cw _ (8 * j))] at hw
    cases hw
    exact ⟨j, hj, rfl⟩
  · rw [hval s hs hL] at hv
    exact (Option.some.inj hv).symm
  · intro s Γ q j' x' mem hs hL hj' ha' hv' hrd hmem hB hE0
    rw [ev_add2 (ev_lw (hpl _ hL)) (ev_cw _ (8 * j))] at ha'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at ha'
    have h88 := ofNat_cancel (by omega) (by omega) ha'
    have hjj : j' = j := by omega
    subst hjj
    rw [hval s hs hL] at hv'
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv'
    subst hv'
    refine ⟨hE _ _ _ _ _ hmem hB hE0.1, ?_⟩
    intro kv hkv
    rcases List.mem_cons.mp hkv with rfl | hkv
    · exact ⟨hj', hrd⟩
    · exact rk_store hAr hj' hks hmem hE0.2 kv hkv


/-- The locals of the tail. -/
def LE (Pv Lv Ar O3 O4 Nw : BitVec 64) (m : LocalsH) : Prop :=
  m.lookup (nm "p") = some (.val (.word Pv)) ∧ m.lookup (nm "len") = some (.val (.word Lv)) ∧
    m.lookup (nm "pl") = some (.val (.word Ar)) ∧ m.lookup (nm "o_wd") = some (.val (.word O3)) ∧
    m.lookup (nm "o_bal") = some (.val (.word O4)) ∧ m.lookup (nm "nwd") = some (.val (.word Nw))

theorem opw {s : State σ} {o : Flapjack.BinOp} {es : List (ExpHOL 64)}
    (_ : True) : ∀ v, ev s (.op o es) = some v → ∃ x, v = .val (.word x) :=
  fun _ hv => ev_op_word hv

/-- `ES` under a store into the record. -/
theorem es_st {Ar : BitVec 64} (hAr : Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0) {j : Nat}
    (hj : 8 * j + 8 ≤ 136) {Pn Nn : Nat} {arr cnt : BitVec 64} :
    ∀ Γ q m mem g, (∀ y, y ≠ Ar + BitVec.ofNat 64 (8 * j) → mem y = m y) → BlkF Ar 136 Γ q →
      Ew (ES Pn Nn arr cnt) Γ q m g → Ew (ES Pn Nn arr cnt) Γ q mem g :=
  fun _ _ _ _ _ hmem hB h => es_store hAr hA8 hj hB hmem h

theorem dp_E {a : Act σ} (ha : ActOK a X) (hC : a.C = Types.guestC)
    (hH : a.H = Hooks.guestHooksR) (hgr : a.sg.grows = true)
    (hret : a.sg.ret = [.fits (.ptr tPL)]) {Ar : BitVec 64}
    (hs : heapBase ≤ Ar.toNat ∧ Ar.toNat + 136 ≤ heapEnd) (hA8 : Ar.toNat % 8 = 0)
    {Pn Nn : Nat} {arr cnt Pv Lv O3 O4 Nw : BitVec 64}
    (hx : ObjN a.Γ0 Pn Nn) (hfee : Hooks.SlObj a.Γ0 (Pv + BitVec.ofNat 64 32) (BitVec.ofNat 64 20))
    (hN : Nw.toNat < 2 ^ 32) (hwd : Hooks.SlObj a.Γ0 (Pv + O3) (BitVec.ofNat 64 (44 * Nw.toNat))) :
    HoareG σ X (DI a Ar 136 (LE Pv Lv Ar O3 O4 Nw)
        (EKw (Ew (ES Pn Nn arr cnt)) 136 Ar [(5, cnt), (4, arr), (0, Pv)])) dpE
      (Node.NQ a (fun Γ' p' v => RetOK Γ' a.p0 p' a.vs a.sg.ret v)) := by
  have hpl : ∀ m, LE Pv Lv Ar O3 O4 Nw m → m.lookup (nm "pl") = some (.val (.word Ar)) :=
    fun m h => h.2.2.1
  unfold dpE
  have hsw := hs.1
  have hAr := hs.2
  refine hoareG_seqDI (dp_st_addK ha hAr (k := 48) (j := 6) (by decide) (by decide) hpl
    (x := Pv + O3) (fun s _ hL => ev_add2 (ev_lw hL.1) (ev_lw hL.2.2.2.1))
    (by simp) (es_st hAr hA8 (by decide))) ?_
  refine hoareG_seqDI (dp_st_addK ha hAr (k := 56) (j := 7) (by decide) (by decide) hpl
    (x := Nw) (fun s _ hL => ev_lw hL.2.2.2.2.2)
    (by simp) (es_st hAr hA8 (by decide))) ?_
  have K : ∀ {k j : Nat}, k = 8 * j → 8 * j + 8 ≤ 136 → 8 ≤ j → ∀ {e : ExpHOL 64},
      (∀ s : State σ, InCtx s X → LE Pv Lv Ar O3 O4 Nw s.locals → ∀ v, ev s e = some v →
        ∃ x, v = .val (.word x)) →
      HoareG σ X (DI a Ar 136 (LE Pv Lv Ar O3 O4 Nw) (EKw (Ew (ES Pn Nn arr cnt)) 136 Ar
          [(7, Nw), (6, Pv + O3), (5, cnt), (4, arr), (0, Pv)])) (dpSt k e)
        (DQ a Ar 136 (LE Pv Lv Ar O3 O4 Nw) (EKw (Ew (ES Pn Nn arr cnt)) 136 Ar
          [(7, Nw), (6, Pv + O3), (5, cnt), (4, arr), (0, Pv)])) := by
    intro k j hkj hj h8 e hval
    refine dp_st_keepK ha hAr hkj hj hpl hval ?_ (es_st hAr hA8 hj)
    intro kv hkv
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hkv
    rcases hkv with rfl | rfl | rfl | rfl | rfl <;> simp <;> omega
  refine hoareG_seqDI (K (k := 64) (j := 8) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 72) (j := 9) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 80) (j := 10) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 88) (j := 11) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 96) (j := 12) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 104) (j := 13) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 112) (j := 14) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 120) (j := 15) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  refine hoareG_seqDI (K (k := 128) (j := 16) (by decide) (by decide) (by decide) ?_) ?_
  · intro s _ _ v hv; exact ev_op_word hv
  exact dp_ret ha hC hH hgr hret hs hA8 hx hfee hN hwd hpl

end InitECandidate.Solver.MemSafe.Rec
