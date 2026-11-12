import InitECandidate.Solver.MemSafe.Loc.DecTail

set_option autoImplicit false

/-!
# `decode_account_from_leaf`: the nonempty guards and one `rlp_item` call (sonnet-loc)

* `rlpItem_nz`, `rdf_nz`: `rlp_item` / `rlp_decode_fully` never return on an empty input.
* `item_call`: `var fk = rlp_item(arr[k].ptr, arr[k].len); K` keeps the footprint trackers and
  locates the item `fk` inside `[lo, hi)`.
-/

set_option maxRecDepth 1000000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Loc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
open InitECandidate.Solver.MemSafe.Integ
open InitECandidate.Solver.Spec.Mpt.Dec (Tk tk_callee tk2_callee shape_valid SIn SLen FreshFoot SlPre SlQ)
open InitECandidate.Solver.Spec.Mpt.Leaves (hoare_decL hoare_decCallL freshFoot_rlp_item'
  freshFoot_rlp_decode_fully' freshFoot_rlp_list_to_slices RiL RiQL riBody rdfBody
  code_rlp_item code_rlp_decode_fully ev_lv')

variable {σ : Type} {X : Ctx 64}

theorem rlpItem_nz (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_item") (fun vs _ r _ => ∀ v, r = .returned v →
      ∀ (x : ValueHOL 64) (L : BitVec 64), vs = [x, .val (.word L)] → L ≠ 0) := by
  refine funSpec_of_hoare (R := fun vs _ _ _ => ∀ (x : ValueHOL 64) (L : BitVec 64),
    vs = [x, .val (.word L)] → L ≠ 0) fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_item (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hlen : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  unfold riBody
  refine hoare_guard_seq (funRet_rlp_fail hC) ?_
  intro t ht ⟨hts, hc⟩ _ v hv x L' hvs
  subst hts
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨-, rfl⟩ := hvs
  have h1 := Spec.equal_false (cmp_val_false hc (ev_lv' hlen) (ev_cw _ 0))
  intro h0
  apply h1
  rw [h0]; rfl

theorem rdf_nz (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "rlp_decode_fully") (fun vs _ r _ => ∀ v, r = .returned v →
      ∀ P L : BitVec 64, vs = [.val (.word P), .val (.word L)] → L ≠ 0) := by
  refine funSpec_of_hoare (R := fun vs _ _ _ => ∀ P L : BitVec 64,
    vs = [.val (.word P), .val (.word L)] → L ≠ 0) fun vs body callee rs hl s0 _ hloc => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A, B, rfl, hsA, hsB, hA, hB⟩ := lookupCode_two code_rlp_decode_fully (by decide) hl
  obtain ⟨P, rfl⟩ := val_of_shapeEq_one hsA
  obtain ⟨L, rfl⟩ := val_of_shapeEq_one hsB
  have hlp : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hll : s0.locals.lookup (nm "len") = some (.val (.word L)) := by rw [hloc]; exact hB
  unfold rdfBody
  refine hoare_decCallL (rlpItem_nz hC) (fun _ _ _ h => h) fun s _ hs0 vs' hvs callee' v st hR _ hsh => ?_
  subst s
  rw [evs_cons (ev_lv' hlp) (evs_cons (ev_lv' hll) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hne := hR v rfl _ L rfl
  intro t _ _ _ v' _ P' L' hvs'
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨-, rfl⟩ := hvs'
  exact hne


theorem toNat_off {A : BitVec 64} {k : Nat} (h : A.toNat + k < 2 ^ 64) :
    (A + BitVec.ofNat 64 k).toNat = A.toNat + k := by
  rw [BitVec.toNat_add, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (a := k) (by omega)]
  exact Nat.mod_eq_of_lt h

theorem rd_tk {ps : Ptrs} {Ms : Mem} {t : State σ} (h : Tk ps Ms t) {a : BitVec 64}
    (hl : heapBase ≤ a.toNat) (hh : a.toNat < ps.hp) : rd t.memory a = rd Ms a := by
  obtain ⟨-, -, -, -, hf⟩ := h
  by_cases e : t.memory a = Ms a
  · unfold rd; rw [e]
  · exact absurd (Or.inl ⟨hl, hh⟩) (hf a e)

theorem tk_congr {p : Ptrs} {M0 : Mem} {t t' : State σ} (h : Tk p M0 t) (hm : t'.memory = t.memory)
    (hg : t'.globals = t.globals) : Tk p M0 t' := by
  obtain ⟨q, hq, ho, hmono, hf⟩ := h
  exact ⟨q, (Spec.Mpt.ptrsOf_frame hg).trans hq, ho, hmono, fun a ha => hf a (by rw [← hm]; exact ha)⟩

def BaseS (q : Ptrs) (M0 : Mem) (ps : Ptrs) (Ms : Mem) (A Ar : BitVec 64) (t : State σ) : Prop :=
  Tk q M0 t ∧ Tk ps Ms t ∧ t.locals.lookup (nm "arr") = some (.val (.word Ar)) ∧
    t.locals.lookup (nm "acct_out") = some (.val (.word A))

theorem ev_ldArr {s : State σ} {Ar : BitVec 64}
    (harr : s.locals.lookup (nm "arr") = some (.val (.word Ar))) (i : Nat) (hi : 16 * i < 2 ^ 64) :
    ∀ v, ev s (daLd i) = some v → v = .val (.word (rd s.memory (Ar + BitVec.ofNat 64 (16 * i)))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (ev_lw harr) (ev_mul2 (ev_cw _ i) (ev_cw _ 16))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  have : Ar + BitVec.ofNat 64 i * BitVec.ofNat 64 16 = Ar + BitVec.ofNat 64 (16 * i) := by
    congr 1
    apply BitVec.eq_of_toNat_eq
    simp only [BitVec.toNat_mul, BitVec.toNat_ofNat]
    omega
  rw [this, Spec.Mpt.mem_word s.memory _]


theorem item_call (hC : X.code.lookup = guestCode) {q ps : Ptrs} {M0 Ms : Mem} {A Ar : BitVec 64}
    {lo hi : Nat} (k : Nat) (hk : k < 4) (fk : MlS) (hfk1 : fk ≠ nm "arr") (hfk2 : fk ≠ nm "acct_out")
    (hSI : SIn Ms Ar 4 lo hi) (hAr : heapBase ≤ Ar.toNat) (hAr2 : Ar.toNat + 64 ≤ ps.hp)
    (hpsh : ps.hp ≤ heapEnd) (hhi : hi < 2 ^ 64)
    {Lx : Locs → Prop} (hLx : ∀ (s : State σ) (v : ValueHOL 64), Lx s.locals →
      Lx (setVarHOLFinite fk v s).locals)
    {K : ProgHOL 64} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hQ : ∀ r (t : State σ) L, Q r t → Q r { t with locals := L })
    (hK : Hoare σ X (fun t => BaseS q M0 ps Ms A Ar t ∧ Lx t.locals ∧ ItLoc fk lo hi t.locals) K Q) :
    Hoare σ X (fun t => BaseS q M0 ps Ms A Ar t ∧ Lx t.locals)
      (.decCall fk dsh4 (nm "rlp_item") [daLd k, daLd8 k] K) Q := by
  have hE : heapEnd < 2 ^ 62 := by decide
  refine hoare_decCallL (freshFoot_rlp_item' hC) hQ fun s hs hB vs hvs callee v st hR hst hsh => ?_
  obtain ⟨⟨hTq, hTs, harr, hacc⟩, hLx0⟩ := hB
  obtain ⟨x1, r1, rfl, hx1, hr1⟩ := evs_cons_inv hvs
  obtain ⟨x2, r2, rfl, hx2, hr2⟩ := evs_cons_inv hr1
  simp only [evs, evalListHOLExact, Option.some.injEq] at hr2
  subst hr2
  have e1 := ev_ldArr harr k (by omega) _ hx1
  have e2 := Spec.Mpt.Dec.ev_ldArr8 harr k (by omega) _ hx2
  subst e1; subst e2
  obtain ⟨hlo1, hhi1⟩ := hSI k hk
  have o1 := toNat_off (A := Ar) (k := 16 * k) (by omega)
  have o2 := toNat_off (A := Ar) (k := 16 * k + 8) (by omega)
  have c1 : rd s.memory (Ar + BitVec.ofNat 64 (16 * k)) = rd Ms (Ar + BitVec.ofNat 64 (16 * k)) :=
    rd_tk hTs (by omega) (by omega)
  have c2 : rd s.memory (Ar + BitVec.ofNat 64 (16 * k + 8)) =
      rd Ms (Ar + BitVec.ofNat 64 (16 * k + 8)) := rd_tk hTs (by omega) (by omega)
  rw [c1, c2] at hR
  obtain ⟨q1, hq1, hord1, hmq1, hfq1⟩ := hTq
  have hTq' : Tk q M0 s := ⟨q1, hq1, hord1, hmq1, hfq1⟩
  obtain ⟨q', hq', hord', hm', hf', Pp, Ll, hvs', hRi⟩ :=
    hR _ rfl q1 ((Spec.Mpt.ptrsOf_frame rfl).trans hq1) hord1 trivial
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs'
  obtain ⟨rfl, rfl⟩ := hvs'
  obtain ⟨hT1, hT2⟩ := tk2_callee hTq' hTs hq1 hq' hord' hm' hf'
  obtain ⟨⟨i0, i1, i2, i3⟩, rfl⟩ := w4_of_shape hsh
  obtain ⟨-, hloc⟩ := hRi i0 i1 i2 i3 rfl
  have hloc := hloc (by omega)
  refine hoare_pre hK fun t _ ht => ?_
  subst ht
  refine ⟨⟨tk_congr hT1 rfl rfl, tk_congr hT2 rfl rfl, ?_, ?_⟩, hLx _ _ hLx0,
    i0, i1, i2, i3, lk_set_self _ _ _, by omega, by omega⟩
  · rw [lk_set_ne _ _ hfk1]; exact harr
  · rw [lk_set_ne _ _ hfk2]; exact hacc

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.item_call
#print axioms InitECandidate.Solver.MemSafe.Loc.rdf_nz
