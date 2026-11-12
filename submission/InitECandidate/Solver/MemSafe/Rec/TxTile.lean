import InitECandidate.Solver.Spec.Mpt.Leaves.Slices

set_option autoImplicit false

/-!
# `rlp_list_to_slices`, tiling variant

Same proof as `freshFoot_rlp_list_to_slices` (`Spec/Mpt/Leaves/Slices.lean`), with a stronger post `TlQ`:
besides the slices lying inside `[P, P + N)`, the count is `<= N`, every slice has length `>= 1`, and the
slice lengths sum to at most `N` (the slices tile the payload).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Mpt.Leaves
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Dec

variable {σ : Type} {X : Ctx 64}

open MemSafe (rd ptrsOf Ptrs heapEnd heapBase scratchEnd)

/-- The sum of the lengths of the first `c` slices of the array at `a`. -/
def sumLen (M : MemSafe.Mem) (a : BitVec 64) : Nat → Nat
  | 0 => 0
  | c + 1 => sumLen M a c + (rd M (a + BitVec.ofNat 64 (16 * c + 8))).toNat

def TlQ (vs : List (ValueHOL 64)) (p p' : Ptrs) (M : MemSafe.Mem) (v : ValueHOL 64) : Prop :=
  ∀ arr cnt : BitVec 64, v = .rStruct [.val (.word arr), .val (.word cnt)] →
    (0 < cnt.toNat → p.hp ≤ arr.toNat) ∧ arr.toNat + 16 * cnt.toNat ≤ p'.hp ∧
      ∀ P N : BitVec 64, vs = [.val (.word P), .val (.word N)] →
        SIn M arr cnt.toNat P.toNat (P.toNat + N.toNat) ∧ cnt.toNat ≤ N.toNat ∧
          sumLen M arr cnt.toNat ≤ N.toNat ∧
          ∀ j, j < cnt.toNat → 1 ≤ (rd M (arr + BitVec.ofNat 64 (16 * j + 8))).toNat

/-- **`rlp_list_to_slices`**, tiling: see the file header. -/
theorem freshFoot_rlp_list_to_slices_tile (hC : X.code.lookup = guestCode) :
    FreshFoot σ X (nm "rlp_list_to_slices") SlPre TlQ := by
  refine freshFoot_of fun vs body callee rs hl s0 _ hloc p hp hord hpre => ?_
  rw [hC] at hl
  obtain ⟨rfl, -, A0, B0, rfl, -, -, hA, hB⟩ := lookupCode_two code_rlp_list_to_slices (by decide) hl
  obtain ⟨P, N, hvs, hP, p1, hp1, hPN⟩ := hpre
  rw [hp] at hp1; cases hp1
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  have hpP : s0.locals.lookup (nm "p") = some (.val (.word P)) := by rw [hloc]; exact hA
  have hlN : s0.locals.lookup (nm "len") = some (.val (.word N)) := by rw [hloc]; exact hB
  have hhp : p.hp ≤ heapEnd := hord.2.1
  unfold slBody
  -- `count = rlp_list_count(p, len)`
  refine hoare_decCallL ((freshFoot_rlp_list_count hC).and
      ((funSpec_rlp_list_count_parsed hC).and (funSpec_be _))) fpost_locals
    fun s _ hs vs hvs callee v st ⟨hR1, hR2, hbe1⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_lw hpP) (evs_cons (ev_lw hlN) evs_nil)] at hvs
  simp only [Option.some.injEq] at hvs
  subst hvs
  have hcall := ff_call (Pre := fun _ _ => True) (Q := fun _ _ _ _ _ => True)
    (vs := [.val (.word P), .val (.word N)]) (ff_refl hp hord) hR1 trivial
  obtain ⟨C, rfl, hpar⟩ := hR2 _ rfl p hp hord P N rfl hP hPN
  change Parsed s0.memory s0.be P N.toNat C.toNat at hpar
  have hCN := parsed_le hpar
  obtain ⟨q1, hq1, ho1, hm1, hw1⟩ := hcall.1
  set t1 := setVarHOLFinite (nm "count") (.val (.word C)) { st with locals := s0.locals } with ht1
  have hcl1 : t1.locals.lookup (nm "count") = some (.val (.word C)) := lk_set_self _ _ _
  have hpt1 : ptrsOf t1 = some q1 := (ptrsOf_frame rfl).trans hq1
  -- `arr = alloc(count * 16)`
  refine hoare_decCallL ((MemSafe.allocSpec_alloc hC).and (funSpec_be _)) fpost_locals
    fun s _ hs avs havs callee' v st2 ⟨hR, hbe2⟩ _ _ => ?_
  subst s
  rw [evs_cons (ev_mul2 (ev_lw hcl1) (ev_cw _ 16)) evs_nil] at havs
  simp only [Option.some.injEq] at havs
  subst havs
  have hC16 : (C * BitVec.ofNat 64 16).toNat = 16 * C.toNat := by
    rw [BitVec.toNat_mul, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by decide : 16 < 2 ^ 64),
      Nat.mod_eq_of_lt (by unfold heapEnd at hhp; omega)]
    omega
  obtain ⟨hm2, -, q2, hq2, ho2, hmono2, hv2⟩ := hR (by simp [Good]) _ q1 rfl hpt1 ho1
  obtain ⟨Ar, rfl, -, ⟨hAr1, hAr2⟩, hfree⟩ := hv2 _ rfl
  rw [hC16] at hAr2 hfree
  have hF : SFix p q2 s0.memory s0.be P N C Ar :=
    ⟨hP, hPN, hhp, hpar, ho2, mono_trans' hm1 hmono2, hAr2,
      fun a h1 h2 => not_alloc_of_mono hm1 (hfree a h1 h2)⟩
  set t2 := setVarHOLFinite (nm "arr") (.val (.word Ar)) { st2 with locals := t1.locals } with ht2
  -- `var i = 0; var off = 0`
  refine hoare_decL fpost_locals fun s _ hs vi hvi _ => ?_
  subst s
  rw [ev_cw] at hvi; cases hvi
  refine hoare_decL fpost_locals fun s _ hs vo hvo _ => ?_
  subst s
  rw [ev_cw] at hvo; cases hvo
  set t3 := setVarHOLFinite (nm "off") (.val (.word (BitVec.ofNat 64 0)))
    (setVarHOLFinite (nm "i") (.val (.word (BitVec.ofNat 64 0))) t2) with ht3
  have hl3 : ∀ y, y ≠ nm "off" → y ≠ nm "i" → y ≠ nm "arr" →
      t3.locals.lookup y = t1.locals.lookup y := fun y a b c => by
    rw [lk_set_ne _ _ (Ne.symm a), lk_set_ne _ _ (Ne.symm b), lk_set_ne _ _ (Ne.symm c)]
  have hSI : SI p q2 s0.memory s0.be P C Ar t3 := by
    refine ⟨(ptrsOf_frame rfl).trans hq2,
      fun a ha => hw1 a (fun e => ha (by change st2.memory a = _; rw [hm2]; exact e)), ?_, ?_, ?_, ?_,
      BitVec.ofNat 64 0, BitVec.ofNat 64 0, ?_, lk_set_self _ _ _, by simp, rfl,
      fun j hj => absurd hj (by simp)⟩
    · show st2.be = s0.be
      rw [hbe2]; show st.be = s0.be; rw [hbe1]; rfl
    · rw [hl3 _ (by decide) (by decide) (by decide), lk_set_ne _ _ (by decide)]; try exact hpP
    · rw [hl3 _ (by decide) (by decide) (by decide)]; exact hcl1
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _
    · rw [lk_set_ne _ _ (by decide), lk_set_self]
  refine hoare_seq (R := fun r t => r = none ∧ SI p q2 s0.memory s0.be P C Ar t ∧ ∃ I : BitVec 64,
      t.locals.lookup (nm "i") = some (.val (.word I)) ∧ C.toNat ≤ I.toNat) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · exact hoare_pre (sl_loop hC hF) fun t _ ht => by subst ht; exact hSI
  -- `return <arr, count>`
  refine hoare_return fun t _ ⟨_, hI, I', hiI', hCI⟩ w hw => ?_
  obtain ⟨hq, hw', hbe, _, hcC, haA, I, O, hiI, _, hIC, _, hsl⟩ := hI
  rw [hiI] at hiI'
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hiI'
  subst hiI'
  rw [ev_rstruct (evs_cons (ev_lw haA) (evs_cons (ev_lw hcC) evs_nil))] at hw
  cases hw
  have hIe : I.toNat = C.toNat := by omega
  refine fpost_of_ff ⟨q2, hq, ho2, mono_trans' hm1 hmono2, hw'⟩ fun p' hp' => ?_
  rw [show ptrsOf (emptyLocalsHOLFinite t) = ptrsOf t from rfl, hq] at hp'
  cases hp'
  intro arr cnt hv
  simp only [ValueHOL.rStruct.injEq, List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq,
    and_true] at hv
  obtain ⟨rfl, rfl⟩ := hv
  refine ⟨fun h0 => ?_, hAr2, fun P' N' hvs => ?_⟩
  · have := alloc_start hAr1 (by omega) hfree
    have := hm1.1
    omega
  · simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
    obtain ⟨rfl, rfl⟩ := hvs
    have hP64 : P.toNat + N.toNat < 2 ^ 64 := by unfold heapEnd at hhp; omega
    have hM : (emptyLocalsHOLFinite t).memory = t.memory := rfl
    have hsum : ∀ c, c ≤ C.toNat →
        sumLen (emptyLocalsHOLFinite t).memory Ar c = offs s0.memory s0.be P c := by
      intro c
      induction c with
      | zero => intro _; rfl
      | succ c ih =>
          intro hc
          rw [sumLen, ih (by omega), offs, hM, (hsl c (by omega)).2]
    refine ⟨fun j hj => ?_, hCN, ?_, fun j hj => ?_⟩
    · obtain ⟨e1, e2⟩ := hsl j (by omega)
      obtain ⟨k1, -, k3⟩ := hpar j (by omega)
      rw [offs] at k3
      have hpo : (P + BitVec.ofNat 64 (offs s0.memory s0.be P j)).toNat =
          P.toNat + offs s0.memory s0.be P j := toNat_add_lt (by omega)
      show P.toNat ≤ (rd (emptyLocalsHOLFinite t).memory _).toNat ∧
        (rd (emptyLocalsHOLFinite t).memory _).toNat + (rd (emptyLocalsHOLFinite t).memory _).toNat ≤ _
      rw [hM, e1, e2, hpo]
      omega
    · rw [hsum _ le_rfl]
      rcases Nat.eq_zero_or_pos C.toNat with h0 | h0
      · rw [h0]; simp [offs]
      · have := (hpar (C.toNat - 1) (by omega)).2.2
        rw [show C.toNat - 1 + 1 = C.toNat by omega] at this
        exact this
    · obtain ⟨e1, e2⟩ := hsl j (by omega)
      have := (hpar j (by omega)).2.1
      rw [hM, e2]
      omega

end InitECandidate.Solver.Spec.Mpt.Leaves

#print axioms InitECandidate.Solver.Spec.Mpt.Leaves.freshFoot_rlp_list_to_slices_tile
